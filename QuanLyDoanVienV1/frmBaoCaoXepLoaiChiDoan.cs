using System;
using System.Data;
using System.Windows.Forms;

namespace QuanLyDoanVienV1
{
    public partial class frmBaoCaoXepLoaiChiDoan : Form
    {
        public frmBaoCaoXepLoaiChiDoan()
        {
            InitializeComponent();
        }
        DataTable tb;
        private void btnBaoCaoCaNam_Click(object sender, EventArgs e)
        {
            //Lỗi chưa chọn tên Liên chi
            if (cbLienChi.Text == "")
            {
                MessageBox.Show("Chưa chọn Liên chi", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cbLienChi.Focus();
                return;
            }
            if (mtxtNamHoc.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập năm học", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mtxtNamHoc.Focus();
                return;
            }
            tb = new DataTable();
            tb = AccessDatabase.ExecuteQuery("Select * from VWXepLoaiChiDoan where NamHoc='" + mtxtNamHoc.Text.Trim() + "' and MaLienChi='" + cbLienChi.SelectedValue.ToString() + "'");
            frmBaoCao frm = new frmBaoCao();
            CRXepLoaiChiDoan report = new CRXepLoaiChiDoan();
            report.SetDataSource(tb);
            frm.crystalReportViewer1.ReportSource = report;
            frm.ShowDialog();
        }

        private void frmBaoCaoXepLoaiChiDoan_Load(object sender, EventArgs e)
        {
            cbLienChi.DataSource = AccessDatabase.GetTable("LienChi");
            cbLienChi.DisplayMember = "TenLienChi";
            cbLienChi.ValueMember = "MaLienChi";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
