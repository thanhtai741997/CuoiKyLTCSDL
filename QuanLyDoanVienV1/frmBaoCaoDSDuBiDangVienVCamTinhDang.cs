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
    public partial class frmBaoCaoDSDuBiDangVienVCamTinhDang : Form
    {
        public frmBaoCaoDSDuBiDangVienVCamTinhDang()
        {
            InitializeComponent();
        }
        DataTable tb;
        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void cbLienChi_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnCamTinhDang_Click(object sender, EventArgs e)
        {
            if (cbLienChi.Text == "")
            {
                MessageBox.Show("Chưa chọn liên chi", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbLienChi.Focus();
                return;
            }
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * from VWDanhSachHocCamTinhDang where  MaLienChi='" + cbLienChi.SelectedValue.ToString() + "'");
            frmBaoCao frm = new frmBaoCao();
            CRCamTinhDang report = new CRCamTinhDang();
            report.SetDataSource(tb);
            frm.crystalReportViewer1.ReportSource = report;
            frm.ShowDialog();
        }

        private void btnDuBi_Click(object sender, EventArgs e)
        {
            if (cbLienChi.Text == "")
            {
                MessageBox.Show("Chưa chọn liên chi", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbLienChi.Focus();
                return;
            }
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * from VWDanhSachDuBiDangVien where  MaLienChi='" + cbLienChi.SelectedValue.ToString() + "'");
            frmBaoCao frm = new frmBaoCao();
            CRDuBiDangVien report = new CRDuBiDangVien();
            report.SetDataSource(tb);
            frm.crystalReportViewer1.ReportSource = report;
            frm.ShowDialog();
        }

        private void frmBaoCaoDSDuBiDangVienVCamTinhDang_Load(object sender, EventArgs e)
        {
            cbLienChi.DataSource = AccessDatabase.GetTable("LienChi");
            cbLienChi.DisplayMember = "TenLienChi";
            cbLienChi.ValueMember = "MaLienChi";
        }
    }
}
