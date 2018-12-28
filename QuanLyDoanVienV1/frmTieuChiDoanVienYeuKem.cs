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
    public partial class frmTieuChiDoanVienYeuKem : Form
    {
        public frmTieuChiDoanVienYeuKem()
        {
            InitializeComponent();
        }
        DataTable tbDVYeuKem;
        BindingSource bdDVYeuKem;
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        private void frmTieuChiDoanVienYeuKem_Load(object sender, EventArgs e)
        {
            adapter = new SqlDataAdapter("Select * from DoanVienYeuKem", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tbDVYeuKem = new DataTable();
            adapter.Fill(tbDVYeuKem);
            bdDVYeuKem = new BindingSource();
            bdDVYeuKem.DataSource = tbDVYeuKem;
            dataGridView1.DataSource = bdDVYeuKem;

            txtMaTieuChi.DataBindings.Add("text", bdDVYeuKem, "IDDoanVienYeuKem");
            txtMoTa.DataBindings.Add("Text", bdDVYeuKem, "MoTaDoanVienYeuKem");
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdDVYeuKem.AddNew();
            txtMaTieuChi.Text = AccessDatabase.TaoMaChuCai("SPMaDoanVienYeuKem").ToString();
            txtMoTa.Text = "";
            txtMoTa.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtMoTa.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập mô tả đoàn viên yếu kém", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtMoTa.Focus();
                return;
            }
            txtMoTa.Text = CommonClass.ChuanXau(txtMoTa.Text, false);
            bdDVYeuKem.EndEdit();
            adapter.Update(tbDVYeuKem);
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
                    bdDVYeuKem.EndEdit();
                    adapter.Update(tbDVYeuKem);
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
