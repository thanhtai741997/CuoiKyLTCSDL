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
    public partial class frmTieuChiPhongTrao : Form
    {
        public frmTieuChiPhongTrao()
        {
            InitializeComponent();
        }
        DataTable tbPhongTrao;
        BindingSource bdPhongTrao;
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        private void frmTieuChiPhongTrao_Load(object sender, EventArgs e)
        {
            adapter = new SqlDataAdapter("Select * from PhongTrao", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tbPhongTrao = new DataTable();
            adapter.Fill(tbPhongTrao);
            bdPhongTrao = new BindingSource();
            bdPhongTrao.DataSource = tbPhongTrao;
            dataGridView1.DataSource = bdPhongTrao;

            txtMaTieuChi.DataBindings.Add("text", bdPhongTrao, "IDPhongTrao");
            txtMoTa.DataBindings.Add("Text", bdPhongTrao, "MoTaPhongTrao");
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdPhongTrao.AddNew();
            txtMaTieuChi.Text = AccessDatabase.TaoMaChuCai("SPMaPhongTrao").ToString();
            txtMoTa.Text = "";
            txtMoTa.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {

        }

        private void btnLuu_Click_1(object sender, EventArgs e)
        {
            if (txtMoTa.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập mô tả phong trào", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtMoTa.Focus();
                return;
            }
            txtMoTa.Text = CommonClass.ChuanXau(txtMoTa.Text, false);
            bdPhongTrao.EndEdit();
            adapter.Update(tbPhongTrao);
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
                    bdPhongTrao.EndEdit();
                    adapter.Update(tbPhongTrao);
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
