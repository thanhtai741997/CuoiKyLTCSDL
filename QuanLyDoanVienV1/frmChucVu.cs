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
    public partial class frmChucVu : Form
    {
        public frmChucVu()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commanBuilder;
        DataTable table;
        BindingSource bindingSource;
        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            txtMaChucVu.Text = AccessDatabase.TaoMa("CV", 4, "SPLayMaChucVu");
            txtTenChucVu.Text = "";
            txtTenChucVu.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtTenChucVu.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập tên chức vụ", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtTenChucVu.Focus();
                return;
            }
            {
                txtTenChucVu.Text = CommonClass.ChuanXau(txtTenChucVu.Text, false);
                bindingSource.EndEdit();
                adapter.Update(table);
                btnThem.Enabled = true;
                btnXoa.Enabled = true;
            }
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
                    bindingSource.EndEdit();
                    adapter.Update(table);
                }
            }
        }

        private void frmChucVu_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            adapter = new SqlDataAdapter("select * from ChucVu", conn);
            commanBuilder = new SqlCommandBuilder(adapter);
            table = new DataTable();
            adapter.Fill(table);
            bindingSource = new BindingSource();
            bindingSource.DataSource = table;
            dataGridView1.DataSource = bindingSource;
            txtMaChucVu.DataBindings.Add("Text", bindingSource, "MaChucVu");
            txtTenChucVu.DataBindings.Add("Text", bindingSource, "TenChucVu");
        }
    }
}
