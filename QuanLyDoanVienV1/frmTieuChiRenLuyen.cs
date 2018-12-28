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
    public partial class frmTieuChiRenLuyen : Form
    {
        public frmTieuChiRenLuyen()
        {
            InitializeComponent();
        }
        DataTable tbRenLuyen;
        BindingSource bdRenLuyen;
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        private void frmTieuChiRenLuyen_Load(object sender, EventArgs e)
        {
            adapter = new SqlDataAdapter("Select * from RenLuyen", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tbRenLuyen = new DataTable();
            adapter.Fill(tbRenLuyen);
            bdRenLuyen = new BindingSource();
            bdRenLuyen.DataSource = tbRenLuyen;
            dataGridView1.DataSource = bdRenLuyen;

            txtMaTieuChi.DataBindings.Add("text", bdRenLuyen, "IDRenLuyen");
            txtMoTa.DataBindings.Add("Text", bdRenLuyen, "MoTaRenLuyen");
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdRenLuyen.AddNew();
            txtMaTieuChi.Text = AccessDatabase.TaoMaChuCai("SPMaRenLuyen").ToString();
            txtMoTa.Text = "";
            txtMoTa.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtMoTa.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập mô tả rèn luyện", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtMoTa.Focus();
                return;
            }
            txtMoTa.Text = CommonClass.ChuanXau(txtMoTa.Text, false);
            bdRenLuyen.EndEdit();
            adapter.Update(tbRenLuyen);
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
                    bdRenLuyen.EndEdit();
                    adapter.Update(tbRenLuyen);
                }

            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
