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
    public partial class frmXepLoaiDoanVien : Form
    {
        public frmXepLoaiDoanVien()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        BindingSource bdXepLoai;
        DataTable tbXepLoai;
        DataTable tb, tb2, tb3;
        BindingSource bd;
        string str = "";

        private void btnCapNhat_Click(object sender, EventArgs e)
        {

            bdXepLoai.AddNew();
            txtMaXepLoai.Text = AccessDatabase.TaoMa("XLDV", 10, "SPLayMaXepLoaiDoanVien");
            mtxtNamHoc.Text = "";
            txtXepLoaiI.Text = "";
            txtXepLoaiII.Text = "";
            txtXepLoaiCaNam.Text = "";
            btnCapNhat.Enabled = false;
            btnXoa.Enabled = false;
            cbDoanVien.Focus();
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (cbDoanVien.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tên đoàn viên", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbDoanVien.Focus();
                return;
            }

            if (mtxtNamHoc.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập năm học", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mtxtNamHoc.Focus();
                return;
            }
            tb2 = new DataTable();
            tb2 = AccessDatabase.ExecuteQuery("Select * from XepLoaiDoanVien where MaDoanVien='" + cbDoanVien.SelectedValue.ToString() + "' and NamHoc=N'" + mtxtNamHoc.Text.Trim() + "' and PLDVKiI!=''and PLDVKiII!=''and PLDVCaNam!='' and IDXepLoaiDoanVien!='" + txtMaXepLoai.Text.Trim() + "'");
            if (tb2.Rows.Count >= 1)
            {
                MessageBox.Show(" Đoàn viên " + cbDoanVien.Text + " trong năm học " + mtxtNamHoc.Text.Trim() + " đã được xếp loại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mtxtNamHoc.Focus();
                return;
            }
            tb3 = new DataTable();
            tb3 = AccessDatabase.ExecuteQuery("Select * from XepLoaiDoanVien where MaDoanVien='" + cbDoanVien.SelectedValue.ToString() + "' and NamHoc=N'" + mtxtNamHoc.Text.Trim() + "'and IDXepLoaiDoanVien!='" + txtMaXepLoai.Text.Trim() + "'");
            if (tb3.Rows.Count >= 1)
            {
                MessageBox.Show(" Đoàn viên " + cbDoanVien.Text + "  đã có trong danh sách", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mtxtNamHoc.Focus();
                return;
            }
            mtxtNamHoc.Text = mtxtNamHoc.Text.Trim();
            dataGridView1.CurrentRow.Cells["PLDVKiI"].Value = (object)txtXepLoaiI.Text;
            dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["PLDVKiII"].Value = (object)txtXepLoaiII.Text;
            dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["PLDVCaNam"].Value = (object)txtXepLoaiCaNam.Text;
            bdXepLoai.EndEdit();
            adapter.Update(tbXepLoai);
            btnCapNhat.Enabled = true;
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
                bdXepLoai.EndEdit();
                adapter.Update(tbXepLoai);
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnThoat_Click_1(object sender, EventArgs e)
        {
            Close();
        }

        private void btnCapNhat_Click_1(object sender, EventArgs e)
        {
            bdXepLoai.AddNew();
            txtMaXepLoai.Text = AccessDatabase.TaoMa("XLDV", 10, "SPLayMaXepLoaiDoanVien");
            mtxtNamHoc.Text = "";
            txtXepLoaiI.Text = "";
            txtXepLoaiII.Text = "";
            txtXepLoaiCaNam.Text = "";
            btnCapNhat.Enabled = false;
            btnXoa.Enabled = false;
            cbDoanVien.Focus();
        }

        private void btnLuu_Click_1(object sender, EventArgs e)
        {
            if (cbDoanVien.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tên đoàn viên", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbDoanVien.Focus();
                return;
            }

            if (mtxtNamHoc.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập năm học", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mtxtNamHoc.Focus();
                return;
            }
            tb2 = new DataTable();
            tb2 = AccessDatabase.ExecuteQuery("Select * from XepLoaiDoanVien where MaDoanVien='" + cbDoanVien.SelectedValue.ToString() + "' and NamHoc=N'" + mtxtNamHoc.Text.Trim() + "' and PLDVKiI!=''and PLDVKiII!=''and PLDVCaNam!='' and IDXepLoaiDoanVien!='" + txtMaXepLoai.Text.Trim() + "'");
            if (tb2.Rows.Count >= 1)
            {
                MessageBox.Show(" Đoàn viên " + cbDoanVien.Text + " trong năm học " + mtxtNamHoc.Text.Trim() + " đã được xếp loại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mtxtNamHoc.Focus();
                return;
            }
            tb3 = new DataTable();
            tb3 = AccessDatabase.ExecuteQuery("Select * from XepLoaiDoanVien where MaDoanVien='" + cbDoanVien.SelectedValue.ToString() + "' and NamHoc=N'" + mtxtNamHoc.Text.Trim() + "'and IDXepLoaiDoanVien!='" + txtMaXepLoai.Text.Trim() + "'");
            if (tb3.Rows.Count >= 1)
            {
                MessageBox.Show(" Đoàn viên " + cbDoanVien.Text + "  đã có trong danh sách", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mtxtNamHoc.Focus();
                return;
            }
            mtxtNamHoc.Text = mtxtNamHoc.Text.Trim();
            dataGridView1.CurrentRow.Cells["PLDVKiI"].Value = (object)txtXepLoaiI.Text;
            dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["PLDVKiII"].Value = (object)txtXepLoaiII.Text;
            dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].Cells["PLDVCaNam"].Value = (object)txtXepLoaiCaNam.Text;
            bdXepLoai.EndEdit();
            adapter.Update(tbXepLoai);
            btnCapNhat.Enabled = true;
            btnXoa.Enabled = true;
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

        void LoadDataToCombo(ComboBox cb, string tableNam, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableNam);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        private void frmXepLoaiDoanVien_Load(object sender, EventArgs e)
        {
            UserDao dao = new UserDao();
            //str = (string)AccessDatabase.ExecuteScalar("SPLayQuyenHan_R", new string[] { "@QuyenHan" }, new string[] { NguoiDung.QuyenHan.Trim() });
            str = dao.LayQuyenHan(User.MaNguoiDung.Trim()).Substring(2, 4);

            cbLienChi.DataSource = AccessDatabase.ExecuteQuery("Select * from LienChi where MaLienChi in(select MaLienChi from ChiDoan where MaChiDoan='" + str + "')");
            cbLienChi.DisplayMember = "TenLienChi";
            cbLienChi.ValueMember = "MaLienChi";
            cbLienChi.Enabled = false;
            cbChiDoan.DataSource = AccessDatabase.ExecuteQuery("Select * from ChiDoan where MaChiDoan='" + str + "'"); ;
            cbChiDoan.DisplayMember = "TenChiDoan";
            cbChiDoan.ValueMember = "MaChiDoan";
            cbChiDoan.Enabled = false;

            cbDoanVien.DataSource = AccessDatabase.ExecuteQuery("Select * from DoanVien where MaChiDoan='" + str + "'"); ;
            cbDoanVien.DisplayMember = "TenDoanVien";
            cbDoanVien.ValueMember = "MaDoanVien";

            adapter = new SqlDataAdapter("Select * from XepLoaiDoanVien where MaDoanVien in (Select MaDoanVien from DoanVien where MaChiDoan='" + str + "')", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tbXepLoai = new DataTable();
            adapter.Fill(tbXepLoai);
            bdXepLoai = new BindingSource();
            bdXepLoai.DataSource = tbXepLoai;
            dataGridView1.DataSource = bdXepLoai;
            txtMaXepLoai.DataBindings.Add("Text", bdXepLoai, "IDXepLoaiDoanVien");
            mtxtNamHoc.DataBindings.Add("Text", bdXepLoai, "NamHoc");
            txtXepLoaiI.DataBindings.Add("Text", bdXepLoai, "PLDVKiI");
            txtXepLoaiII.DataBindings.Add("Text", bdXepLoai, "PLDVKiII");
            txtXepLoaiCaNam.DataBindings.Add("Text", bdXepLoai, "PLDVCaNam");
            cbDoanVien.DataBindings.Add("SelectedValue", bdXepLoai, "MaDoanVien");
        }
    }
}
