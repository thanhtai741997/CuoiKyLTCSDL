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
    public partial class frmTimKiemTheoChiDoan : Form
    {
        public frmTimKiemTheoChiDoan()
        {
            InitializeComponent();
        }
        DataTable tbDoanVien;
        private void frmTimKiemTheoChiDoan_Load(object sender, EventArgs e)
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
            if (txtTenChiDoan.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập mã đoàn viên", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtTenChiDoan.Focus();
                return;
            }
            else
            {
                tbDoanVien = new DataTable();
                txtTenChiDoan.Text = CommonClass.ChuanXau(txtTenChiDoan.Text, false);
                if (radioButtonTatCa.Checked == true)
                {
                    tbDoanVien = AccessDatabase.ExecuteQuery("Select MaDoanVien,TenDoanVien,NgaySinh,TenChiDoan,MaChiDoan,TenLienChi from VWThongTinDoanVien where TenChiDoan  LIKE N'%" + txtTenChiDoan.Text.Trim() + "%'");
                    if (tbDoanVien.Rows.Count >= 1)
                    {
                        dataGridView1.DataSource = tbDoanVien;
                        return;
                    }
                    MessageBox.Show("Không tìm thấy chi đoàn có tên vừa nhập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    dataGridView1.DataSource = null;
                    txtTenChiDoan.Focus();
                }
                if (radioButtonDangSinhHoat.Checked == true)
                {
                    tbDoanVien = AccessDatabase.ExecuteQuery("Select MaDoanVien,TenDoanVien,NgaySinh,TenChiDoan,MaChiDoan,TenLienChi from VWThongTinDoanVien where TenChiDoan  LIKE N'%" + txtTenChiDoan.Text.Trim() + "%'AND TrangThai=N'K'");
                    if (tbDoanVien.Rows.Count >= 1)
                    {
                        dataGridView1.DataSource = tbDoanVien;
                        return;
                    }
                    MessageBox.Show("Không tìm thấy chi đoàn đang sinh hoạt có tên vừa nhập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    dataGridView1.DataSource = null;
                    txtTenChiDoan.Focus();
                }
                if (radioButtonChuyenSinhHoat.Checked == true)
                {
                    tbDoanVien = AccessDatabase.ExecuteQuery("Select MaDoanVien,TenDoanVien,NgaySinh,TenChiDoan,MaChiDoan,TenLienChi from VWThongTinDoanVien where TenChiDoan  LIKE N'%" + txtTenChiDoan.Text.Trim() + "%' and TrangThai=N'C'");
                    if (tbDoanVien.Rows.Count >= 1)
                    {
                        dataGridView1.DataSource = tbDoanVien;
                        return;
                    }
                    MessageBox.Show("Không tìm thấy chi đoàn chuyển sinh hoạt có tên vừa nhập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    dataGridView1.DataSource = null;
                    txtTenChiDoan.Focus();
                }

            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
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

        private void btnChiTiet_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Chức năng đang được xây dựng.");
        }
    }
}
