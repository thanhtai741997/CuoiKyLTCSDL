using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace QuanLyDoanVienV1
{
    public partial class frmDanhMucTonGiao : Form
    {
        public frmDanhMucTonGiao()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuilder;
        DataTable table;
        BindingSource bindingSource;
        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void frmDanhMucTonGiao_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            adapter = new SqlDataAdapter("select * from TonGiao", conn);
            commandBuilder = new SqlCommandBuilder(adapter);
            table = new DataTable();
            adapter.Fill(table);
            bindingSource = new BindingSource();
            bindingSource.DataSource = table;
            dataGridView1.DataSource = bindingSource;
            txtMaTG.DataBindings.Add("Text", bindingSource, "MaTonGiao");
            txtTenTG.DataBindings.Add("Text", bindingSource, "TenTonGiao");
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            txtMaTG.Text = AccessDatabase.TaoMa("TG", 4, "SPLayMaTonGiao");
            txtTenTG.Text = "";
            txtTenTG.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnluu_Click(object sender, EventArgs e)
        {
            if (txtTenTG.Text == "")
            {
                MessageBox.Show("Nhập vào tên tôn giáo", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtTenTG.Focus();
                return;
            }
            else
            {
                txtTenTG.Text = CommonClass.ChuanXau(txtTenTG.Text, false);
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
    }
}
