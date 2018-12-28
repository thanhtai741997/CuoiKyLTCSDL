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
    public partial class frmPhanLoaiDVHocKi : Form
    {
        public frmPhanLoaiDVHocKi()
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
        private void frmPhanLoaiDVHocKi_Load(object sender, EventArgs e)
        {
            LoadDataToCombo(cbHocTap, "HocTap", "MoTaHocTap", "IDHocTap");
            LoadDataToCombo(cbRenLuyen, "RenLuyen", "MoTaRenLuyen", "IDRenLuyen");
            LoadDataToCombo(cbPhongTrao, "PhongTrao", "MoTaPhongTrao", "IDPhongTrao");
            LoadDataToCombo(cbDoanPhi, "DoanPhi", "MoTaDoanPhi", "IDDoanPhi");
            adapter = new SqlDataAdapter("Select * from PLDVHocKi", new SqlConnection(CommonClass.ConnectionString));
            commandBuider = new SqlCommandBuilder(adapter);
            tbPhanLoai = new DataTable();
            adapter.Fill(tbPhanLoai);
            bdPhanLoai = new BindingSource();
            bdPhanLoai.DataSource = tbPhanLoai;
            dataGridView1.DataSource = bdPhanLoai;
            txtMaXepLoai.DataBindings.Add("Text", bdPhanLoai, "IDPLDVHocKi");
            txtXepLoai.DataBindings.Add("Text", bdPhanLoai, "XepLoai");

            cbDoanPhi.DataBindings.Add("SelectedValue", bdPhanLoai, "IDDoanPhi");
            cbHocTap.DataBindings.Add("SelectedValue", bdPhanLoai, "IDHocTap");
            cbPhongTrao.DataBindings.Add("SelectedValue", bdPhanLoai, "IDPhongTrao");
            cbRenLuyen.DataBindings.Add("SelectedValue", bdPhanLoai, "IDRenLuyen");

        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            bdPhanLoai.AddNew();
            txtMaXepLoai.Text = AccessDatabase.TaoMa("PLDVHK", 10, "SPLayMaPLDVHocKi");
            txtXepLoai.Text = "";

            cbDoanPhi.Text = "";
            cbHocTap.Text = "";
            cbPhongTrao.Text = "";
            cbRenLuyen.Text = "";
            btnThem.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (cbHocTap.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tiêu chí học tập ", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbHocTap.Focus(); return;
            }
            if (cbRenLuyen.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tiêu chí rèn luyện", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbRenLuyen.Focus();
                return;
            }
            if (cbPhongTrao.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tiêu chí phong trào ", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbPhongTrao.Focus();
                return;
            }

            if (cbDoanPhi.Text == "")
            {
                MessageBox.Show("Bạn chưa chọn tiêu chí đoàn phí ", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbDoanPhi.Focus();
                return;
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
