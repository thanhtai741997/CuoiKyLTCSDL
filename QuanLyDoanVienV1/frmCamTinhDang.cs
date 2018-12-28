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
    public partial class frmCamTinhDang : Form
    {
        public frmCamTinhDang()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable tableCamTinhDang;
        DataTable tb;
        BindingSource bdCamTinhDang;
        BindingSource bdChiDoan;
        BindingSource bdDoanVien;
        void LoadDataToCombo(ComboBox cb, string tableName, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableName);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        void LoadDataToDG(SqlDataAdapter adapter)
        {

            commandBuider = new SqlCommandBuilder(adapter);
            tableCamTinhDang = new DataTable();
            adapter.Fill(tableCamTinhDang);
            bdCamTinhDang = new BindingSource();
            bdCamTinhDang.DataSource = tableCamTinhDang;
            dataGridView1.DataSource = bdCamTinhDang;

            txtMaCamTinh.DataBindings.Clear();
            txtMaCamTinh.DataBindings.Add("Text", bdCamTinhDang, "MaCamTinhDang");
            dateTimePicker1.DataBindings.Clear();
            dateTimePicker1.DataBindings.Add("Text", bdCamTinhDang, "NgayCap");

            cbTenDoanVien.DataBindings.Clear();
            cbTenDoanVien.DataBindings.Add("SelectedValue", bdCamTinhDang, "MaDoanVien");
            btnLuu.Enabled = true;
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
        }
        private void frmCamTinhDang_Load(object sender, EventArgs e)
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
            btnLuu.Enabled = false;
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdCamTinhDang.AddNew();
            txtMaCamTinh.Text = AccessDatabase.TaoMa("CTD", 6, "SPLayMaCamTinhDang");

            cbTenDoanVien.Text = "";
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
            cbTenDoanVien.Focus();
        }

        private void cbLienChi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdChiDoan == null) return;
            bdChiDoan.Filter = "MaLienChi='" + cbLienChi.SelectedValue.ToString().Trim() + "'";
            adapter = new SqlDataAdapter("Select * from CamTinhDang where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan IN (Select MaChiDoan from ChiDoan where MaLienChi='" + cbLienChi.SelectedValue.ToString() + "'))", new SqlConnection(CommonClass.ConnectionString));
            LoadDataToDG(adapter);
        }

        private void cbChiDoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdDoanVien == null) return;
            bdDoanVien.Filter = "MaChiDoan='" + cbChiDoan.SelectedValue.ToString().Trim() + "'";
            adapter = new SqlDataAdapter("Select * from CamTinhDang where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "')", new SqlConnection(CommonClass.ConnectionString));
            LoadDataToDG(adapter);
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            //Lỗi chưa chọn tên đoàn viên
            if (cbTenDoanVien.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tên đoàn viên", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbTenDoanVien.Focus();
                return;
            }

            //Lỗi mỗi đoàn viên chỉ được cấp chứng nhận 1 lần
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * from CamTinhDang where MaDoanVien='" + cbTenDoanVien.SelectedValue.ToString() + "'");
            if (tb.Rows.Count >= 1)
            {
                MessageBox.Show("Đoàn viên trên đã được cấp chứng nhận học cảm tình Đảng", "Chú ý", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            dataGridView1.CurrentRow.Cells["NgayCap"].Value = (object)(dateTimePicker1.Text);
            bdCamTinhDang.EndEdit();
            adapter.Update(tableCamTinhDang);
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
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
                bdCamTinhDang.EndEdit();
                adapter.Update(tableCamTinhDang);
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
