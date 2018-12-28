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
    public partial class frmMauGiayDoanTruongTrieuTap : Form
    {
        public frmMauGiayDoanTruongTrieuTap()
        {
            InitializeComponent();
        }

        private void frmMauGiayDoanTruongTrieuTap_Load(object sender, EventArgs e)
        {

        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnIn_Click(object sender, EventArgs e)
        {
            if (txtNoiTrieuTap.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập nơi gửi giấy triệu tập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtNoiTrieuTap.Focus();
                return;
            }
            if (txtDoiTuong.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập đối tượng triệu tập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtDoiTuong.Focus();
                return;
            }
            if (txtTenBuoiTrieuTap.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập tên buổi triệu tập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtTenBuoiTrieuTap.Focus();
                return;
            }
            if (txtLoaiBuoiTrieuTap.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập loại buổi triệu tập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtLoaiBuoiTrieuTap.Focus();
                return;
            }
            if (mtxtGio.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập thời gian buổi triệu tập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mtxtGio.Focus();
                return;
            }
            if (txtDiaDiem.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập địa điểm triệu tập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtDiaDiem.Focus();
                return;
            }
            if (txtNoiDung.Text == "")
            {
                MessageBox.Show("Bạn chưa nhập nội dung buổi triệu tập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtNoiDung.Focus();
                return;
            }
            frmBaoCao frm = new frmBaoCao();
            CRGiayTrieuTapCuaDoanTruong rpt = new CRGiayTrieuTapCuaDoanTruong();
            ((TextObject)rpt.Section2.ReportObjects["NoiGuiGiay"]).Text = txtNoiTrieuTap.Text;
            ((TextObject)rpt.Section2.ReportObjects["DoiTuongTrieuTap"]).Text = txtDoiTuong.Text;
            ((TextObject)rpt.Section2.ReportObjects["TenBuoiHop"]).Text = txtTenBuoiTrieuTap.Text;
            ((TextObject)rpt.Section2.ReportObjects["DiaDiem"]).Text = txtDiaDiem.Text;
            ((TextObject)rpt.Section2.ReportObjects["NoiDung"]).Text = txtNoiDung.Text;
            ((TextObject)rpt.Section2.ReportObjects["Loai"]).Text = txtLoaiBuoiTrieuTap.Text;
            ((TextObject)rpt.Section2.ReportObjects["Gio"]).Text = mtxtGio.Text;
            ((TextObject)rpt.Section2.ReportObjects["Ngay"]).Text = dateTimePicker2.Text;
            frm.crystalReportViewer1.ReportSource = rpt;
            frm.ShowDialog();
        }
    }
}
