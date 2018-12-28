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
    public partial class frmChuyenDoan : Form
    {
        public frmChuyenDoan()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable tbChuyenDoan;
        BindingSource bdChuyenDoan;
        public static string strMaLopCu;
        private void frmChuyenDoan_Load(object sender, EventArgs e)
        {
            adapter = new SqlDataAdapter("Select * from ChuyenChiDoan", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tbChuyenDoan = new DataTable();
            adapter.Fill(tbChuyenDoan);
            bdChuyenDoan = new BindingSource();
            bdChuyenDoan.DataSource = tbChuyenDoan;
            dataGridView1.DataSource = bdChuyenDoan;
            txtMaChuyen.DataBindings.Add("Text", bdChuyenDoan, "IDChuyenChiDoan");
            txtLiDo.DataBindings.Add("Text", bdChuyenDoan, "LiDoChuyen");
            dateTimePicker1.DataBindings.Add("Text", bdChuyenDoan, "NgayChuyen");
            cbLopMoi.DataBindings.Add("SelectedValue", bdChuyenDoan, "MaChiDoanMoi");


            bdChuyenDoan.AddNew();
            txtMaChuyen.Text = AccessDatabase.TaoMa("CD", 8, "SPLayMaChuyenDoan");
            cbLopMoi.DataSource = AccessDatabase.ExecuteQuery("Select * from ChiDoan where MaChiDoan!='" + strMaLopCu + "'");
            cbLopMoi.DisplayMember = "TenChiDoan";
            cbLopMoi.ValueMember = "MaChiDoan";
            txtLiDo.Text = "";
        }
        void CapNhatBangDoanVien()
        {
            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "update DoanVien set MaChiDoan='" + cbLopMoi.SelectedValue.ToString() + "' where MaDoanVien='" + txtMaDoanVien.Text + "'";
            command.Connection = conn;
            command.ExecuteNonQuery();
            if (MessageBox.Show("Chuyển chi đoàn thành công\n Bạn có muốn tiếp tục chuyển nữa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.No)
                this.Close();
        }

        private void btnChuyenSinhHoat_Click(object sender, EventArgs e)
        {
            if (cbLopMoi.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn chi đoàn chuyển đến", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbLopMoi.Focus();
                return;
            }
            if (txtLiDo.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập lí do", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtLiDo.Focus();
                return;
            }
            txtLiDo.Text = CommonClass.ChuanXau(txtLiDo.Text, false);
            dataGridView1.CurrentRow.Cells["MaChiDoanCu"].Value = (object)strMaLopCu;
            dataGridView1.CurrentRow.Cells["MaDoanVien"].Value = (object)txtMaDoanVien.Text;
            dataGridView1.CurrentRow.Cells["NgayChuyen"].Value = (object)dateTimePicker1.Text;
            bdChuyenDoan.EndEdit();
            adapter.Update(tbChuyenDoan);
            CapNhatBangDoanVien();
        }

        private void btnQuayLai_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
