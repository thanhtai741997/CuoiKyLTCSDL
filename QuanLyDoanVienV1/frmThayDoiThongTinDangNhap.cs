using QuanLyDoanVienV1.Dao;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyDoanVienV1
{
    public partial class frmThayDoiThongTinDangNhap : Form
    {
        public frmThayDoiThongTinDangNhap()
        {
            InitializeComponent();
        }
        string Crypto(string plainText)
        {
            HashAlgorithm hashAlgorithm = HashAlgorithm.Create("SHA256");
            byte[] data = Encoding.Default.GetBytes(plainText);
            byte[] hash = hashAlgorithm.ComputeHash(data);
            return (BitConverter.ToString(hash));
        }
        private void btnThayDoi_Click(object sender, EventArgs e)
        {
            if (txtTen.Text == "")
            {
                MessageBox.Show("Chưa nhập tên đăng nhập", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtTen.Focus();
                return;
            }
            if (txtMatkhau.Text == "")
            {
                MessageBox.Show("Chưa nhập vào mật khẩu", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtMatkhau.Focus();
                return;
            }
            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "update NguoiDung set TenDangNhap='" + txtTen.Text + "', MatKhau='" + Crypto(txtMatkhau.Text) + "' where MaNguoiDung='" + User.MaNguoiDung + "'";
            command.Connection = conn;
            command.ExecuteNonQuery();
            MessageBox.Show("Thay đổi mật khẩu thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            this.Close();
        }

        private void btnQuayLai_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void txtMatkhau_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtTen_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void frmThayDoiThongTinDangNhap_Load(object sender, EventArgs e)
        {
            txtTen.Text = User.TenNguoiDung;
            txtMatkhau.Text = User.MatKhau;
        }
    }
}
