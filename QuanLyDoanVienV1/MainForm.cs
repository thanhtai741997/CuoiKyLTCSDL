using DevExpress.XtraEditors;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace QuanLyDoanVienV1
{
    public partial class MainForm : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public static bool checkLogin = true;
        public MainForm()
        {
            InitializeComponent();
            //new LoginForm(this).Show();
        }
        public void setLienChi(bool k)
        {
            //cập nhật
            bbtnUpdateCamTinh.Enabled = true;

            bbtnKhenThuongKiLuat.Enabled = k;
            bbtnTheoDoiHoatDong.Enabled = k;

            bbtnFeeChiDoan.Enabled = k;

            bbtnUpCateChiDoan.Enabled = k;
            bbtnUpdateCanBoDoan.Enabled = k;
        }
        public void setChiDoan(bool k)
        {
            bbtnFeeDoanVien.Enabled = k;
            bbtnUpCateDoanVien.Enabled = k;
        }
        public void setDoanTruong(bool k)
        {
            rbpSystemMenu.Visible = k;

            bbtnUpdateDuBi.Enabled = k;

            bbtnKhenThuongKiLuat.Enabled = k;
            bbtnTheoDoiHoatDong.Enabled = k;

            bbtnFeeLienChi.Enabled = k;
            bbtnUpdateCanBoDoan.Enabled = k;
            
            bbtnManageUser.Enabled = k;
        }
        public void checkQuyenHan(string qh)
        {
            if (qh=="*")
            {
                setDoanTruong(true);
            }
            else if (qh == "LC")
            {
                setLienChi(true);
            }
            else
            {
                setChiDoan(true);
            }
        }
        public void setEnableAfterLogin(bool k)
        {
            //enable tab quản trị hệ thống
            bbtnChangePassword.Enabled = k;
            bbtnLogout.Enabled = k;

            bbtnLogin.Enabled = !k;

            //tab biểu mẫu
            rFormMenu.Enabled = k;
            
            //tab báo cáo
            rReportMenu.Enabled = k;
            rOtherMenu.Enabled = k;
            rCategoryMenu.Enabled = k;
            rListMenu.Enabled = k;

            //tab tìm kiếm
            rSearchMenu1.Enabled = k;
            rSearchMenu2.Enabled = k;
            rSearchMenu3.Enabled = k;

            //tab cập nhật
            rUpdateList.Enabled = k;
            rFeeManagement.Enabled = k;
            rCategory.Enabled = k;
            rWatchActivity.Enabled = k;
            rOtherManagement.Enabled = k;
        }
        private void bbtnLogin_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new LoginForm(this);
                if (existForm(form)) return;
                form.MdiParent = this;
                form.Show();
        }

        private void bbtnChangePassword_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmThayDoiThongTinDangNhap();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private bool existForm(Form form)
        {
            foreach(var child in MdiChildren)
            {
                if (child.Name==form.Name)
                {
                    child.Activate();
                    return true;
                }
            }
            return false;
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmNguoiDung();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            
        }

        private void bbtnLogout_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            setEnableAfterLogin(false);
            //tắt menu của đoàn trường
            setLienChi(false);
            setChiDoan(false);
            setDoanTruong(false);

            //thoát tất cả các form con khi đăng xuất
            Form[] formsList = Application.OpenForms.Cast<Form>().Where(x => x.Name != "MainForm").ToArray();
            foreach (Form openForm in formsList)
            {
                openForm.Close();
            }

            LoginForm frm = new LoginForm(this);
            if (existForm(frm)) return;
            frm.MdiParent = this;
            frm.Show();
        }

        private void bbtnExit_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Application.Exit();
        }

        private void bbtnPLCDHocKi_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmPhanLoaiChiDoanHocKi();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void barButtonItem1_ItemClick_1(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmThongTin();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void barButtonItem1_ItemClick_2(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmChuyenSinhHoatDoan();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnGiayTrieuTap_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmMauGiayDoanTruongTrieuTap();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void barButtonItem1_ItemClick_3(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmBaoCaoDanhSachKhenThuong();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void barButtonItem6_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmBaoCaoDanhSachKiLuat();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnXLTheoDoanVien_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmBaoCaoXepLoaiDoanVien();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnXLTheoChiDoan_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmBaoCaoXepLoaiChiDoan();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnCanBoDoan_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmBaoCaoDanhSachCanBo();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnHocTapCamTinh_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmBaoCaoDSDuBiDangVienVCamTinhDang();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnInfoSoDoan_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmBaoCaoThongTinSoDoan();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnThongKeSoDoan_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmBaoCaoQuanLiSoDoan();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTheoDoi_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmBaoCaoTheoDoiHoatDong();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTonGiao_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmDanhMucTonGiao();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnDanToc_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmDanToc();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnDanhMucLienChi_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmLienChi();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnDanhMucChiDoan_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmChiDoan();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnDanhMucChucVuDoan_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmChucVu();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTieuChiHocTap_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmTieuChiHocTap();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTieuChiRenLuyen_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmTieuChiRenLuyen();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTieuChiPhongTrao_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmTieuChiPhongTrao();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTieuChiDoanPhi_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmTieuChiDoanPhi();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnPLDVHocKi_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmPhanLoaiDVHocKi();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnPLDVCaNam_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmPLDVCaNam();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTieuChiDoanVienKha_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmTieuChiDoanVienKha();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTieuChiDoanVienYeuKem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmTieuChiDoanVienYeuKem();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnPLCDCaNam_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmPhanLoaiChiDoanCaNam();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnUpdateDoanVien_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmDoanVien();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnUpdateCamTinh_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmCamTinhDang();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnUpdateDuBi_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmDuBiDangVien();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnKhenThuongKiLuat_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmKhenThuongKyLuat();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTheoDoiHoatDong_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmTheoDoiHoatDong();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnFeeLienChi_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmQLDPLienChi();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnFeeDoanVien_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmQLDPDoanVien();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnFeeChiDoan_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmQLDPChiDoan();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnUpCateDoanVien_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmXepLoaiDoanVien();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnUpCateChiDoan_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmXepLoaiChiDoan();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnUpdateSoDoan_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmQuanLySoDoan();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnUpdateCanBoDoan_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            MessageBox.Show("Tính năng hiện đang được xây dựng.Vui lòng quay lại sau!");
        }

        private void bbtnTimKiemMaDV_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmTimKiemTheoMaDoanVien();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTimKiemTenDV_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmTimKiemTheoTen();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTimKiemTheoCD_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmTimKiemTheoChiDoan();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTimKiemTheoLC_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var form = new frmTimKiemTheoLienChi();
            if (existForm(form)) return;
            form.MdiParent = this;
            form.Show();
        }

        private void bbtnTimKiemTheoTonGiao_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }

        private void bbtnTimKiemTheoDanToc_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }
    }
}
