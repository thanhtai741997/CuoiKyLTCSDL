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
    public partial class frmBaoCaoDanhSachKhenThuong : Form
    {
        public frmBaoCaoDanhSachKhenThuong()
        {
            InitializeComponent();
        }
        DataTable tb;
        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void mtxtNamHoc_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void cbLienChi_SelectedIndexChanged(object sender, EventArgs e)
        {

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
            tb = AccessDatabase.ExecuteQuery("Select * from VWDanhSachKhenThuong where Year(Ngay) = '" + mtxtNamHoc.Text.Trim() + "' and MaLienChi = '" + cbLienChi.SelectedValue.ToString() + "'");
            frmBaoCao frm = new frmBaoCao();
            CRDanhSachKhenThuong report = new CRDanhSachKhenThuong();
            report.SetDataSource(tb);
            frm.crystalReportViewer1.ReportSource = report;
            frm.ShowDialog();
        }

        private void frmBaoCaoDanhSachKhenThuong_Load(object sender, EventArgs e)
        {
            cbLienChi.DataSource = AccessDatabase.GetTable("LienChi");
            cbLienChi.DisplayMember = "TenLienChi";
            cbLienChi.ValueMember = "MaLienChi";
        }
    }
}
