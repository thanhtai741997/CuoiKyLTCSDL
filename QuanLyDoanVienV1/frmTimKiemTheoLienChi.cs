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
    public partial class frmTimKiemTheoLienChi : Form
    {
        public frmTimKiemTheoLienChi()
        {
            InitializeComponent();
        }
        DataTable tbDoanVien;
        private void frmTimKiemTheoLienChi_Load(object sender, EventArgs e)
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
            if (txtTenLienChi.Text.Trim() == "")
            {
                MessageBox.Show("Bạn chưa nhập tên liên chi", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtTenLienChi.Focus();
                return;
            }
            else
            {

                tbDoanVien = new DataTable();
                txtTenLienChi.Text = CommonClass.ChuanXau(txtTenLienChi.Text, false);
                if (radioButtonTatCa.Checked == true)
                {
                    tbDoanVien = AccessDatabase.ExecuteQuery("Select MaDoanVien,TenDoanVien,NgaySinh,TenChiDoan,MaChiDoan,TenLienChi from VWThongTinDoanVien where TenLienChi  LIKE N'%" + txtTenLienChi.Text.Trim() + "%'");
                    if (tbDoanVien.Rows.Count >= 1)
                    {
                        dataGridView1.DataSource = tbDoanVien;
                        return;
                    }
                    MessageBox.Show("Không tìm thấy liên chi có tên vừa nhập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    dataGridView1.DataSource = null;
                    txtTenLienChi.Focus();
                }
                if (radioButtonDangSinhHoat.Checked == true)
                {
                    tbDoanVien = AccessDatabase.ExecuteQuery("Select MaDoanVien,TenDoanVien,NgaySinh,TenChiDoan,MaChiDoan,TenLienChi from VWThongTinDoanVien where TenLienChi  LIKE N'%" + txtTenLienChi.Text.Trim() + "%'AND TrangThai=N'K'");
                    if (tbDoanVien.Rows.Count >= 1)
                    {
                        dataGridView1.DataSource = tbDoanVien;
                        return;
                    }
                    MessageBox.Show("Không tìm thấy liên chi đang hoạt động có tên vừa nhập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    dataGridView1.DataSource = null;
                    txtTenLienChi.Focus();
                }
                if (radioButtonChuyenSinhHoat.Checked == true)
                {
                    tbDoanVien = AccessDatabase.ExecuteQuery("Select MaDoanVien,TenDoanVien,NgaySinh,TenChiDoan,MaChiDoan,TenLienChi from VWThongTinDoanVien where TenLienChi  LIKE N'%" + txtTenLienChi.Text.Trim() + "%' and TrangThai=N'C'");
                    if (tbDoanVien.Rows.Count >= 1)
                    {
                        dataGridView1.DataSource = tbDoanVien;
                        return;
                    }
                    MessageBox.Show("Không tìm thấy liên chi chuyển sinh hoạt có tên vừa nhập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    dataGridView1.DataSource = null;
                    txtTenLienChi.Focus();
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnChiTiet_Click(object sender, EventArgs e)
        {

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
