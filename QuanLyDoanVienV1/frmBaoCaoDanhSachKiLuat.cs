using CrystalDecisions.CrystalReports.Engine;
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
    public partial class frmBaoCaoDanhSachKiLuat : Form
    {
        public frmBaoCaoDanhSachKiLuat()
        {
            InitializeComponent();
        }
        DataTable tb;
        private void frmBaoCaoDanhSachKiLuat_Load(object sender, EventArgs e)
        {
            cbLienChi.DataSource = AccessDatabase.GetTable("LienChi");
            cbLienChi.DisplayMember = "TenLienChi";
            cbLienChi.ValueMember = "MaLienChi";
        }

        private void btnBC_Click(object sender, EventArgs e)
        {
            if (cbLienChi.Text == "")
            {
                MessageBox.Show("Chưa chọn liên chi", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbLienChi.Focus();
                return;
            }
            if (mtxtNamHoc.Text == "")
            {
                MessageBox.Show("Chưa nhập vào năm học", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mtxtNamHoc.Focus();
                return;
            }
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * from VWDanhSachKiLuat where year(Ngay)='" + mtxtNamHoc.Text.Trim() + "' and MaLienChi='" + cbLienChi.SelectedValue.ToString() + "'");
            frmBaoCao frm = new frmBaoCao();
            CRDanhSachKiLuat report = new CRDanhSachKiLuat();
            report.SetDataSource(tb);
            frm.crystalReportViewer1.ReportSource = report;
            frm.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
