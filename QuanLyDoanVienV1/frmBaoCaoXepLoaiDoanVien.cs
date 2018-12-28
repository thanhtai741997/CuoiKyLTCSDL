using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyDoanVienV1
{
    public partial class frmBaoCaoXepLoaiDoanVien : Form
    {
        public frmBaoCaoXepLoaiDoanVien()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void mtxtNamHoc_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

        private void btnBaoCaoCaNam_Click(object sender, EventArgs e)
        {
            if (cbChiDoan.Text == "")
            {
                MessageBox.Show("Chưa chọn Chi đoàn", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbChiDoan.Focus();
                return;
            }
            if (mtxtNamHoc.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập năm học", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mtxtNamHoc.Focus();
                return;
            }
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * from VWXepLoaiDoanVien where NamHoc='" + mtxtNamHoc.Text.Trim() + "' and MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "'");
            frmBaoCao frm = new frmBaoCao();
            CRXepLoaiDoanVien report = new CRXepLoaiDoanVien();
            report.SetDataSource(tb);
            frm.crystalReportViewer1.ReportSource = report;
            frm.ShowDialog();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void cbLienChi_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void cbChiDoan_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        void LoadDataToCombo(ComboBox cb, string tableNam, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableNam);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        BindingSource bdChiDoan;
        DataTable tb;
        private void frmBaoCaoXepLoaiDoanVien_Load(object sender, EventArgs e)
        {
            LoadDataToCombo(cbLienChi, "LienChi", "TenLienChi", "MaLienChi");
            bdChiDoan = new BindingSource();
            bdChiDoan.DataSource = AccessDatabase.GetTable("ChiDoan");
            cbChiDoan.DataSource = bdChiDoan;
            cbChiDoan.DisplayMember = "TenChiDoan";
            cbChiDoan.ValueMember = "MaChiDoan";
            if (cbLienChi.DataSource != null)
            {
                bdChiDoan.Filter = "MaLienChi='" + cbLienChi.SelectedValue.ToString().Trim() + "'";
            }
            mtxtNamHoc.Focus();
        }
    }
}
