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
    public partial class frmNguoiDung : Form
    {
        public frmNguoiDung()
        {
            InitializeComponent();
        }

        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuilder;
        DataTable table;
        DataTable tb;
        BindingSource bindingSource;
        string strQuyenHan = "";
        string Crypto(string plainText)
        {
            HashAlgorithm hashAlgorithm = HashAlgorithm.Create("SHA256");
            byte[] data = Encoding.Default.GetBytes(plainText);
            byte[] hash = hashAlgorithm.ComputeHash(data);
            return (BitConverter.ToString(hash));

        }
        private void btnThem_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            txtMaND.Text = AccessDatabase.TaoMa("ND", 4, "SPLayMaNguoiDung");
            txtTendangnhap.Text = "";
            txtTendangnhap.Focus();
            txtMatkhau.Text = "";

            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void frmNguoiDung_Load(object sender, EventArgs e)
        {
            cbLienChi.DataSource = AccessDatabase.GetTable("LienChi");
            cbLienChi.DisplayMember = "TenLienChi";
            cbLienChi.ValueMember = "MaLienChi";
            cbChiDoan.DataSource = AccessDatabase.GetTable("ChiDoan");
            cbChiDoan.DisplayMember = "TenChiDoan";
            cbChiDoan.ValueMember = "MaChiDoan";

            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            adapter = new SqlDataAdapter("select * from NguoiDung where (QuyenHan!='*') ", conn);
            commandBuilder = new SqlCommandBuilder(adapter);
            table = new DataTable();
            adapter.Fill(table);
            bindingSource = new BindingSource();
            bindingSource.DataSource = table;
            dataGridView1.DataSource = bindingSource;
            dataGridView1.Columns[2].Visible = false;
            txtMaND.DataBindings.Add("Text", bindingSource, "MaNguoiDung");
            txtTendangnhap.DataBindings.Add("Text", bindingSource, "TenDangNhap");
            txtMatkhau.DataBindings.Add("Text", bindingSource, "MatKhau");
        }

        private void rbtLienChi_CheckedChanged(object sender, EventArgs e)
        {
            this.gBLienChi.Visible = rbtLienChi.Checked;
        }

        private void rbtChiDoan_CheckedChanged(object sender, EventArgs e)
        {
            this.gBChiDoan.Visible = rbtChiDoan.Checked;
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView1.CurrentCell == null) return;
            if (dataGridView1.Rows[dataGridView1.CurrentCell.RowIndex].IsNewRow) return;
            
            cbLienChi.SelectedValue = new UserDao().layQuyenHan(dataGridView1.CurrentCell.RowIndex);
            cbChiDoan.SelectedValue = new UserDao().layQuyenHan(dataGridView1.CurrentCell.RowIndex);
            
           

            string str= new UserDao().layQuyenHan(dataGridView1.CurrentCell.RowIndex);
            if (str.Substring(0,2)=="LC")
            {
                rbtLienChi.Checked = true;
                rbtChiDoan.Checked = false;
            }
            else if(str.Substring(0, 2) == "CD")
            {
                rbtLienChi.Checked = false;
                rbtChiDoan.Checked = true;
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count == 0)
                MessageBox.Show("Bạn chưa chọn thông tin xoá", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            else
            {
                if (MessageBox.Show("Bạn chắc chắn muốn xoá", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    foreach (DataGridViewRow dgvRow in dataGridView1.SelectedRows)
                        dataGridView1.Rows.Remove(dgvRow);
                    bindingSource.EndEdit();
                    adapter.Update(table);
                }
            }
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtTendangnhap.Text == "")
            {
                MessageBox.Show("Nhập vào tên đăng nhập", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtTendangnhap.Focus();
                return;
            }
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * from NguoiDung where TenDangNhap=N'" + txtTendangnhap.Text.Trim() + "' and MaNguoiDung!='" + txtMaND.Text + "'");
            if (tb.Rows.Count >= 1)
            {
                MessageBox.Show("Tên đăng nhập đã có người sử dụng\n Hãy nhập tên đăng nhập khác!", "Chú ý", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtTendangnhap.Focus();
                return;
            }
            if (txtMatkhau.Text == "")
            {
                MessageBox.Show("Nhập vào mật khẩu", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtMatkhau.Focus();
                return;
            }
            if (rbtLienChi.Checked == true)
            {
                strQuyenHan = "LC" + cbLienChi.SelectedValue.ToString();
            }
            else
            {
                strQuyenHan = "CD" + cbChiDoan.SelectedValue.ToString();
            }
            txtMatkhau.Text = Crypto(txtMatkhau.Text.Trim());
            dataGridView1.CurrentRow.Cells["QuyenHan"].Value = (object)strQuyenHan;
            bindingSource.EndEdit();
            adapter.Update(table);
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void cbChiDoan_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
