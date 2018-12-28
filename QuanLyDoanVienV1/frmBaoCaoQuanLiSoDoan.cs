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
    public partial class frmBaoCaoQuanLiSoDoan : Form
    {
        public frmBaoCaoQuanLiSoDoan()
        {
            InitializeComponent();
        }
        DataTable tb;
        private void frmBaoCaoQuanLiSoDoan_Load(object sender, EventArgs e)
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
            tb = AccessDatabase.ExecuteQuery("Select * from VWQuanLiSoDoan where year(NgayNhan)='" + mtxtNamHoc.Text.Trim() + "' and MaLienChi='" + cbLienChi.SelectedValue.ToString() + "'");
            frmBaoCao frm = new frmBaoCao();
            CRQuanLySoDoan report = new CRQuanLySoDoan();
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
