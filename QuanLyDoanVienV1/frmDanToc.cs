using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace QuanLyDoanVienV1
{
    public partial class frmDanToc : Form
    {
        public frmDanToc()
        {
            InitializeComponent();
        }

        DataTable table;
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuilder;
        BindingSource bindingSource;
        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void frmDanToc_Load(object sender, EventArgs e)
        {
            adapter = new SqlDataAdapter("select * from DanToc", new SqlConnection(CommonClass.ConnectionString));
            commandBuilder = new SqlCommandBuilder(adapter);
            table = new DataTable();
            adapter.Fill(table);
            bindingSource = new BindingSource();
            bindingSource.DataSource = table;
            dataGridView1.DataSource = bindingSource;
            txtMaDT.DataBindings.Add("Text", bindingSource, "MaDanToc");
            txtTenDT.DataBindings.Add("Text", bindingSource, "TenDanToc");
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

        private void btnThem_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            txtMaDT.Text = AccessDatabase.TaoMa("DT", 4, "SPLayMaDanToc");
            txtTenDT.Text = "";
            txtTenDT.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtTenDT.Text == "")
            {
                MessageBox.Show("Nhập vào tên dân tộc", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtTenDT.Focus();
                return;
            }
            else
            {
                txtTenDT.Text = CommonClass.ChuanXau(txtTenDT.Text, false);
                bindingSource.EndEdit();
                adapter.Update(table);
                btnThem.Enabled = true;
                btnXoa.Enabled = true;
            }
        }
    }
}
