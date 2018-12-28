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
    public partial class frmPhanLoaiChiDoanHocKi : Form
    {
        public frmPhanLoaiChiDoanHocKi()
        {
            InitializeComponent();
        }
        SqlDataAdapter adapter;
        SqlCommandBuilder commandBuider;
        DataTable tbPhanLoai;
        BindingSource bdPhanLoai;
        void LoadDataToCombo(ComboBox cb, string tableName, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableName);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        private void frmPhanLoaiChiDoanHocKi_Load(object sender, EventArgs e)
        {
            LoadDataToCombo(cbDVKha, "DoanVienKha", "MoTaDoanVienKha", "IDDoanVienKha");
            LoadDataToCombo(cbDVYeuKem, "DoanVienYeuKem", "MoTaDoanVienYeuKem", "IDDoanVienYeuKem");
            adapter = new SqlDataAdapter("Select * from PLCDHocKi", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tbPhanLoai = new DataTable();
            adapter.Fill(tbPhanLoai);
            bdPhanLoai = new BindingSource();
            bdPhanLoai.DataSource = tbPhanLoai;
            dataGridView1.DataSource = bdPhanLoai;
            txtMaXepLoai.DataBindings.Clear();
            txtMaXepLoai.DataBindings.Add("Text", bdPhanLoai, "IDPLCDHocKi");
            txtXepLoai.DataBindings.Clear();
            txtXepLoai.DataBindings.Add("Text", bdPhanLoai, "XepLoai");

            cbDVKha.DataBindings.Clear();
            cbDVKha.DataBindings.Add("SelectedValue", bdPhanLoai, "IDDoanVienKha");
            cbDVYeuKem.DataBindings.Clear();
            cbDVYeuKem.DataBindings.Add("SelectedValue", bdPhanLoai, "IDDoanVienYeuKem");
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdPhanLoai.AddNew();
            txtMaXepLoai.Text = AccessDatabase.TaoMa("PLCDHK", 8, "SPLayMaPLCDHocKi");
            txtXepLoai.Text = "";

            cbDVKha.Text = "";
            cbDVYeuKem.Text = "";
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (cbDVKha.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tiêu chí đoàn viên khá ", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbDVKha.Focus();
                return;
            }

            if (cbDVYeuKem.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tiêu chí đoàn viên yếu kém", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbDVYeuKem.Focus(); return;
            }
            if (txtXepLoai.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập xếp loại ", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtXepLoai.Focus();
                return;
            }
            txtXepLoai.Text = CommonClass.ChuanXau(txtXepLoai.Text, false);
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
