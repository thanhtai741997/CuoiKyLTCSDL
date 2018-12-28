using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace QuanLyDoanVienV1
{
    public partial class frmLienChi : Form
    {
        public frmLienChi()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuilder;
        DataTable table;
        BindingSource bindingSource;
        private void btnThem_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            txtMakhoa.Text = AccessDatabase.TaoMa("LC", 4, "SPLayMaLienChi"); ;
            txtTenkhoa.Text = "";
            txtTenkhoa.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void frmLienChi_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            adapter = new SqlDataAdapter("select * from LienChi", conn);
            commandBuilder = new SqlCommandBuilder(adapter);
            table = new DataTable();
            adapter.Fill(table);
            bindingSource = new BindingSource();
            bindingSource.DataSource = table;
            dataGridView1.DataSource = bindingSource;
            txtMakhoa.DataBindings.Add("Text", bindingSource, "MaLienChi");
            txtTenkhoa.DataBindings.Add("Text", bindingSource, "TenLienChi");
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtTenkhoa.Text == "")
            {
                MessageBox.Show("Nhập vào tên liên chi", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtTenkhoa.Focus();
                return;
            }
            else
            {
                txtTenkhoa.Text = CommonClass.ChuanXau(txtTenkhoa.Text, false);
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

        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
