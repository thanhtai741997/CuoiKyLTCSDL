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
    public partial class frmBaoCaoDanhSachCanBo : Form
    {
        public frmBaoCaoDanhSachCanBo()
        {
            InitializeComponent();
        }
        void LoadDataToCombo(ComboBox cb, string tableNam, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableNam);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        BindingSource bdChiDoan;
        DataTable tb;
        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void cbLienChi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdChiDoan == null) return;
            bdChiDoan.Filter = "MaLienChi='" + cbLienChi.SelectedValue.ToString().Trim() + "'";
        }

        private void cbChiDoan_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnCanBoChiDoan_Click(object sender, EventArgs e)
        {
            if (cbChiDoan.Text == "")
            {
                MessageBox.Show("Chưa chọn Chi đoàn", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbChiDoan.Focus();
                return;
            }
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * from VWDanhSachCanBo where (TenDonVi=N'Chi đoàn') and (MaLienChi='" + cbLienChi.SelectedValue.ToString() + "')and(MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "') ");
            frmBaoCao frm = new frmBaoCao();
            CRCanBoChiDoan report = new CRCanBoChiDoan();
            report.SetDataSource(tb);
            frm.crystalReportViewer1.ReportSource = report;
            frm.ShowDialog();
        }

        private void btnCanBoLienChi_Click(object sender, EventArgs e)
        {
            // Lỗi chưa chọn tên Liên chi
            if (cbLienChi.Text == "")
            {
                MessageBox.Show("Chưa chọn Liên chi", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbLienChi.Focus();
                return;
            }
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * from VWDanhSachCanBo where (TenDonVi=N'Liên chi') and (MaLienChi='" + cbLienChi.SelectedValue.ToString() + "')");
            frmBaoCao frm = new frmBaoCao();
            CRCanBoLienChi report = new CRCanBoLienChi();
            report.SetDataSource(tb);
            frm.crystalReportViewer1.ReportSource = report;
            frm.ShowDialog();
        }

        private void btnCanBoDoanTruong_Click(object sender, EventArgs e)
        {
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * from VWDanhSachCanBo where TenDonVi=N'Đoàn trường'");
            frmBaoCao frm = new frmBaoCao();
            CRCanBoDoanTruong report = new CRCanBoDoanTruong();
            report.SetDataSource(tb);
            frm.crystalReportViewer1.ReportSource = report;
            frm.ShowDialog();
        }

        private void frmBaoCaoDanhSachCanBo_Load(object sender, EventArgs e)
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
        }
    }
}
