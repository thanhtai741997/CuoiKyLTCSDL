using System;
using System.Security.Cryptography;
using System.Text;
using System.Windows.Forms;
using QuanLyDoanVienV1.Dao;

namespace QuanLyDoanVienV1
{
    public partial class LoginForm : DevExpress.XtraEditors.XtraForm
    {
        private MainForm mainForm;
        public LoginForm(MainForm mainForm)
        {
            InitializeComponent();
            this.mainForm = mainForm;
        }
        private void labelControl1_Click(object sender, EventArgs e)
        {
            
        }
        private void btnLoginExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        string Crypto(string plainText)
        {
            HashAlgorithm hashAlgorithm = HashAlgorithm.Create("SHA256");
            byte[] data = Encoding.Default.GetBytes(plainText);
            byte[] hash = hashAlgorithm.ComputeHash(data);
            return (BitConverter.ToString(hash));

        }
        private void btnLoginConfirm_Click(object sender, EventArgs e)
        {
            var dao = new UserDao();
            if (txtUsername.Text == "")
            {
                MessageBox.Show("Chưa nhập tên đăng nhập", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtUsername.Focus();
                return;
            }
            if (txtPassword.Text == "")
            {
                MessageBox.Show("Chưa nhập vào mật khẩu", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtPassword.Focus();
                return;
            }

            if (CommonClass.KiemTra(txtUsername.Text, Crypto(txtPassword.Text)))
            {
                var user = dao.GetById(txtUsername.Text);
                MessageBox.Show("Đăng nhập thành công. Xin chào " + user.TenDangNhap, "Login success", MessageBoxButtons.OK);
                mainForm.setEnableAfterLogin(true);

                string str = User.QuyenHan.Trim();

                if (str.Length > 1)
                {
                    mainForm.checkQuyenHan(str.Substring(0, 2));
                }
                else
                    mainForm.checkQuyenHan("*");
                
                this.Close();
            }
            else
                MessageBox.Show("Thông tin đăng nhập sai", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            txtPassword.Text = "";
            txtUsername.Focus();
        }

        private void LoginForm_Load(object sender, EventArgs e)
        {

        }

        private void LoginForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            
        }
    }
}