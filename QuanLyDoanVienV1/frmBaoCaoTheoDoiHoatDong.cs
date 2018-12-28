using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Data;
using System.Windows.Forms;

namespace QuanLyDoanVienV1
{
    public partial class frmBaoCaoTheoDoiHoatDong : Form
    {
        public frmBaoCaoTheoDoiHoatDong()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void cbDoanVien_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnBaoCao_Click(object sender, EventArgs e)
        {
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * from VWTheoDoiHoatDong where MaChiDoan='" + cbChiDoan.SelectedValue.ToString() + "'");
            frmBaoCao frm = new frmBaoCao();
            CRTheoDoiHoatDong report = new CRTheoDoiHoatDong();
            ((TextObject)report.Section2.ReportObjects["TenLienChi"]).Text = cbLienChi.Text.Trim();
            ((TextObject)report.Section2.ReportObjects["TenChiDoan"]).Text = cbChiDoan.Text.Trim();
            ((TextObject)report.Section2.ReportObjects["TenDoanVien"]).Text = cbDoanVien.Text.Trim();
            report.SetDataSource(tb);
            frm.crystalReportViewer1.ReportSource = report;
            frm.ShowDialog();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void lb_Click(object sender, EventArgs e)
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
            if (bdDoanVien == null) return;
            bdDoanVien.Filter = "MaChiDoan='" + cbChiDoan.SelectedValue.ToString().Trim() + "'";
        }
        BindingSource bdChiDoan, bdDoanVien;
        DataTable tb;
        void LoadDataToCombo(ComboBox cb, string tableNam, string DisplayField, string ValueField)
        {
            cb.DataSource = AccessDatabase.GetTable(tableNam);
            cb.DisplayMember = DisplayField;
            cb.ValueMember = ValueField;
        }
        private void frmBaoCaoTheoDoiHoatDong_Load(object sender, EventArgs e)
        {
            LoadDataToCombo(cbLienChi, "LienChi", "TenLienChi", "MaLienChi");
            bdChiDoan = new BindingSource();
            bdChiDoan.DataSource = AccessDatabase.GetTable("ChiDoan");
            cbChiDoan.DataSource = bdChiDoan;
            cbChiDoan.DisplayMember = "TenChiDoan";
            cbChiDoan.ValueMember = "MaChiDoan";
            bdDoanVien = new BindingSource();
            bdDoanVien.DataSource = AccessDatabase.GetTable("DoanVien");
            cbDoanVien.DataSource = bdDoanVien;
            cbDoanVien.DisplayMember = "TenDoanVien";
            cbDoanVien.ValueMember = "MaDoanVien";
            if (cbLienChi.DataSource != null)
            {
                bdChiDoan.Filter = "MaLienChi='" + cbLienChi.SelectedValue.ToString().Trim() + "'";
                if (cbChiDoan.DataSource != null)
                {
                    bdDoanVien.Filter = "MaChiDoan='" + cbChiDoan.SelectedValue.ToString().Trim() + "'";
                }
            }
        }
    }
}
