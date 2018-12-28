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
    public partial class frmDuBiDangVien : Form
    {
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable tbDuBi;
        BindingSource bdDuBi;
        BindingSource bdChiDoan;
        BindingSource bdDoanVien;
        public frmDuBiDangVien()
        {
            InitializeComponent();
        }
        void LoadDataToCombo(ComboBox cb, string tableName, string DisplayField, string ValueField)
        {

            cb.DataSource = AccessDatabase.GetTable(tableName);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        void LoadDataToDG(SqlDataAdapter adapter)
        {
            commandBuider = new SqlCommandBuilder(adapter);
            tbDuBi = new DataTable();
            adapter.Fill(tbDuBi);
            bdDuBi = new BindingSource();
            bdDuBi.DataSource = tbDuBi;
            dataGridView1.DataSource = bdDuBi;

            txtLiDo.DataBindings.Clear();
            txtLiDo.DataBindings.Add("Text", bdDuBi, "LiDo");
            txtMaDuBi.DataBindings.Clear();
            txtMaDuBi.DataBindings.Add("Text", bdDuBi, "MaDuBi");

            cbTenDoanVien.DataBindings.Clear();
            cbTenDoanVien.DataBindings.Add("SelectedValue", bdDuBi, "MaDoanVien");
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
            btr.Enabled = true;
        }
        private void frmDuBiDangVien_Load(object sender, EventArgs e)
        {
            LoadDataToCombo(cbLienChi, "LienChi", "TenLienChi", "MaLienChi");
            bdChiDoan = new BindingSource();
            bdChiDoan.DataSource = AccessDatabase.GetTable("ChiDoan");
            cbChiDoan.DataSource = bdChiDoan;
            cbChiDoan.DisplayMember = "TenChiDoan";
            cbChiDoan.ValueMember = "MaChiDoan";
            bdDoanVien = new BindingSource();
            bdDoanVien.DataSource = AccessDatabase.GetTable("DoanVien");
            cbTenDoanVien.DataSource = bdDoanVien;
            cbTenDoanVien.DisplayMember = "TenDoanVien";
            cbTenDoanVien.ValueMember = "MaDoanVien";
            if (cbLienChi.DataSource != null)
            {
                bdChiDoan.Filter = "MaLienChi='" + cbLienChi.SelectedValue.ToString().Trim() + "'";
                if (cbChiDoan.DataSource != null)
                {
                    bdDoanVien.Filter = "MaChiDoan='" + cbChiDoan.SelectedValue.ToString().Trim() + "'";
                }
            }

            btnThem.Enabled = false;
            btnXoa.Enabled = false;
            btr.Enabled = false;
        }

        private void cbLienChi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdChiDoan == null) return;
            bdChiDoan.Filter = "MaLienChi='" + cbLienChi.SelectedValue.ToString().Trim() + "'";
            adapter = new SqlDataAdapter("select * from DuBi where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan IN (Select MaChiDoan from ChiDoan where MaLienChi='" + cbLienChi.SelectedValue.ToString() + "'))", new SqlConnection(CommonClass.ConnectionString));
            LoadDataToDG(adapter);
        }

        private void cbChiDoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdDoanVien == null) return;
            bdDoanVien.Filter = "MaChiDoan='" + cbChiDoan.SelectedValue.ToString().Trim() + "'";
            adapter = new SqlDataAdapter("select * from DuBi where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "')", new SqlConnection(CommonClass.ConnectionString));
            LoadDataToDG(adapter);
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdDuBi.AddNew();
            txtMaDuBi.Text = AccessDatabase.TaoMa("DB", 5, "SPLayMaDuBi");
            txtLiDo.Text = "";
            cbTenDoanVien.Focus();

            cbTenDoanVien.Text = "";
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
            cbLienChi.Enabled = false;
            cbChiDoan.Enabled = false;
        }

        private void btr_Click(object sender, EventArgs e)
        {
            if (txtLiDo.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập lí do", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtLiDo.Focus();
                return;
            }

            if (cbTenDoanVien.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tên đoàn viên", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbTenDoanVien.Focus();
                return;
            }
            else
            {
                txtLiDo.Text = CommonClass.ChuanXau(txtLiDo.Text, false);
                bdDuBi.EndEdit();
                adapter.Update(tbDuBi);
                btnThem.Enabled = true;
                btnXoa.Enabled = true;
                cbLienChi.Enabled = true;
                cbChiDoan.Enabled = true;
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count == 0)
                MessageBox.Show("Bạn chưa chọn thông tin xoá!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            else
                if (MessageBox.Show("Bạn chắc chắn muốn xoá?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
            {
                foreach (DataGridViewRow dgvRow in dataGridView1.SelectedRows)
                    dataGridView1.Rows.Remove(dgvRow);
                bdDuBi.EndEdit();
                adapter.Update(tbDuBi);

            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView1.CurrentCell == null) return;
            if (dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].IsNewRow) return;
            cbLienChi.SelectedValue = (string)AccessDatabase.ExecuteScalar("SPMaLienChi", new string[] { "@MaDoanVien" }, new string[] { dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString() });
            cbChiDoan.SelectedValue = (string)AccessDatabase.ExecuteScalar("SPMaChiDoan", new string[] { "@MaDoanVien" }, new string[] { dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString() });
            cbTenDoanVien.SelectedValue = (string)AccessDatabase.ExecuteScalar("SPMaDoanVien", new string[] { "@MaDoanVien" }, new string[] { dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString() });
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
