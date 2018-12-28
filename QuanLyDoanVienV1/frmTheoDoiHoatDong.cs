using QuanLyDoanVienV1.Dao;
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
    public partial class frmTheoDoiHoatDong : Form
    {
        public frmTheoDoiHoatDong()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable tbTheoDoi;
        BindingSource bdTheoDoi;
        BindingSource bdChiDoan;
        BindingSource bdDoanVien;
        string str = "";
        void LoadDataToCombo(ComboBox cb, string tableNam, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableNam);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        void LoadDataToDG(SqlDataAdapter adapter)
        {
            commandBuider = new SqlCommandBuilder(adapter);
            tbTheoDoi = new DataTable();
            adapter.Fill(tbTheoDoi);
            bdTheoDoi = new BindingSource();
            bdTheoDoi.DataSource = tbTheoDoi;
            dataGridView1.DataSource = bdTheoDoi;

            txtMaTheoDoi.DataBindings.Clear();
            txtMaTheoDoi.DataBindings.Add("Text", bdTheoDoi, "IDTheoDoi");
            txtHoatDongThamGia.DataBindings.Clear();
            txtHoatDongThamGia.DataBindings.Add("Text", bdTheoDoi, "HoatDongThamGia");
            txtDanhGia.DataBindings.Clear();
            txtDanhGia.DataBindings.Add("Text", bdTheoDoi, "DanhGia");

            dateTimePicker1.DataBindings.Clear();
            dateTimePicker1.DataBindings.Add("Text", bdTheoDoi, "Ngay");

            cbDoanVien.DataBindings.Clear();
            cbDoanVien.DataBindings.Add("SelectedValue", bdTheoDoi, "MaDoanVien");
            btnLuu.Enabled = true;
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
        }
        private void frmTheoDoiHoatDong_Load(object sender, EventArgs e)
        {
            UserDao dao = new UserDao();
            if (User.QuyenHan.Trim() == "*")
            {
                LoadDataToCombo(cbLienChi, "LienChi", "TenLienChi", "MaLienChi");
                bdChiDoan = new BindingSource();
                bdChiDoan.DataSource = AccessDatabase.GetTable("ChiDoan");
                cbChiDoan.DataSource = bdChiDoan;
                cbChiDoan.DisplayMember = "TenChiDoan";
                cbChiDoan.ValueMember = "MaChiDoan";
                bdDoanVien = new BindingSource();
                bdDoanVien.DataSource = AccessDatabase.GetTable("DoanVien");
                cbDoanVien.DataSource = bdDoanVien;
                cbDoanVien.DisplayMember = "TenDoanVien";
                cbDoanVien.ValueMember = "MaDoanVien";
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
            else
            {
                str = dao.LayQuyenHan(User.MaNguoiDung.Trim()).Substring(0, 2);
                string strMa = dao.LayQuyenHan(User.MaNguoiDung.Trim()).Substring(2, 4);
                if (str == "LC")
                {
                    cbLienChi.DataSource = AccessDatabase.ExecuteQuery("Select * from LienChi where  MaLienChi='" + strMa + "'");
                    cbLienChi.DisplayMember = "TenLienChi";
                    cbLienChi.ValueMember = "MaLienChi";
                    cbLienChi.Enabled = false;

                    cbChiDoan.DataSource = AccessDatabase.ExecuteQuery("Select * from ChiDoan where MaLienChi='" + strMa + "'");
                    cbChiDoan.DisplayMember = "TenChiDoan";
                    cbChiDoan.ValueMember = "MaChiDoan";

                    bdDoanVien = new BindingSource();
                    bdDoanVien.DataSource = AccessDatabase.GetTable("DoanVien");
                    cbDoanVien.DataSource = bdDoanVien;
                    cbDoanVien.DisplayMember = "TenDoanVien";
                    cbDoanVien.ValueMember = "MaDoanVien";
                    if (cbChiDoan.DataSource != null)
                    {
                        bdDoanVien.Filter = "MaChiDoan='" + cbChiDoan.SelectedValue.ToString().Trim() + "'";
                    }

                    btnLuu.Enabled = false;
                    btnThem.Enabled = false;
                    btnXoa.Enabled = false;
                }
                else
                {
                    cbLienChi.DataSource = AccessDatabase.ExecuteQuery("Select * from LienChi where  MaLienChi in(select MaLienChi from ChiDoan where MaChiDoan='" + strMa + "')");
                    cbLienChi.DisplayMember = "TenLienChi";
                    cbLienChi.ValueMember = "MaLienChi";
                    cbLienChi.Enabled = false;

                    cbChiDoan.DataSource = AccessDatabase.ExecuteQuery("Select * from ChiDoan where MaChiDoan='" + strMa + "'");
                    cbChiDoan.DisplayMember = "TenChiDoan";
                    cbChiDoan.ValueMember = "MaChiDoan";
                    cbChiDoan.Enabled = false;

                    cbDoanVien.DataSource = AccessDatabase.ExecuteQuery("Select * from DoanVien where MaChiDoan='" + strMa + "'"); ;
                    cbDoanVien.DisplayMember = "TenDoanVien";
                    cbDoanVien.ValueMember = "MaDoanVien";
                    adapter = new SqlDataAdapter("Select * from TheoDoiHoatDong where MaDoanVien in (Select MaDoanVien from DoanVien where MaChiDoan='" + strMa + "')", new SqlConnection(CommonClass.ConnectionString));
                    LoadDataToDG(adapter);
                }
            }
        }

        private void cbLienChi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdChiDoan == null) return;
            bdChiDoan.Filter = "MaLienChi='" + cbLienChi.SelectedValue.ToString().Trim() + "'";
            adapter = new SqlDataAdapter("Select * from TheoDoiHoatDong where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan IN (Select MaChiDoan from ChiDoan where MaLienChi='" + cbLienChi.SelectedValue.ToString() + "'))", new SqlConnection(CommonClass.ConnectionString));
            LoadDataToDG(adapter);
        }

        private void cbChiDoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdDoanVien == null) return;
            bdDoanVien.Filter = "MaChiDoan='" + cbChiDoan.SelectedValue.ToString().Trim() + "'";
            adapter = new SqlDataAdapter("Select * from TheoDoiHoatDong where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "')", new SqlConnection(CommonClass.ConnectionString));
            LoadDataToDG(adapter);
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView1.CurrentCell == null) return;
            if (dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].IsNewRow) return;
            cbLienChi.SelectedValue = (string)AccessDatabase.ExecuteScalar("SPMaLienChi", new string[] { "@MaDoanVien" }, new string[] { dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString() });
            cbChiDoan.SelectedValue = (string)AccessDatabase.ExecuteScalar("SPMaChiDoan", new string[] { "@MaDoanVien" }, new string[] { dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString() });
            cbDoanVien.SelectedValue = (string)AccessDatabase.ExecuteScalar("SPMaDoanVien", new string[] { "@MaDoanVien" }, new string[] { dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString() });
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdTheoDoi.AddNew();
            txtMaTheoDoi.Text = AccessDatabase.TaoMa("TD", 6, "SPLayMaTheoDoi");

            cbDoanVien.Text = "";
            cbDoanVien.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
            cbLienChi.Enabled = false;
            cbChiDoan.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            //Lỗi chưa chọn tên đoàn viên
            if (cbDoanVien.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tên đoàn viên", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbDoanVien.Focus();
                return;
            }

            if (txtHoatDongThamGia.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập hoạt động tham gia", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtHoatDongThamGia.Focus();
                return;
            }
            if (txtDanhGia.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập đánh giá", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtDanhGia.Focus();
                return;
            }
            else
            {
                dataGridView1.CurrentRow.Cells["Ngay"].Value = (object)(dateTimePicker1.Text);
                txtHoatDongThamGia.Text = CommonClass.ChuanXau(txtHoatDongThamGia.Text, false);
                txtDanhGia.Text = CommonClass.ChuanXau(txtDanhGia.Text, false);
                bdTheoDoi.EndEdit();
                adapter.Update(tbTheoDoi);
                btnThem.Enabled = true;
                btnXoa.Enabled = true;
                if (User.QuyenHan.Trim() == "*")
                {
                    cbLienChi.Enabled = true;
                    cbChiDoan.Enabled = true;
                }
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
                bdTheoDoi.EndEdit();
                adapter.Update(tbTheoDoi);
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
