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
    public partial class frmKhenThuongKyLuat : Form
    {
        public frmKhenThuongKyLuat()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable tbKhenThuong;
        DataTable tbKiLuat;
        BindingSource bdKiLuat;
        BindingSource bdChiDoan;
        BindingSource bdDoanVien;
        BindingSource bdKhenThuong;
        string str = "";
        void LoadDataToCombo(ComboBox cb, string tableName, string DisplayField, string ValueField)
        {

            cb.DataSource = AccessDatabase.GetTable(tableName);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        void LoadDataKTToDG(SqlDataAdapter adapter)
        {

            commandBuider = new SqlCommandBuilder(adapter);
            tbKhenThuong = new DataTable();
            adapter.Fill(tbKhenThuong);
            bdKhenThuong = new BindingSource();
            bdKhenThuong.DataSource = tbKhenThuong;
            dataGridView1.DataSource = bdKhenThuong;

            txtMaKTKL.DataBindings.Clear();
            txtMaKTKL.DataBindings.Add("Text", bdKhenThuong, "MaKhenThuong");
            txtLiDo.DataBindings.Clear();
            txtLiDo.DataBindings.Add("text", bdKhenThuong, "LiDo");
            txtHinhThuc.DataBindings.Clear();
            txtHinhThuc.DataBindings.Add("Text", bdKhenThuong, "HinhThuc");

            dateTimePicker1.DataBindings.Clear();
            dateTimePicker1.DataBindings.Add("Text", bdKhenThuong, "Ngay");

            cbTenDoanVien.DataBindings.Clear();
            cbTenDoanVien.DataBindings.Add("SelectedValue", bdKhenThuong, "MaDoanVien");
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
            btr.Enabled = true;
        }
        void LoadDataKLToDG(SqlDataAdapter adapter)
        {
            commandBuider = new SqlCommandBuilder(adapter);
            tbKiLuat = new DataTable();
            adapter.Fill(tbKiLuat);
            bdKiLuat = new BindingSource();
            bdKiLuat.DataSource = tbKiLuat;
            dataGridView1.DataSource = bdKiLuat;
            txtMaKTKL.DataBindings.Clear();
            txtMaKTKL.DataBindings.Add("Text", bdKiLuat, "MaKiLuat");
            txtLiDo.DataBindings.Clear();
            txtLiDo.DataBindings.Add("text", bdKiLuat, "LiDo");
            txtHinhThuc.DataBindings.Clear();
            txtHinhThuc.DataBindings.Add("Text", bdKiLuat, "HinhThuc");

            dateTimePicker1.DataBindings.Clear();
            dateTimePicker1.DataBindings.Add("Text", bdKiLuat, "Ngay");

            cbTenDoanVien.DataBindings.Clear();
            cbTenDoanVien.DataBindings.Add("SelectedValue", bdKiLuat, "MaDoanVien");
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
            btr.Enabled = true;
        }
        private void frmKhenThuongKyLuat_Load(object sender, EventArgs e)
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
            else
            {
                str = dao.LayQuyenHan(User.MaNguoiDung.Trim()).Substring(2, 4);
                cbLienChi.DataSource = AccessDatabase.ExecuteQuery("Select * from LienChi where  MaLienChi='" + str + "'");
                cbLienChi.DisplayMember = "TenLienChi";
                cbLienChi.ValueMember = "MaLienChi";
                cbLienChi.Enabled = false;

                cbChiDoan.DataSource = AccessDatabase.ExecuteQuery("Select * from ChiDoan where MaLienChi='" + str + "'");
                cbChiDoan.DisplayMember = "TenChiDoan";
                cbChiDoan.ValueMember = "MaChiDoan";

                bdDoanVien = new BindingSource();
                bdDoanVien.DataSource = AccessDatabase.GetTable("DoanVien");
                cbTenDoanVien.DataSource = bdDoanVien;
                cbTenDoanVien.DisplayMember = "TenDoanVien";
                cbTenDoanVien.ValueMember = "MaDoanVien";
                if (cbChiDoan.DataSource != null)
                {
                    bdDoanVien.Filter = "MaChiDoan='" + cbChiDoan.SelectedValue.ToString().Trim() + "'";
                }
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            if (radioButtonKhenThuong.Checked == true)
            {
                bdKhenThuong.AddNew();
                txtMaKTKL.Text = AccessDatabase.TaoMa("KT", 5, "SPLayMaKhenThuong");
            }
            else
            {
                bdKiLuat.AddNew();
                txtMaKTKL.Text = AccessDatabase.TaoMa("KL", 5, "SPLayMaKiLuat");
            }
            txtLiDo.Text = "";
            cbTenDoanVien.Focus();
            txtHinhThuc.Text = "";

            cbTenDoanVien.Text = "";
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
            radioButtonKhenThuong.Enabled = false;
            radioButtonKiLuat.Enabled = false;
            cbLienChi.Enabled = false;
            cbChiDoan.Enabled = false;
        }

        private void cbLienChi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdChiDoan == null) return;
            bdChiDoan.Filter = "MaLienChi='" + cbLienChi.SelectedValue.ToString().Trim() + "'";
            if (radioButtonKhenThuong.Checked == true)
            {
                adapter = new SqlDataAdapter("select * from KhenThuong where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan IN (Select MaChiDoan from ChiDoan where MaLienChi='" + cbLienChi.SelectedValue.ToString() + "'))", new SqlConnection(CommonClass.ConnectionString));
                LoadDataKTToDG(adapter);
            }
            else
            {
                adapter = new SqlDataAdapter("select * from KiLuat where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan IN (Select MaChiDoan from ChiDoan where MaLienChi='" + cbLienChi.SelectedValue.ToString() + "'))", new SqlConnection(CommonClass.ConnectionString));
                LoadDataKLToDG(adapter);
            }
        }

        private void cbChiDoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdDoanVien == null) return;
            bdDoanVien.Filter = "MaChiDoan='" + cbChiDoan.SelectedValue.ToString().Trim() + "'";
            if (radioButtonKhenThuong.Checked == true)
            {
                adapter = new SqlDataAdapter("select * from KhenThuong where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "')", new SqlConnection(CommonClass.ConnectionString));
                LoadDataKTToDG(adapter);
            }
            else
            {
                adapter = new SqlDataAdapter("select * from KiLuat where MaDoanVien IN(Select MaDoanVien from DoanVien where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "')", new SqlConnection(CommonClass.ConnectionString));
                LoadDataKLToDG(adapter);
            }
        }

        private void radioButtonKiLuat_CheckedChanged(object sender, EventArgs e)
        {
            dataGridView1.DataSource = null;
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
            btr.Enabled = false;
        }

        private void btr_Click(object sender, EventArgs e)
        {
            if (txtLiDo.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập lí do", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtLiDo.Focus();
                return;
            }
            if (txtHinhThuc.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập hình thức", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtHinhThuc.Focus();
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
                txtHinhThuc.Text = CommonClass.ChuanXau(txtHinhThuc.Text, false);
                dataGridView1.CurrentRow.Cells["Ngay"].Value = (object)(dateTimePicker1.Text);
                if (radioButtonKhenThuong.Checked == true)
                {
                    bdKhenThuong.EndEdit();
                    adapter.Update(tbKhenThuong);

                }
                else
                {
                    bdKiLuat.EndEdit();
                    adapter.Update(tbKiLuat);

                }
            }
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
            radioButtonKhenThuong.Enabled = true;
            radioButtonKiLuat.Enabled = true;
            cbLienChi.Enabled = true;
            cbChiDoan.Enabled = true;
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
                    if (radioButtonKhenThuong.Checked == true)
                    {
                        bdKhenThuong.EndEdit();
                        adapter.Update(tbKhenThuong);

                    }
                    else
                    {
                        bdKiLuat.EndEdit();
                        adapter.Update(tbKiLuat);

                    }
                }
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void radioButtonKhenThuong_CheckedChanged(object sender, EventArgs e)
        {
            dataGridView1.DataSource = null;
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
            btr.Enabled = false;
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView1.CurrentCell == null) return;
            if (dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].IsNewRow) return;
            cbLienChi.SelectedValue = (string)AccessDatabase.ExecuteScalar("SPMaLienChi", new string[] { "@MaDoanVien" }, new string[] { dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString() });
            cbChiDoan.SelectedValue = (string)AccessDatabase.ExecuteScalar("SPMaChiDoan", new string[] { "@MaDoanVien" }, new string[] { dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString() });
            cbTenDoanVien.SelectedValue = (string)AccessDatabase.ExecuteScalar("SPMaDoanVien", new string[] { "@MaDoanVien" }, new string[] { dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["MaDoanVien"].Value.ToString() });
        }
    }
}
