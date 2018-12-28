namespace QuanLyDoanVienV1.EF
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class QLDVContext : DbContext
    {
        public QLDVContext()
            : base("name=QLDVContext")
        {
        }

        public virtual DbSet<CamTinhDang> CamTinhDang { get; set; }
        public virtual DbSet<CanBo> CanBo { get; set; }
        public virtual DbSet<ChiDoan> ChiDoan { get; set; }
        public virtual DbSet<ChucVu> ChucVu { get; set; }
        public virtual DbSet<ChuyenChiDoan> ChuyenChiDoan { get; set; }
        public virtual DbSet<ChuyenSinhHoatDoan> ChuyenSinhHoatDoan { get; set; }
        public virtual DbSet<DanToc> DanToc { get; set; }
        public virtual DbSet<DoanPhi> DoanPhi { get; set; }
        public virtual DbSet<DoanVien> DoanVien { get; set; }
        public virtual DbSet<DoanVienKha> DoanVienKha { get; set; }
        public virtual DbSet<DoanVienYeuKem> DoanVienYeuKem { get; set; }
        public virtual DbSet<DonVi> DonVi { get; set; }
        public virtual DbSet<DuBi> DuBi { get; set; }
        public virtual DbSet<HocTap> HocTap { get; set; }
        public virtual DbSet<KiLuat> KiLuat { get; set; }
        public virtual DbSet<KhenThuong> KhenThuong { get; set; }
        public virtual DbSet<LienChi> LienChi { get; set; }
        public virtual DbSet<NamHoc> NamHoc { get; set; }
        public virtual DbSet<userSession> NguoiDung { get; set; }
        public virtual DbSet<PLCDCaNam> PLCDCaNam { get; set; }
        public virtual DbSet<PLCDHocKi> PLCDHocKi { get; set; }
        public virtual DbSet<PLDVCaNam> PLDVCaNam { get; set; }
        public virtual DbSet<PLDVHocKi> PLDVHocKi { get; set; }
        public virtual DbSet<PhongTrao> PhongTrao { get; set; }
        public virtual DbSet<QLDPChiDoan> QLDPChiDoan { get; set; }
        public virtual DbSet<QLDPDoanVien> QLDPDoanVien { get; set; }
        public virtual DbSet<QLDPLienChi> QLDPLienChi { get; set; }
        public virtual DbSet<QLSoDoan> QLSoDoan { get; set; }
        public virtual DbSet<RenLuyen> RenLuyen { get; set; }
        public virtual DbSet<TonGiao> TonGiao { get; set; }
        public virtual DbSet<TheoDoiHoatDong> TheoDoiHoatDong { get; set; }
        public virtual DbSet<TrinhDo> TrinhDo { get; set; }
        public virtual DbSet<XepLoaiChiDoan> XepLoaiChiDoan { get; set; }
        public virtual DbSet<XepLoaiDoanVien> XepLoaiDoanVien { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CamTinhDang>()
                .Property(e => e.MaCamTinhDang)
                .IsUnicode(false);

            modelBuilder.Entity<CamTinhDang>()
                .Property(e => e.MaDoanVien)
                .IsUnicode(false);

            modelBuilder.Entity<CanBo>()
                .Property(e => e.MaCanBo)
                .IsUnicode(false);

            modelBuilder.Entity<CanBo>()
                .Property(e => e.MaDoanVien)
                .IsUnicode(false);

            modelBuilder.Entity<CanBo>()
                .Property(e => e.MaChucVu)
                .IsUnicode(false);

            modelBuilder.Entity<CanBo>()
                .Property(e => e.MaDonVi)
                .IsUnicode(false);

            modelBuilder.Entity<ChiDoan>()
                .Property(e => e.MaLienChi)
                .IsUnicode(false);

            modelBuilder.Entity<ChiDoan>()
                .Property(e => e.MaChiDoan)
                .IsUnicode(false);

            modelBuilder.Entity<ChiDoan>()
                .Property(e => e.TrangThai)
                .IsUnicode(false);

            modelBuilder.Entity<ChucVu>()
                .Property(e => e.MaChucVu)
                .IsUnicode(false);

            modelBuilder.Entity<ChuyenChiDoan>()
                .Property(e => e.IDChuyenChiDoan)
                .IsUnicode(false);

            modelBuilder.Entity<ChuyenChiDoan>()
                .Property(e => e.MaDoanVien)
                .IsUnicode(false);

            modelBuilder.Entity<ChuyenChiDoan>()
                .Property(e => e.MaChiDoanCu)
                .IsUnicode(false);

            modelBuilder.Entity<ChuyenChiDoan>()
                .Property(e => e.MaChiDoanMoi)
                .IsUnicode(false);

            modelBuilder.Entity<ChuyenSinhHoatDoan>()
                .Property(e => e.IDChuyenSinhHoat)
                .IsUnicode(false);

            modelBuilder.Entity<ChuyenSinhHoatDoan>()
                .Property(e => e.MaDoanVien)
                .IsUnicode(false);

            modelBuilder.Entity<DanToc>()
                .Property(e => e.MaDanToc)
                .IsUnicode(false);

            modelBuilder.Entity<DoanPhi>()
                .Property(e => e.IDDoanPhi)
                .IsUnicode(false);

            modelBuilder.Entity<DoanVien>()
                .Property(e => e.MaDoanVien)
                .IsUnicode(false);

            modelBuilder.Entity<DoanVien>()
                .Property(e => e.MaDanToc)
                .IsUnicode(false);

            modelBuilder.Entity<DoanVien>()
                .Property(e => e.MaTonGiao)
                .IsUnicode(false);

            modelBuilder.Entity<DoanVien>()
                .Property(e => e.MaTrinhDo)
                .IsUnicode(false);

            modelBuilder.Entity<DoanVien>()
                .Property(e => e.MaChucVu)
                .IsUnicode(false);

            modelBuilder.Entity<DoanVien>()
                .Property(e => e.TrangThai)
                .IsUnicode(false);

            modelBuilder.Entity<DonVi>()
                .Property(e => e.MaDonVi)
                .IsUnicode(false);

            modelBuilder.Entity<DuBi>()
                .Property(e => e.MaDuBi)
                .IsUnicode(false);

            modelBuilder.Entity<DuBi>()
                .Property(e => e.MaDoanVien)
                .IsUnicode(false);

            modelBuilder.Entity<HocTap>()
                .Property(e => e.IDHocTap)
                .IsUnicode(false);

            modelBuilder.Entity<KiLuat>()
                .Property(e => e.MaKiLuat)
                .IsUnicode(false);

            modelBuilder.Entity<KiLuat>()
                .Property(e => e.MaDoanVien)
                .IsUnicode(false);

            modelBuilder.Entity<KhenThuong>()
                .Property(e => e.MaKhenThuong)
                .IsUnicode(false);

            modelBuilder.Entity<KhenThuong>()
                .Property(e => e.MaDoanVien)
                .IsUnicode(false);

            modelBuilder.Entity<LienChi>()
                .Property(e => e.MaLienChi)
                .IsUnicode(false);

            modelBuilder.Entity<NamHoc>()
                .Property(e => e.MaNamHoc)
                .IsUnicode(false);

            modelBuilder.Entity<userSession>()
                .Property(e => e.MaNguoiDung)
                .IsUnicode(false);

            modelBuilder.Entity<userSession>()
                .Property(e => e.QuyenHan)
                .IsUnicode(false);

            modelBuilder.Entity<PLCDCaNam>()
                .Property(e => e.IDPLCDCaNam)
                .IsUnicode(false);

            modelBuilder.Entity<PLCDHocKi>()
                .Property(e => e.IDPLCDHocKi)
                .IsUnicode(false);

            modelBuilder.Entity<PLDVCaNam>()
                .Property(e => e.IDPLDVCaNam)
                .IsUnicode(false);

            modelBuilder.Entity<PLDVHocKi>()
                .Property(e => e.IDPLDVHocKi)
                .IsUnicode(false);

            modelBuilder.Entity<PLDVHocKi>()
                .Property(e => e.IDHocTap)
                .IsUnicode(false);

            modelBuilder.Entity<PLDVHocKi>()
                .Property(e => e.IDRenLuyen)
                .IsUnicode(false);

            modelBuilder.Entity<PLDVHocKi>()
                .Property(e => e.IDPhongTrao)
                .IsUnicode(false);

            modelBuilder.Entity<PLDVHocKi>()
                .Property(e => e.IDDoanPhi)
                .IsUnicode(false);

            modelBuilder.Entity<PhongTrao>()
                .Property(e => e.IDPhongTrao)
                .IsUnicode(false);

            modelBuilder.Entity<QLDPChiDoan>()
                .Property(e => e.MaQLDPChiDoan)
                .IsUnicode(false);

            modelBuilder.Entity<QLDPChiDoan>()
                .Property(e => e.MaChiDoan)
                .IsUnicode(false);

            modelBuilder.Entity<QLDPChiDoan>()
                .Property(e => e.SoTienNop)
                .HasPrecision(18, 0);

            modelBuilder.Entity<QLDPChiDoan>()
                .Property(e => e.SoTienThieu)
                .HasPrecision(18, 0);

            modelBuilder.Entity<QLDPDoanVien>()
                .Property(e => e.IDQLDPDoanVien)
                .IsUnicode(false);

            modelBuilder.Entity<QLDPDoanVien>()
                .Property(e => e.MaDoanVien)
                .IsUnicode(false);

            modelBuilder.Entity<QLDPDoanVien>()
                .Property(e => e.SoTienNop)
                .HasPrecision(18, 0);

            modelBuilder.Entity<QLDPDoanVien>()
                .Property(e => e.SoTienThieu)
                .HasPrecision(18, 0);

            modelBuilder.Entity<QLDPLienChi>()
                .Property(e => e.IDQLDPLienChi)
                .IsUnicode(false);

            modelBuilder.Entity<QLDPLienChi>()
                .Property(e => e.MaLienChi)
                .IsUnicode(false);

            modelBuilder.Entity<QLDPLienChi>()
                .Property(e => e.SoTienNop)
                .HasPrecision(18, 0);

            modelBuilder.Entity<QLDPLienChi>()
                .Property(e => e.SoTienThieu)
                .HasPrecision(18, 0);

            modelBuilder.Entity<QLSoDoan>()
                .Property(e => e.MaQLSoDoan)
                .IsUnicode(false);

            modelBuilder.Entity<QLSoDoan>()
                .Property(e => e.MaChiDoan)
                .IsUnicode(false);

            modelBuilder.Entity<RenLuyen>()
                .Property(e => e.IDRenLuyen)
                .IsUnicode(false);

            modelBuilder.Entity<TonGiao>()
                .Property(e => e.MaTonGiao)
                .IsUnicode(false);

            modelBuilder.Entity<TheoDoiHoatDong>()
                .Property(e => e.IDTheoDoi)
                .IsUnicode(false);

            modelBuilder.Entity<TheoDoiHoatDong>()
                .Property(e => e.MaDoanVien)
                .IsUnicode(false);

            modelBuilder.Entity<TrinhDo>()
                .Property(e => e.MaTrinhDo)
                .IsUnicode(false);

            modelBuilder.Entity<XepLoaiChiDoan>()
                .Property(e => e.IDXepLoaiChiDoan)
                .IsUnicode(false);

            modelBuilder.Entity<XepLoaiChiDoan>()
                .Property(e => e.MaChiDoan)
                .IsUnicode(false);

            modelBuilder.Entity<XepLoaiDoanVien>()
                .Property(e => e.IDXepLoaiDoanVien)
                .IsUnicode(false);

            modelBuilder.Entity<XepLoaiDoanVien>()
                .Property(e => e.MaDoanVien)
                .IsUnicode(false);
        }
    }
}
