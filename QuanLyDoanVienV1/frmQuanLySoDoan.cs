using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyDoanVienV1
{
    public partial class frmQuanLySoDoan : Form
    {
        public frmQuanLySoDoan()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable table;
        DataTable tb2;
        BindingSource bdSource, bdChiDoan;
        void LoadDataToCombo(ComboBox cb, string tableName, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableName);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        void LoadDataToDG(SqlDataAdapter adapter)
        {
            commandBuider = new SqlCommandBuilder(adapter);
            table = new DataTable();
            adapter.Fill(table);
            bdSource = new BindingSource();
            bdSource.DataSource = table;
            dataGridView1.DataSource = bdSource;

            txtMaQuanLy.DataBindings.Clear();
            txtMaQuanLy.DataBindings.Add("Text", bdSource, "MaQLSoDoan");
            txtNguoiNhan.DataBindings.Clear();
            txtNguoiNhan.DataBindings.Add("Text", bdSource, "NguoiNhan");
            txtNguoiGiao.DataBindings.Clear();
            txtNguoiGiao.DataBindings.Add("Text", bdSource, "NguoiGiao");
            txtSoLuong.DataBindings.Clear();
            txtSoLuong.DataBindings.Add("Text", bdSource, "SoLuong");

            dateTimePickerNgayNhan.DataBindings.Clear();
            dateTimePickerNgayNhan.DataBindings.Add("Text", bdSource, "NgayNhan");
            dateTimePickerNgayTra.DataBindings.Clear();
            dateTimePickerNgayTra.DataBindings.Add("Text", bdSource, "NgayTra");

            cbChiDoan.DataBindings.Clear();
            cbChiDoan.DataBindings.Add("SelectedValue", bdSource, "MaChiDoan");
            btnThem.Enabled = true;
            btnLuu.Enabled = true;
            btnXoa.Enabled = true;
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdSource.AddNew();
            txtMaQuanLy.Text = AccessDatabase.TaoMa("QLSD", 6, "SPLayMaQLSD");
            cbChiDoan.Text = "";

            txtNguoiGiao.Text = "";
            txtNguoiNhan.Text = "";
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
            cbLienChi.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (cbChiDoan.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn chi đoàn", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbChiDoan.Focus();
                return;
            }
            if (txtNguoiNhan.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập người nhận", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtNguoiNhan.Focus();
                return;
            }

            if (txtNguoiGiao.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập người giao", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtNguoiGiao.Focus();
                return;
            }
            tb2 = new DataTable();
            tb2 = AccessDatabase.ExecuteQuery("Select * From QLSoDoan Where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "' And YEAR(NgayNhan)=YEAR('" + dateTimePickerNgayNhan.Text + "')and MaQLSoDoan!='" + txtMaQuanLy.Text.Trim() + "'");
            if (tb2.Rows.Count >= 1)
            {
                MessageBox.Show("" + cbChiDoan.Text + " đã nhận sổ đoàn", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                txtNguoiGiao.Text = CommonClass.ChuanXau(txtNguoiGiao.Text, true);
                txtNguoiNhan.Text = CommonClass.ChuanXau(txtNguoiNhan.Text, true);
                dataGridView1.CurrentRow.Cells["NgayNhan"].Value = (object)(dateTimePickerNgayNhan.Text);
                bdSource.EndEdit();
                adapter.Update(table);
                btnThem.Enabled = true;
                btnXoa.Enabled = true;
                cbLienChi.Enabled = true;
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count == 0)
                MessageBox.Show("Bạn chưa chọn thông tin xoá", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);

            else
            {
                if (MessageBox.Show("Bạn chắc chắn muốn xoá?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    foreach (DataGridViewRow dgvRow in dataGridView1.SelectedRows)
                        dataGridView1.Rows.Remove(dgvRow);
                    bdSource.EndEdit();
                    adapter.Update(table);
                }
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnSoLuong_Click(object sender, EventArgs e)
        {
            txtSoLuong.Text = ((int)AccessDatabase.ExecuteScalar("SPLaySoLuongSoDoan", new string[] { "@MaChiDoan" }, new string[] { cbChiDoan.SelectedValue.ToString() })).ToString();
        }

        private void cbLienChi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdChiDoan == null) return;
            bdChiDoan.Filter = "MaLienChi='" + cbLienChi.SelectedValue.ToString().Trim() + "'";
            adapter = new SqlDataAdapter("Select * from QLSoDoan where  MaChiDoan IN (Select MaChiDoan from ChiDoan where MaLienChi='" + cbLienChi.SelectedValue.ToString() + "')", new SqlConnection(CommonClass.ConnectionString));
            LoadDataToDG(adapter);
        }

        private void frmQuanLySoDoan_Load(object sender, EventArgs e)
        {
            LoadDataToCombo(cbLienChi, "LienChi", "TenLienChi", "MaLienChi");
            bdChiDoan = new BindingSource();
            bdChiDoan.DataSource = AccessDatabase.GetTable("ChiDoan");
            cbChiDoan.DataSource = bdChiDoan;
            cbChiDoan.DisplayMember = "TenChiDoan";
            cbChiDoan.ValueMember = "MaChiDoan";
            if (cbLienChi.DataSource != null)
            {
                bdChiDoan.Filter = "MaLienChi='" + cbLienChi.SelectedValue.ToString().Trim() + "'";
            }
            btnThem.Enabled = false;
            btnLuu.Enabled = false;
            btnXoa.Enabled = false;
        }
    }
}
