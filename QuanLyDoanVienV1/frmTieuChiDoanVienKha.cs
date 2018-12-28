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
    public partial class frmTieuChiDoanVienKha : Form
    {
        public frmTieuChiDoanVienKha()
        {
            InitializeComponent();
        }
        DataTable tbDVKha;
        BindingSource bdDVKha;
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        private void frmTieuChiDoanVienKha_Load(object sender, EventArgs e)
        {
            adapter = new SqlDataAdapter("Select * from DoanVienKha", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tbDVKha = new DataTable();
            adapter.Fill(tbDVKha);
            bdDVKha = new BindingSource();
            bdDVKha.DataSource = tbDVKha;
            dataGridView1.DataSource = bdDVKha;

            txtMaTieuChi.DataBindings.Add("text", bdDVKha, "IDDoanVienKha");
            txtMoTa.DataBindings.Add("Text", bdDVKha, "MoTaDoanVienKha");
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdDVKha.AddNew();
            txtMaTieuChi.Text = AccessDatabase.TaoMaChuCai("SPMaDoanVienKha").ToString();
            txtMoTa.Text = "";
            txtMoTa.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtMoTa.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập mô tả đoàn viên khá", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtMoTa.Focus();
                return;
            }
            txtMoTa.Text = CommonClass.ChuanXau(txtMoTa.Text, false);
            bdDVKha.EndEdit();
            adapter.Update(tbDVKha);
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
                    bdDVKha.EndEdit();
                    adapter.Update(tbDVKha);
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
