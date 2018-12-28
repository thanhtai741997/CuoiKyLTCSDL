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
    public partial class frmPhanLoaiChiDoanCaNam : Form
    {
        public frmPhanLoaiChiDoanCaNam()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable tbPhanLoai;
        BindingSource bdPhanLoai;
        private void frmPhanLoaiChiDoanCaNam_Load(object sender, EventArgs e)
        {
            adapter = new SqlDataAdapter("Select * from PLCDCaNam", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tbPhanLoai = new DataTable();
            adapter.Fill(tbPhanLoai);
            bdPhanLoai = new BindingSource();
            bdPhanLoai.DataSource = tbPhanLoai;
            dataGridView1.DataSource = bdPhanLoai;

            txtMaXepLoai.DataBindings.Add("Text", bdPhanLoai, "IDPLCDCaNam");
            txtXepLoaiI.DataBindings.Add("Text", bdPhanLoai, "PhanLoaiKiI");
            txtXepLoaiII.DataBindings.Add("Text", bdPhanLoai, "PhanLoaiKiII");
            txtXepLoaiCaNam.DataBindings.Add("Text", bdPhanLoai, "PhanLoaiCaNam");
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdPhanLoai.AddNew();
            txtMaXepLoai.Text = AccessDatabase.TaoMa("PLDVCN", 8, "SPLayMaPLCDCaNam");
            txtXepLoaiI.Text = "";
            txtXepLoaiII.Text = "";
            txtXepLoaiCaNam.Text = "";
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtXepLoaiI.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập phân loại ki I ", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtXepLoaiI.Focus(); return;
            }
            if (txtXepLoaiII.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập phân loại ki II", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtXepLoaiII.Focus(); return;
            }
            if (txtXepLoaiCaNam.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập phân loại cả năm ", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtXepLoaiCaNam.Focus(); return;
            }
            txtXepLoaiI.Text = CommonClass.ChuanXau(txtXepLoaiI.Text, false);
            txtXepLoaiII.Text = CommonClass.ChuanXau(txtXepLoaiII.Text, false);
            txtXepLoaiCaNam.Text = CommonClass.ChuanXau(txtXepLoaiCaNam.Text, false);
            bdPhanLoai.EndEdit();
            adapter.Update(tbPhanLoai);
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count == 0)
                MessageBox.Show("Bạn chưa chọn thông tin xoá!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            else
                if (MessageBox.Show("Bạn chắc chắn muốn xoá?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
            {
                foreach (DataGridViewRow dgvRow in dataGridView1.SelectedRows)
                    dataGridView1.Rows.Remove(dgvRow);
                bdPhanLoai.EndEdit();
                adapter.Update(tbPhanLoai);
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
