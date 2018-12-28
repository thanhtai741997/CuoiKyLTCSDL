using QuanLyDoanVienV1.Dao;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyDoanVienV1
{
    public partial class frmTimKiemTheoMaDoanVien : Form
    {
        public frmTimKiemTheoMaDoanVien()
        {
            InitializeComponent();
        }
        DataTable tbDoanVien;
        private void frmTimKiemTheoMaDoanVien_Load(object sender, EventArgs e)
        {
            if (User.QuyenHan.Trim() == "*")
            {
                btnChuyenChiDoan.Enabled = true;
                btnChuyenSinhHoatDoan.Enabled = true;
            }
            else
            {
                btnChuyenChiDoan.Enabled = false;
                btnChuyenSinhHoatDoan.Enabled = false;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtMaDoanVien.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập mã đoàn viên", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtMaDoanVien.Focus();
                return;
            }
            else
            {
                tbDoanVien = new DataTable();
                tbDoanVien = AccessDatabase.ExecuteQuery("Select MaDoanVien,TenDoanVien,NgaySinh,TenChiDoan,MaChiDoan,TenLienChi from VWThongTinDoanVien where MaDoanVien='" + txtMaDoanVien.Text.Trim() + "'");
                dataGridView1.DataSource = tbDoanVien;
                if (dataGridView1.Rows.Count == 1)
                {
                    MessageBox.Show("Không tìm thấy đoàn viên có mã vừa nhập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    txtMaDoanVien.Focus();
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnChiTiet_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Chức năng hiện đang được xây dựng.");
        }

        private void btnChuyenChiDoan_Click(object sender, EventArgs e)
        {
            frmChuyenDoan frm = new frmChuyenDoan();
            frm.txtMaDoanVien.Text = dataGridView1.CurrentRow.Cells["MaDoanVien"].Value.ToString();
            frm.txtTenChiDoanCu.Text = dataGridView1.CurrentRow.Cells["TenChiDoan"].Value.ToString();
            frmChuyenDoan.strMaLopCu = dataGridView1.CurrentRow.Cells["MaChiDoan"].Value.ToString();
            frm.ShowDialog();
        }

        private void btnChuyenSinhHoatDoan_Click(object sender, EventArgs e)
        {
            frmChuyenSinhHoatDoan frm = new frmChuyenSinhHoatDoan();
            frm.cbChiDoan.Enabled = false;
            frm.cbChiDoan.Text = dataGridView1.CurrentRow.Cells["TenChiDoan"].Value.ToString();
            frm.cbDoanVien.Enabled = false;
            frm.cbDoanVien.Text = dataGridView1.CurrentRow.Cells["TenDoanVien"].Value.ToString();
            frm.cbLienChi.Text = dataGridView1.CurrentRow.Cells["TenLienChi"].Value.ToString();
            frm.cbLienChi.Enabled = false;
            frm.txtMaChuyen.Text = AccessDatabase.TaoMa("CSH", 10, "SPLayMaChuyenSinhHoatDoan");
            frmChuyenSinhHoatDoan.strMaDoanVien = dataGridView1.CurrentRow.Cells["MaDoanVien"].Value.ToString();
            frm.ShowDialog();
        }
    }
}
