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
    public partial class frmTieuChiDoanPhi : Form
    {
        public frmTieuChiDoanPhi()
        {
            InitializeComponent();
        }
        DataTable tbDoanPhi;
        BindingSource bdDoanPhi;
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        private void frmTieuChiDoanPhi_Load(object sender, EventArgs e)
        {
            adapter = new SqlDataAdapter("Select * from DoanPhi", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tbDoanPhi = new DataTable();
            adapter.Fill(tbDoanPhi);
            bdDoanPhi = new BindingSource();
            bdDoanPhi.DataSource = tbDoanPhi;
            dataGridView1.DataSource = bdDoanPhi;

            txtMaTieuChi.DataBindings.Add("text", bdDoanPhi, "IDDoanPhi");
            txtMoTa.DataBindings.Add("Text", bdDoanPhi, "MoTaDoanPhi");
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdDoanPhi.AddNew();
            txtMaTieuChi.Text = AccessDatabase.TaoMaChuCai("SPMaDoanPhi").ToString();
            txtMoTa.Text = "";
            txtMoTa.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtMoTa.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập mô tả đoàn phí", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtMoTa.Focus();
                return;
            }
            txtMoTa.Text = CommonClass.ChuanXau(txtMoTa.Text, false);
            bdDoanPhi.EndEdit();
            adapter.Update(tbDoanPhi);
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
                    bdDoanPhi.EndEdit();
                    adapter.Update(tbDoanPhi);
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
