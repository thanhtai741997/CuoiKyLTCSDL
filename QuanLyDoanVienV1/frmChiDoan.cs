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
    public partial class frmChiDoan : Form
    {
        public frmChiDoan()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable tableChiDoan;
        BindingSource bdChiDoan;
        void CapNhatBangDoanVien()
        {
            SqlConnection conn = new SqlConnection(CommonClass.ConnectionString);
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "update DoanVien set TrangThai='C' where MaChiDoan='" + txtMaLop.Text + "'";
            command.Connection = conn;
            command.ExecuteNonQuery();
            MessageBox.Show("Chuyển sinh hoạt đoàn cho chi đoàn thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }
        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdChiDoan.AddNew();
            txtMaLop.Text = AccessDatabase.TaoMa("CD", 4, "SPLayMaChiDoan");
            txtTenLop.Text = "";
            cbMaKhoa.Focus();
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void frmChiDoan_Load(object sender, EventArgs e)
        {
            cbMaKhoa.DataSource = AccessDatabase.GetTable("LienChi");
            cbMaKhoa.DisplayMember = "TenLienChi";
            cbMaKhoa.ValueMember = "MaLienChi";
            adapter = new SqlDataAdapter("Select * from ChiDoan", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tableChiDoan = new DataTable();
            adapter.Fill(tableChiDoan);
            bdChiDoan = new BindingSource();
            bdChiDoan.DataSource = tableChiDoan;
            dataGridView1.DataSource = bdChiDoan;
            txtMaLop.DataBindings.Clear();
            txtMaLop.DataBindings.Add("Text", bdChiDoan, "MaChiDoan");
            txtTenLop.DataBindings.Clear();
            txtTenLop.DataBindings.Add("Text", bdChiDoan, "TenChiDoan");
            cbMaKhoa.DataBindings.Clear();
            cbMaKhoa.DataBindings.Add("SelectedValue", bdChiDoan, "MaLienChi");
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            //Lỗi chưa chọn tên Liên chi
            if (cbMaKhoa.Text == "")
            {
                MessageBox.Show("Chưa chọn Liên chi", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbMaKhoa.Focus();
                return;
            }
            //Lỗi chưa nhập tên lớp
            if (txtTenLop.Text == "")
            {
                MessageBox.Show("Nhập vào tên Chi đoàn", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtTenLop.Focus();
                return;
            }
            if (radioButtonDangHoc.Checked == true)
            {
                dataGridView1.CurrentRow.Cells["TrangThai"].Value = (object)"K";
            }
            else
            {
                dataGridView1.CurrentRow.Cells["TrangThai"].Value = (object)"C";
                CapNhatBangDoanVien();
            }
            txtTenLop.Text = CommonClass.ChuanXau(txtTenLop.Text, false);
            bdChiDoan.EndEdit();
            adapter.Update(tableChiDoan);
            btnThem.Enabled = true;
            btnXoa.Enabled = true;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count == 0)
                MessageBox.Show("Bạn chưa chọn thông tin xoá", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            else
            {
                if (MessageBox.Show("Bạn chắc chắn muốn xoá?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
                {
                    foreach (DataGridViewRow dgvRow in dataGridView1.SelectedRows)
                        dataGridView1.Rows.Remove(dgvRow);
                    bdChiDoan.EndEdit();
                    adapter.Update(tableChiDoan);
                }
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dataGridView1_CurrentCellChanged(object sender, EventArgs e)
        {
            DataGridViewCell cell = dataGridView1.CurrentCell;
            if (cell == null) return;
            if (cell.RowIndex < dataGridView1.Rows.Count - 1)
            {
                if (cell.Value == null) return;
                if (dataGridView1.Rows[cell.RowIndex].Cells["TrangThai"].Value.ToString().Trim().ToUpper().Equals("C"))
                {
                    radioButtonRaTruong.Checked = true;
                    radioButtonDangHoc.Checked = false;
                }
                else
                {
                    radioButtonRaTruong.Checked = false;
                    radioButtonDangHoc.Checked = true;
                }
            }
        }

        private void cbMaKhoa_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
