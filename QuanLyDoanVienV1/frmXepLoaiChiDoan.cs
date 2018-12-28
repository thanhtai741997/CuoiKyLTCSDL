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
    public partial class frmXepLoaiChiDoan : Form
    {
        public frmXepLoaiChiDoan()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable tbXepLoai;
        DataTable tb, tb2, tb3;
        BindingSource bd;
        BindingSource bdXepLoai;
        string str = "";

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdXepLoai.AddNew();
            txtMaXepLoai.Text = AccessDatabase.TaoMa("XLCD", 8, "SPLayMaXepLoaiChiDoan");
            mtxtNamHoc.Text = "";
            txtXepLoaiCaNam.Text = "";

            cbChiDoan.Text = "";
            cbChiDoan.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
            btnXepLoaiCaNam.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (cbChiDoan.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tên chi đoàn", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbChiDoan.Focus();
                return;
            }
            if (mtxtNamHoc.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập năm học", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mtxtNamHoc.Focus();
                return;
            }
            tb2 = new DataTable();
            tb2 = AccessDatabase.ExecuteQuery("Select * from XepLoaiChiDoan where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "' and NamHoc=N'" + mtxtNamHoc.Text.Trim() + "' and XepLoaiKiI!='' and XepLoaiKiII!='' and XepLoaiCaNam!='' and IDXepLoaiChiDoan!='" + txtMaXepLoai.Text.Trim() + "'");
            if (tb2.Rows.Count >= 1)
            {
                MessageBox.Show("" + cbChiDoan.Text + " trong năm học " + mtxtNamHoc.Text.Trim() + " đã được xếp loại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mtxtNamHoc.Focus();
                return;
            }
            tb3 = new DataTable();
            tb3 = AccessDatabase.ExecuteQuery("Select * from XepLoaiChiDoan where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "' and NamHoc=N'" + mtxtNamHoc.Text.Trim() + "'and IDXepLoaiChiDoan!='" + txtMaXepLoai.Text.Trim() + "'");
            if (tb3.Rows.Count >= 1)
            {
                MessageBox.Show(" " + cbChiDoan.Text + "  đã có trong danh sách", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mtxtNamHoc.Focus();
                return;
            }
            mtxtNamHoc.Text = mtxtNamHoc.Text.Trim();
            dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["XepLoaiCaNam"].Value = (object)txtXepLoaiCaNam.Text;
            bdXepLoai.EndEdit();
            adapter.Update(tbXepLoai);
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
            btnXepLoaiCaNam.Enabled = true;
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
                bdXepLoai.EndEdit();
                adapter.Update(tbXepLoai);
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnThem_Click_1(object sender, EventArgs e)
        {
            bdXepLoai.AddNew();
            txtMaXepLoai.Text = AccessDatabase.TaoMa("XLCD", 8, "SPLayMaXepLoaiChiDoan");
            mtxtNamHoc.Text = "";
            txtXepLoaiCaNam.Text = "";

            cbChiDoan.Text = "";
            cbChiDoan.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
            btnXepLoaiCaNam.Enabled = false;
        }

        private void btnLuu_Click_1(object sender, EventArgs e)
        {
            if (cbChiDoan.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tên chi đoàn", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbChiDoan.Focus();
                return;
            }
            if (mtxtNamHoc.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập năm học", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mtxtNamHoc.Focus();
                return;
            }
            tb2 = new DataTable();
            tb2 = AccessDatabase.ExecuteQuery("Select * from XepLoaiChiDoan where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "' and NamHoc=N'" + mtxtNamHoc.Text.Trim() + "' and XepLoaiKiI!='' and XepLoaiKiII!='' and XepLoaiCaNam!='' and IDXepLoaiChiDoan!='" + txtMaXepLoai.Text.Trim() + "'");
            if (tb2.Rows.Count >= 1)
            {
                MessageBox.Show("" + cbChiDoan.Text + " trong năm học " + mtxtNamHoc.Text.Trim() + " đã được xếp loại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mtxtNamHoc.Focus();
                return;
            }
            tb3 = new DataTable();
            tb3 = AccessDatabase.ExecuteQuery("Select * from XepLoaiChiDoan where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "' and NamHoc=N'" + mtxtNamHoc.Text.Trim() + "'and IDXepLoaiChiDoan!='" + txtMaXepLoai.Text.Trim() + "'");
            if (tb3.Rows.Count >= 1)
            {
                MessageBox.Show(" " + cbChiDoan.Text + "  đã có trong danh sách", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mtxtNamHoc.Focus();
                return;
            }
            mtxtNamHoc.Text = mtxtNamHoc.Text.Trim();
            dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["XepLoaiCaNam"].Value = (object)txtXepLoaiCaNam.Text;
            bdXepLoai.EndEdit();
            adapter.Update(tbXepLoai);
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
            btnXepLoaiCaNam.Enabled = true;
        }

        private void btnXoa_Click_1(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count == 0)
                MessageBox.Show("Bạn chưa chọn thông tin xoá!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            else
                if (MessageBox.Show("Bạn chắc chắn muốn xoá?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
            {
                foreach (DataGridViewRow dgvRow in dataGridView1.SelectedRows)
                    dataGridView1.Rows.Remove(dgvRow);
                bdXepLoai.EndEdit();
                adapter.Update(tbXepLoai);
            }
        }

        private void btnThoat_Click_1(object sender, EventArgs e)
        {
            Close();
        }

        void LoadDataToCombo(ComboBox cb, string tableNam, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableNam);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        private void frmXepLoaiChiDoan_Load(object sender, EventArgs e)
        {
            UserDao dao = new UserDao();
            //str = (string)AccessDatabase.ExecuteScalar("SPLayQuyenHan_R", new string[] { "@QuyenHan" }, new string[] { NguoiDung.QuyenHan.Trim() });
            str = dao.LayQuyenHan(User.MaNguoiDung.Trim()).Substring(2, 4);

            cbLienChi.DataSource = AccessDatabase.ExecuteQuery("Select * from LienChi where  MaLienChi='" + str + "'");
            cbLienChi.DisplayMember = "TenLienChi";
            cbLienChi.ValueMember = "MaLienChi";
            cbLienChi.Enabled = false;

            cbChiDoan.DataSource = AccessDatabase.ExecuteQuery("Select * from ChiDoan where MaLienChi='" + str + "'"); ;
            cbChiDoan.DisplayMember = "TenChiDoan";
            cbChiDoan.ValueMember = "MaChiDoan";

            adapter = new SqlDataAdapter("Select * from XepLoaiChiDoan where MaChiDoan IN(Select MaChiDoan from ChiDoan where MaLienChi='" + cbLienChi.SelectedValue.ToString() + "')", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tbXepLoai = new DataTable();
            adapter.Fill(tbXepLoai);
            bdXepLoai = new BindingSource();
            bdXepLoai.DataSource = tbXepLoai;
            dataGridView1.DataSource = bdXepLoai;
            txtMaXepLoai.DataBindings.Add("Text", bdXepLoai, "IDXepLoaiChiDoan");
            mtxtNamHoc.DataBindings.Add("Text", bdXepLoai, "NamHoc");
            txtXepLoaiI.DataBindings.Add("Text", bdXepLoai, "XepLoaiKiI");
            txtXepLoaiII.DataBindings.Add("Text", bdXepLoai, "XepLoaiKiII");
            txtXepLoaiCaNam.DataBindings.Add("Text", bdXepLoai, "XepLoaiCaNam");

            cbChiDoan.DataBindings.Add("SelectedValue", bdXepLoai, "MaChiDoan");
        }
    }
}
