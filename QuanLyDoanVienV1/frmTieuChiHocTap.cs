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
    public partial class frmTieuChiHocTap : Form
    {
        public frmTieuChiHocTap()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }
        DataTable tbHocTap;
        BindingSource bdHocTap;
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        private void frmTieuChiHocTap_Load(object sender, EventArgs e)
        {
            adapter = new SqlDataAdapter("Select * from HocTap", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tbHocTap = new DataTable();
            adapter.Fill(tbHocTap);
            bdHocTap = new BindingSource();
            bdHocTap.DataSource = tbHocTap;
            dataGridView1.DataSource = bdHocTap;

            txtMaTieuChi.DataBindings.Add("text", bdHocTap, "IDHocTap");
            txtMoTa.DataBindings.Add("Text", bdHocTap, "MoTaHocTap");
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdHocTap.AddNew();
            txtMaTieuChi.Text = AccessDatabase.TaoMaChuCai("SPMaHocTap").ToString();
            txtMoTa.Text = "";
            txtMoTa.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtMoTa.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập mô tả học tập", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtMoTa.Focus();
                return;
            }
            txtMoTa.Text = CommonClass.ChuanXau(txtMoTa.Text, false);
            bdHocTap.EndEdit();
            adapter.Update(tbHocTap);
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
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
                    bdHocTap.EndEdit();
                    adapter.Update(tbHocTap);
                }
            }
        }
    }
}
