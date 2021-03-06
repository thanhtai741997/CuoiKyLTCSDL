USE [master]
GO
/****** Object:  Database [QuanLyDoanVien]    Script Date: 28/12/2018 11:43:31 SA ******/
CREATE DATABASE [QuanLyDoanVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyDoanVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QuanLyDoanVien.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyDoanVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QuanLyDoanVien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyDoanVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyDoanVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyDoanVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyDoanVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyDoanVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyDoanVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyDoanVien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyDoanVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyDoanVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyDoanVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyDoanVien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyDoanVien', N'ON'
GO
USE [QuanLyDoanVien]
GO
/****** Object:  Table [dbo].[CamTinhDang]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CamTinhDang](
	[MaCamTinhDang] [varchar](10) NOT NULL,
	[MaDoanVien] [varchar](10) NOT NULL,
	[NgayCap] [datetime] NULL,
 CONSTRAINT [PK_CamTinhDang_1] PRIMARY KEY CLUSTERED 
(
	[MaCamTinhDang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CanBo]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanBo](
	[MaCanBo] [varchar](10) NOT NULL,
	[MaDoanVien] [varchar](10) NOT NULL,
	[MaChucVu] [varchar](10) NOT NULL,
	[MaDonVi] [varchar](10) NOT NULL,
 CONSTRAINT [PK_CanBo] PRIMARY KEY CLUSTERED 
(
	[MaCanBo] ASC,
	[MaDoanVien] ASC,
	[MaChucVu] ASC,
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiDoan](
	[MaChiDoan] [varchar](10) NOT NULL,
	[MaLienChi] [varchar](10) NOT NULL,
	[TenChiDoan] [nvarchar](255) NULL,
	[TrangThai] [varchar](5) NULL,
 CONSTRAINT [PK_ChiDoan_1] PRIMARY KEY CLUSTERED 
(
	[MaChiDoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [varchar](10) NOT NULL,
	[TenChucVu] [nvarchar](255) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenChiDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenChiDoan](
	[IDChuyenChiDoan] [varchar](10) NOT NULL,
	[MaDoanVien] [varchar](10) NOT NULL,
	[MaChiDoanCu] [varchar](10) NULL,
	[MaChiDoanMoi] [varchar](10) NULL,
	[NgayChuyen] [datetime] NULL,
	[LiDoChuyen] [nvarchar](255) NULL,
 CONSTRAINT [PK_ChuyenChiDoan] PRIMARY KEY CLUSTERED 
(
	[IDChuyenChiDoan] ASC,
	[MaDoanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenSinhHoatDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenSinhHoatDoan](
	[IDChuyenSinhHoat] [varchar](20) NOT NULL,
	[MaDoanVien] [varchar](10) NOT NULL,
	[NgayChuyen] [datetime] NULL,
	[NoiChuyenDen] [nvarchar](255) NULL,
	[LiDoChuyen] [nvarchar](255) NULL,
 CONSTRAINT [PK_ChuyenSinhHoatDoan] PRIMARY KEY CLUSTERED 
(
	[IDChuyenSinhHoat] ASC,
	[MaDoanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanToc]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanToc](
	[MaDanToc] [varchar](10) NOT NULL,
	[TenDanToc] [nvarchar](255) NULL,
 CONSTRAINT [PK_DanToc] PRIMARY KEY CLUSTERED 
(
	[MaDanToc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanPhi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanPhi](
	[IDDoanPhi] [varchar](5) NOT NULL,
	[MoTaDoanPhi] [nvarchar](255) NULL,
 CONSTRAINT [PK_DoanPhi] PRIMARY KEY CLUSTERED 
(
	[IDDoanPhi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanVien](
	[MaDoanVien] [nvarchar](255) NOT NULL,
	[TenDoanVien] [nvarchar](255) NULL,
	[MaChiDoan] [nvarchar](255) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[MaDanToc] [nvarchar](10) NULL,
	[MaTonGiao] [nvarchar](10) NULL,
	[MaTinhThanh] [nvarchar](10) NULL,
	[MaQuanHuyen] [nvarchar](10) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[TrinhDo] [nvarchar](10) NULL,
	[NgayVaoDoan] [datetime] NULL,
	[MaChucVu] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
	[TrangThai] [varchar](5) NULL,
 CONSTRAINT [PK_DoanVien] PRIMARY KEY CLUSTERED 
(
	[MaDoanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanVienKha]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanVienKha](
	[IDDoanVienKha] [nvarchar](255) NOT NULL,
	[MoTaDoanVienKha] [nvarchar](255) NULL,
 CONSTRAINT [PK_DoanVienKha] PRIMARY KEY CLUSTERED 
(
	[IDDoanVienKha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanVienYeuKem]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanVienYeuKem](
	[IDDoanVienYeuKem] [nvarchar](255) NOT NULL,
	[MoTaDoanVienYeuKem] [nvarchar](255) NULL,
 CONSTRAINT [PK_DoanVienYeuKem] PRIMARY KEY CLUSTERED 
(
	[IDDoanVienYeuKem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[MaDonVi] [varchar](10) NOT NULL,
	[TenDonVi] [nvarchar](255) NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DuBi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuBi](
	[MaDuBi] [varchar](10) NOT NULL,
	[MaDoanVien] [varchar](10) NOT NULL,
	[LiDo] [nvarchar](255) NULL,
 CONSTRAINT [PK_DuBi] PRIMARY KEY CLUSTERED 
(
	[MaDuBi] ASC,
	[MaDoanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocTap]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocTap](
	[IDHocTap] [varchar](5) NOT NULL,
	[MoTaHocTap] [nvarchar](255) NULL,
 CONSTRAINT [PK_HocTap] PRIMARY KEY CLUSTERED 
(
	[IDHocTap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhenThuong]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhenThuong](
	[MaKhenThuong] [varchar](10) NOT NULL,
	[MaDoanVien] [varchar](10) NOT NULL,
	[Ngay] [datetime] NULL,
	[LiDo] [nvarchar](255) NULL,
	[HinhThuc] [nvarchar](255) NULL,
 CONSTRAINT [PK_KhenThuong] PRIMARY KEY CLUSTERED 
(
	[MaKhenThuong] ASC,
	[MaDoanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KiLuat]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KiLuat](
	[MaKiLuat] [varchar](10) NOT NULL,
	[MaDoanVien] [varchar](10) NOT NULL,
	[Ngay] [datetime] NULL,
	[LiDo] [nvarchar](255) NULL,
	[HinhThuc] [nvarchar](255) NULL,
 CONSTRAINT [PK_KiLuat] PRIMARY KEY CLUSTERED 
(
	[MaKiLuat] ASC,
	[MaDoanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LienChi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienChi](
	[MaLienChi] [varchar](10) NOT NULL,
	[TenLienChi] [nvarchar](255) NULL,
 CONSTRAINT [PK_LienChi_1] PRIMARY KEY CLUSTERED 
(
	[MaLienChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NamHoc]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NamHoc](
	[MaNamHoc] [varchar](10) NOT NULL,
	[TenNamHoc] [nvarchar](255) NULL,
 CONSTRAINT [PK_NamHoc] PRIMARY KEY CLUSTERED 
(
	[MaNamHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [varchar](10) NOT NULL,
	[TenDangNhap] [nvarchar](255) NOT NULL,
	[MatKhau] [nvarchar](max) NULL,
	[QuyenHan] [varchar](50) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongTrao]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongTrao](
	[IDPhongTrao] [varchar](10) NOT NULL,
	[MoTaPhongTrao] [nvarchar](255) NULL,
 CONSTRAINT [PK_PhongTrao] PRIMARY KEY CLUSTERED 
(
	[IDPhongTrao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLCDCaNam]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLCDCaNam](
	[IDPLCDCaNam] [varchar](20) NOT NULL,
	[PhanLoaiKiI] [nvarchar](255) NULL,
	[PhanLoaiKiII] [nvarchar](255) NULL,
	[PhanLoaiCaNam] [nvarchar](255) NULL,
 CONSTRAINT [PK_PLCDCaNam] PRIMARY KEY CLUSTERED 
(
	[IDPLCDCaNam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLCDHocKi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLCDHocKi](
	[IDPLCDHocKi] [varchar](20) NOT NULL,
	[IDDoanVienKha] [nvarchar](255) NULL,
	[IDDoanVienYeuKem] [nvarchar](255) NULL,
	[XepLoai] [nvarchar](255) NULL,
 CONSTRAINT [PK_PLCDHocKi] PRIMARY KEY CLUSTERED 
(
	[IDPLCDHocKi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLDVCaNam]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLDVCaNam](
	[IDPLDVCaNam] [varchar](20) NOT NULL,
	[PhanLoaiKiI] [nvarchar](255) NULL,
	[PhanLoaiKiII] [nvarchar](255) NULL,
	[PhanLoaiCaNam] [nvarchar](255) NULL,
 CONSTRAINT [PK_PLDVCaNam] PRIMARY KEY CLUSTERED 
(
	[IDPLDVCaNam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLDVHocKi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLDVHocKi](
	[IDPLDVHocKi] [varchar](20) NOT NULL,
	[IDHocTap] [varchar](10) NOT NULL,
	[IDRenLuyen] [varchar](10) NOT NULL,
	[IDPhongTrao] [varchar](10) NOT NULL,
	[IDDoanPhi] [varchar](10) NOT NULL,
	[XepLoai] [nvarchar](255) NULL,
 CONSTRAINT [PK_PLDVHocKi] PRIMARY KEY CLUSTERED 
(
	[IDPLDVHocKi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QLDPChiDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QLDPChiDoan](
	[MaQLDPChiDoan] [varchar](10) NOT NULL,
	[MaChiDoan] [varchar](10) NOT NULL,
	[SoTienNop] [decimal](18, 0) NULL,
	[SoTienThieu] [decimal](18, 0) NULL,
	[NamHoc] [bigint] NULL,
	[NguoiNop] [nvarchar](255) NULL,
	[NguoiNhan] [nvarchar](255) NULL,
 CONSTRAINT [PK_QLDPChiDoan] PRIMARY KEY CLUSTERED 
(
	[MaQLDPChiDoan] ASC,
	[MaChiDoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QLDPDoanVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QLDPDoanVien](
	[IDQLDPDoanVien] [varchar](10) NOT NULL,
	[MaDoanVien] [varchar](10) NOT NULL,
	[SoTienNop] [decimal](18, 0) NULL,
	[SoTienThieu] [decimal](18, 0) NULL,
	[NamHoc] [bigint] NULL,
	[NguoiNhan] [nvarchar](255) NULL,
 CONSTRAINT [PK_QLDPDoanVien] PRIMARY KEY CLUSTERED 
(
	[IDQLDPDoanVien] ASC,
	[MaDoanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QLDPLienChi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QLDPLienChi](
	[IDQLDPLienChi] [varchar](10) NOT NULL,
	[MaLienChi] [varchar](10) NOT NULL,
	[SoTienNop] [decimal](18, 0) NULL,
	[SoTienThieu] [decimal](18, 0) NULL,
	[NamHoc] [bigint] NULL,
	[NguoiNop] [nvarchar](255) NULL,
	[NguoiNhan] [nvarchar](255) NULL,
 CONSTRAINT [PK_QLDPLienChi] PRIMARY KEY CLUSTERED 
(
	[IDQLDPLienChi] ASC,
	[MaLienChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QLSoDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QLSoDoan](
	[MaQLSoDoan] [varchar](10) NOT NULL,
	[MaChiDoan] [varchar](10) NOT NULL,
	[SoLuong] [nvarchar](255) NULL,
	[NgayNhan] [datetime] NULL,
	[NgayTra] [datetime] NULL,
	[NguoiGiao] [nvarchar](255) NULL,
	[NguoiNhan] [nvarchar](255) NULL,
 CONSTRAINT [PK_QLSoDoan] PRIMARY KEY CLUSTERED 
(
	[MaQLSoDoan] ASC,
	[MaChiDoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanHuyen]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanHuyen](
	[MaQuanHuyen] [nvarchar](255) NULL,
	[MaTinhThanh] [nvarchar](255) NULL,
	[TenQuanHuyen] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RenLuyen]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RenLuyen](
	[IDRenLuyen] [varchar](10) NOT NULL,
	[MoTaRenLuyen] [nvarchar](255) NULL,
 CONSTRAINT [PK_RenLuyen] PRIMARY KEY CLUSTERED 
(
	[IDRenLuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheoDoiHoatDong]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheoDoiHoatDong](
	[IDTheoDoi] [varchar](10) NOT NULL,
	[MaDoanVien] [varchar](10) NOT NULL,
	[HoatDongThamGia] [nvarchar](255) NULL,
	[Ngay] [datetime] NULL,
	[DanhGia] [nvarchar](255) NULL,
 CONSTRAINT [PK_TheoDoiHoatDong] PRIMARY KEY CLUSTERED 
(
	[IDTheoDoi] ASC,
	[MaDoanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhThanh](
	[MaTinhThanh] [nvarchar](255) NULL,
	[TenTinhThanh] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TonGiao]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TonGiao](
	[MaTonGiao] [varchar](10) NOT NULL,
	[TenTonGiao] [nvarchar](255) NULL,
 CONSTRAINT [PK_TonGiao] PRIMARY KEY CLUSTERED 
(
	[MaTonGiao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrinhDo]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDo](
	[MaTrinhDo] [varchar](10) NOT NULL,
	[MoTaTrinhDo] [nvarchar](255) NULL,
 CONSTRAINT [PK_TrinhDo] PRIMARY KEY CLUSTERED 
(
	[MaTrinhDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XepLoaiChiDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XepLoaiChiDoan](
	[IDXepLoaiChiDoan] [varchar](10) NOT NULL,
	[MaChiDoan] [varchar](10) NOT NULL,
	[NamHoc] [bigint] NULL,
	[XepLoaiKiI] [nvarchar](255) NULL,
	[XepLoaiKiII] [nvarchar](255) NULL,
	[XepLoaiCaNam] [nvarchar](255) NULL,
 CONSTRAINT [PK_XepLoaiChiDoan] PRIMARY KEY CLUSTERED 
(
	[IDXepLoaiChiDoan] ASC,
	[MaChiDoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XepLoaiDoanVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XepLoaiDoanVien](
	[IDXepLoaiDoanVien] [varchar](10) NOT NULL,
	[MaDoanVien] [varchar](10) NOT NULL,
	[NamHoc] [bigint] NULL,
	[PLDVKiI] [nvarchar](255) NULL,
	[PLDVKiII] [nvarchar](255) NULL,
	[PLDVCaNam] [nvarchar](255) NULL,
 CONSTRAINT [PK_XepLoaiDoanVien] PRIMARY KEY CLUSTERED 
(
	[IDXepLoaiDoanVien] ASC,
	[MaDoanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VWDanhSachCanBo]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VWDanhSachCanBo]
AS
SELECT     dbo.LienChi.MaLienChi, dbo.LienChi.TenLienChi, dbo.ChiDoan.MaChiDoan, dbo.ChiDoan.TenChiDoan, dbo.DoanVien.TenDoanVien, 
                      dbo.ChucVu.TenChucVu, dbo.DonVi.TenDonVi, dbo.DoanVien.MaDoanVien, dbo.DoanVien.NgaySinh
FROM         dbo.CanBo INNER JOIN
                      dbo.DoanVien ON dbo.CanBo.MaDoanVien = dbo.DoanVien.MaDoanVien INNER JOIN
                      dbo.ChiDoan ON dbo.DoanVien.MaChiDoan = dbo.ChiDoan.MaChiDoan INNER JOIN
                      dbo.LienChi ON dbo.ChiDoan.MaLienChi = dbo.LienChi.MaLienChi INNER JOIN
                      dbo.ChucVu ON dbo.CanBo.MaChucVu = dbo.ChucVu.MaChucVu INNER JOIN
                      dbo.DonVi ON dbo.CanBo.MaDonVi = dbo.DonVi.MaDonVi

GO
/****** Object:  View [dbo].[VWDanhSachDuBiDangVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VWDanhSachDuBiDangVien]
AS
SELECT     dbo.LienChi.MaLienChi, dbo.LienChi.TenLienChi, dbo.ChiDoan.MaChiDoan, dbo.ChiDoan.TenChiDoan, dbo.DoanVien.MaDoanVien, 
                      dbo.DoanVien.TenDoanVien, dbo.DuBi.LiDo
FROM         dbo.ChiDoan INNER JOIN
                      dbo.DoanVien ON dbo.ChiDoan.MaChiDoan = dbo.DoanVien.MaChiDoan INNER JOIN
                      dbo.DuBi ON dbo.DoanVien.MaDoanVien = dbo.DuBi.MaDoanVien INNER JOIN
                      dbo.LienChi ON dbo.ChiDoan.MaLienChi = dbo.LienChi.MaLienChi

GO
/****** Object:  View [dbo].[VWDanhSachHocCamTinhDang]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VWDanhSachHocCamTinhDang]
AS
SELECT     dbo.LienChi.MaLienChi, dbo.LienChi.TenLienChi, dbo.ChiDoan.MaChiDoan, dbo.ChiDoan.TenChiDoan, dbo.DoanVien.MaDoanVien, 
                      dbo.DoanVien.TenDoanVien, dbo.CamTinhDang.NgayCap
FROM         dbo.CamTinhDang INNER JOIN
                      dbo.DoanVien ON dbo.CamTinhDang.MaDoanVien = dbo.DoanVien.MaDoanVien INNER JOIN
                      dbo.ChiDoan ON dbo.DoanVien.MaChiDoan = dbo.ChiDoan.MaChiDoan INNER JOIN
                      dbo.LienChi ON dbo.ChiDoan.MaLienChi = dbo.LienChi.MaLienChi

GO
/****** Object:  View [dbo].[VWDanhSachKhenThuong]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[VWDanhSachKhenThuong] AS
select LC.MaLienChi,LC.TenLienChi,CD.MaChiDoan,CD.TenChiDoan,DV.MaDoanVien,DV.TenDoanVien,Ngay,LiDo, HinhThuc
from KhenThuong KT left join DoanVien DV on (DV.MaDoanVien=kt.MaDoanVien)
	left join ChiDoan CD on (CD.MaChiDoan=DV.MaChiDoan) left join LienChi LC on (LC.MaLienChi=CD.MaLienChi)
GO
/****** Object:  View [dbo].[VWDanhSachKiLuat]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[VWDanhSachKiLuat] AS
select LC.MaLienChi,LC.TenLienChi,CD.MaChiDoan,CD.TenChiDoan,DV.MaDoanVien,DV.TenDoanVien,Ngay,LiDo, HinhThuc
from KiLuat KL left join DoanVien DV on (DV.MaDoanVien=KL.MaDoanVien)
	left join ChiDoan CD on (CD.MaChiDoan=DV.MaChiDoan) left join LienChi LC on (LC.MaLienChi=CD.MaLienChi)
GO
/****** Object:  View [dbo].[VWDoanPhiDoanVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VWDoanPhiDoanVien] AS
select dv.MaDoanVien, dv.TenDoanVien,NamHoc, dp.SoTienNop,dp.SoTienThieu, CD.TenChiDoan, LC.TenLienChi
from QLDPDoanVien DP join DoanVien DV on (dv.MaDoanVien=dp.MaDoanVien) join ChiDoan CD on (DV.MaChiDoan=CD.MaChiDoan) join LienChi LC on LC.MaLienChi=CD.MaLienChi
GO
/****** Object:  View [dbo].[VWQuanLiSoDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VWQuanLiSoDoan]
AS
SELECT     TOP 100 PERCENT dbo.LienChi.MaLienChi, dbo.LienChi.TenLienChi, dbo.ChiDoan.MaChiDoan, dbo.ChiDoan.TenChiDoan, dbo.QLSoDoan.SoLuong, 
                      dbo.QLSoDoan.NgayNhan, dbo.QLSoDoan.NgayTra, dbo.QLSoDoan.NguoiGiao, dbo.QLSoDoan.NguoiNhan
FROM         dbo.QLSoDoan INNER JOIN
                      dbo.ChiDoan ON dbo.QLSoDoan.MaChiDoan = dbo.ChiDoan.MaChiDoan INNER JOIN
                      dbo.LienChi ON dbo.ChiDoan.MaLienChi = dbo.LienChi.MaLienChi

GO
/****** Object:  View [dbo].[VWTheoDoiHoatDong]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VWTheoDoiHoatDong]
AS
SELECT     dbo.DoanVien.MaDoanVien, dbo.DoanVien.TenDoanVien, dbo.ChiDoan.MaChiDoan, dbo.ChiDoan.TenChiDoan, dbo.LienChi.MaLienChi, 
                      dbo.LienChi.TenLienChi, dbo.TheoDoiHoatDong.HoatDongThamGia, dbo.TheoDoiHoatDong.Ngay, dbo.TheoDoiHoatDong.DanhGia
FROM         dbo.DoanVien INNER JOIN
                      dbo.TheoDoiHoatDong ON dbo.DoanVien.MaDoanVien = dbo.TheoDoiHoatDong.MaDoanVien INNER JOIN
                      dbo.ChiDoan ON dbo.DoanVien.MaChiDoan = dbo.ChiDoan.MaChiDoan INNER JOIN
                      dbo.LienChi ON dbo.ChiDoan.MaLienChi = dbo.LienChi.MaLienChi

GO
/****** Object:  View [dbo].[VWThongTinDoanVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VWThongTinDoanVien]
AS
SELECT     dbo.LienChi.MaLienChi, dbo.LienChi.TenLienChi, dbo.ChiDoan.MaChiDoan, dbo.ChiDoan.TenChiDoan, dbo.DoanVien.MaDoanVien, 
                      dbo.DoanVien.TenDoanVien, dbo.DoanVien.NgaySinh, dbo.DoanVien.GioiTinh, dbo.DanToc.TenDanToc, dbo.TonGiao.TenTonGiao, 
                      dbo.QuanHuyen.TenQuanHuyen, dbo.TinhThanh.TenTinhThanh, dbo.DoanVien.TrinhDo, dbo.DoanVien.NgayVaoDoan, dbo.ChucVu.TenChucVu, 
                      dbo.DoanVien.GhiChu, dbo.DoanVien.TrangThai
FROM         dbo.DoanVien INNER JOIN
                      dbo.ChucVu ON dbo.DoanVien.MaChucVu = dbo.ChucVu.MaChucVu INNER JOIN
                      dbo.DanToc ON dbo.DoanVien.MaDanToc = dbo.DanToc.MaDanToc INNER JOIN
                      dbo.TinhThanh ON dbo.DoanVien.MaTinhThanh = dbo.TinhThanh.MaTinhThanh INNER JOIN
                      dbo.TonGiao ON dbo.DoanVien.MaTonGiao = dbo.TonGiao.MaTonGiao INNER JOIN
                      dbo.QuanHuyen ON dbo.DoanVien.MaQuanHuyen = dbo.QuanHuyen.MaQuanHuyen INNER JOIN
                      dbo.ChiDoan ON dbo.DoanVien.MaChiDoan = dbo.ChiDoan.MaChiDoan INNER JOIN
                      dbo.LienChi ON dbo.ChiDoan.MaLienChi = dbo.LienChi.MaLienChi

GO
/****** Object:  View [dbo].[VWThongTinSoDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VWThongTinSoDoan]
AS
SELECT     dbo.LienChi.MaLienChi, dbo.LienChi.TenLienChi, dbo.ChiDoan.MaChiDoan, dbo.ChiDoan.TenChiDoan, dbo.DoanVien.MaDoanVien, 
                      dbo.DoanVien.TenDoanVien, dbo.DoanVien.NgaySinh, dbo.DoanVien.GioiTinh, dbo.DanToc.TenDanToc, dbo.TonGiao.TenTonGiao, 
                      dbo.QuanHuyen.TenQuanHuyen, dbo.TinhThanh.TenTinhThanh, dbo.DoanVien.TrinhDo, dbo.DoanVien.NgayVaoDoan, dbo.ChucVu.TenChucVu, 
                      dbo.XepLoaiDoanVien.NamHoc, dbo.XepLoaiDoanVien.PLDVCaNam
FROM         dbo.DoanVien INNER JOIN
                      dbo.XepLoaiDoanVien ON dbo.DoanVien.MaDoanVien = dbo.XepLoaiDoanVien.MaDoanVien INNER JOIN
                      dbo.ChiDoan ON dbo.DoanVien.MaChiDoan = dbo.ChiDoan.MaChiDoan INNER JOIN
                      dbo.LienChi ON dbo.ChiDoan.MaLienChi = dbo.LienChi.MaLienChi INNER JOIN
                      dbo.DanToc ON dbo.DoanVien.MaDanToc = dbo.DanToc.MaDanToc INNER JOIN
                      dbo.QuanHuyen ON dbo.DoanVien.MaQuanHuyen = dbo.QuanHuyen.MaQuanHuyen INNER JOIN
                      dbo.TinhThanh ON dbo.DoanVien.MaTinhThanh = dbo.TinhThanh.MaTinhThanh INNER JOIN
                      dbo.TonGiao ON dbo.DoanVien.MaTonGiao = dbo.TonGiao.MaTonGiao INNER JOIN
                      dbo.ChucVu ON dbo.DoanVien.MaChucVu = dbo.ChucVu.MaChucVu

GO
/****** Object:  View [dbo].[VWXepLoaiChiDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VWXepLoaiChiDoan]
AS
SELECT     dbo.LienChi.MaLienChi, dbo.LienChi.TenLienChi, dbo.ChiDoan.MaChiDoan, dbo.ChiDoan.TenChiDoan, dbo.XepLoaiChiDoan.NamHoc, 
                      dbo.XepLoaiChiDoan.XepLoaiKiI, dbo.XepLoaiChiDoan.XepLoaiKiII, dbo.XepLoaiChiDoan.XepLoaiCaNam
FROM         dbo.ChiDoan INNER JOIN
                      dbo.XepLoaiChiDoan ON dbo.ChiDoan.MaChiDoan = dbo.XepLoaiChiDoan.MaChiDoan INNER JOIN
                      dbo.LienChi ON dbo.ChiDoan.MaLienChi = dbo.LienChi.MaLienChi

GO
/****** Object:  View [dbo].[VWXepLoaiDoanVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VWXepLoaiDoanVien]
AS
SELECT     dbo.ChiDoan.MaChiDoan, dbo.ChiDoan.TenChiDoan, dbo.DoanVien.MaDoanVien, dbo.DoanVien.TenDoanVien, dbo.XepLoaiDoanVien.NamHoc, 
                      dbo.XepLoaiDoanVien.PLDVCaNam, dbo.XepLoaiDoanVien.PLDVKiII, dbo.XepLoaiDoanVien.PLDVKiI
FROM         dbo.XepLoaiDoanVien INNER JOIN
                      dbo.DoanVien ON dbo.XepLoaiDoanVien.MaDoanVien = dbo.DoanVien.MaDoanVien INNER JOIN
                      dbo.ChiDoan ON dbo.DoanVien.MaChiDoan = dbo.ChiDoan.MaChiDoan

GO
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD001', N'CD01007', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD002', N'CD02004', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD003', N'CD03002', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD004', N'CD05003', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD005', N'CD05002', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD006', N'CD06003', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD007', N'CD07003', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD008', N'CD07002', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD009', N'CD08002', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD010', N'CD08001', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD011', N'CD09001', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD012', N'CD10004', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD013', N'CD12001', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD014', N'CD11003', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD015', N'CD11001', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD016', N'CD13005', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD017', N'CD13004', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD018', N'CD14001', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD019', N'CD15001', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD020', N'CD16003', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD021', N'CD17008', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD022', N'CD18001', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD023', N'CD19001', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD024', N'CD20003', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD025', N'CD21002', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD026', N'CD22003', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD027', N'CD23001', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD028', N'CD24004', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD030', N'CD24001', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD031', N'CD25001', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD032', N'CD26003', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD033', N'CD27004', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD034', N'CD28001', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD035', N'CD29002', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD036', N'CD30002', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD037', N'CD31003', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD038', N'CD35007', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD039', N'CD34004', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD040', N'CD33002', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD041', N'CD28003', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD042', N'CD29005', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD043', N'CD30001', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD044', N'CD30004', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD045', N'CD31005', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD046', N'CD31004', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD047', N'CD32001', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD048', N'CD32005', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD049', N'CD33005', CAST(N'2006-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD050', N'CD33003', CAST(N'2007-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD051', N'CD01008', CAST(N'2008-10-13T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD052', N'CD01010', CAST(N'2008-10-13T00:00:00.000' AS DateTime))
INSERT [dbo].[CamTinhDang] ([MaCamTinhDang], [MaDoanVien], [NgayCap]) VALUES (N'CTD053', N'CD19004', CAST(N'2008-10-23T00:00:00.000' AS DateTime))
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB001', N'CD01007', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB002', N'CD01008', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB003', N'CD01009', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB004', N'CD02004', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB005', N'CD02003', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB006', N'CD02005', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB007', N'CD03002', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB008', N'CD03003', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB009', N'CD03004', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB010', N'CD04002', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB011', N'CD04003', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB012', N'CD04004', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB013', N'CD05003', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB014', N'CD05002', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB015', N'CD05001', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB016', N'CD06003', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB017', N'CD06002', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB018', N'CD06001', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB019', N'CD07003', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB020', N'CD07002', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB021', N'CD07005', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB022', N'CD08001', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB023', N'CD08002', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB024', N'CD08005', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB025', N'CD09001', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB026', N'CD09003', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB027', N'CD09005', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB028', N'CD10004', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB029', N'CD10002', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB030', N'CD10003', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB031', N'CD11001', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB032', N'CD11003', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB033', N'CD11002', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB034', N'CD12002', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB035', N'CD12001', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB036', N'CD12003', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB037', N'CD13002', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB038', N'CD13005', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB039', N'CD13004', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB040', N'CD14001', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB041', N'CD14004', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB042', N'CD14005', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB043', N'CD15003', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB044', N'CD15001', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB045', N'CD15002', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB046', N'CD16003', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB047', N'CD16004', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB048', N'CD16001', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB049', N'CD17008', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB050', N'CD17004', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB051', N'CD17002', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB052', N'CD18001', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB053', N'CD18004', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB054', N'CD18005', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB055', N'CD19001', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB056', N'CD19002', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB057', N'CD19005', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB058', N'CD20003', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB059', N'CD20001', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB060', N'CD20005', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB061', N'CD21002', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB062', N'CD21005', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB063', N'CD21003', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB064', N'CD22003', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB065', N'CD22001', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB066', N'CD22002', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB067', N'CD23001', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB068', N'CD23004', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB069', N'CD23002', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB070', N'CD24004', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB071', N'CD24001', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB072', N'CD24005', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB073', N'CD25001', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB074', N'CD25003', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB075', N'CD25005', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB076', N'CD26003', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB077', N'CD26001', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB078', N'CD26002', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB079', N'CD27004', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB080', N'CD27002', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB081', N'CD27005', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB082', N'CD28001', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB083', N'CD28005', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB084', N'CD28003', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB085', N'CD29002', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB086', N'CD29005', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB087', N'CD29001', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB088', N'CD30002', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB089', N'CD30001', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB090', N'CD30004', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB091', N'CD31003', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB092', N'CD31005', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB093', N'CD31004', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB094', N'CD32001', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB095', N'CD32005', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB096', N'CD32002', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB097', N'CD33001', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB098', N'CD33005', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB099', N'CD33003', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB100', N'CD34001', N'CV01', N'DV01')
GO
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB101', N'CD34002', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB102', N'CD34005', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB103', N'CD35010', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB104', N'CD35004', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB105', N'CD35002', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB106', N'CD33002', N'CV01', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB107', N'CD34004', N'CV01', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB108', N'CD35007', N'CV01', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB109', N'CD33004', N'CV03', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB110', N'CD32002', N'CV02', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB111', N'CD27004', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB112', N'CD28001', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB113', N'CD29002', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB114', N'CD30002', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB115', N'CD31003', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB116', N'CD32001', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB117', N'CD34003', N'CV03', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB118', N'CD01007', N'CV02', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB119', N'CD16003', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB120', N'CD15003', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB121', N'CD14001', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB122', N'CD13002', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB123', N'CD12002', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB124', N'CD11001', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB125', N'CD23004', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB126', N'CD35006', N'CV03', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB127', N'CD17008', N'CV02', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB128', N'CD18001', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB129', N'CD19001', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB130', N'CD20003', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB131', N'CD21002', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB132', N'CD21005', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB133', N'CD20001', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB134', N'CD35007', N'CV01', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB135', N'CD34004', N'CV03', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB136', N'CD17008', N'CV02', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB137', N'CD33002', N'CV04', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB138', N'CD32002', N'CV04', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB139', N'CD01007', N'CV04', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB140', N'CD18001', N'CV04', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB141', N'CD19001', N'CV04', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB142', N'CD13002', N'CV04', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB143', N'CD11001', N'CV04', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB144', N'CD15003', N'CV04', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB145', N'CD20003', N'CV04', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB146', N'CD28001', N'CV04', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB147', N'CD31003', N'CV04', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB148', N'CD34003', N'CV04', N'DV03')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB149', N'CD36001', N'CV01', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB150', N'CD36002', N'CV02', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB151', N'CD36004', N'CV04', N'DV01')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB152', N'CD36005', N'CV01', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB153', N'CD36008', N'CV03', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB154', N'CD22003', N'CV02', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB155', N'CD23001', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB156', N'CD26003', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB157', N'CD24004', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB158', N'CD25001', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB159', N'CD25003', N'CV04', N'DV02')
INSERT [dbo].[CanBo] ([MaCanBo], [MaDoanVien], [MaChucVu], [MaDonVi]) VALUES (N'CB160', N'CD23004', N'CV04', N'DV02')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD01', N'LC01', N'Chi đoàn d15asp01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD02', N'LC01', N'Chi đoàn d15asp02 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD03', N'LC01', N'Chi đoàn d15asp03 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD04', N'LC01', N'Chi đoàn d15atm01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD05', N'LC01', N'Chi đoàn d15atm02 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD06', N'LC01', N'Chi đoàn d15atm03 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD07', N'LC01', N'Chi đoàn d15dtcn01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD08', N'LC01', N'Chi đoàn d15dtcn02 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD09', N'LC01', N'Chi đoàn d15dttd ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD10', N'LC01', N'Chi đoàn d15kt01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD11', N'LC01', N'Chi đoàn d15kt02 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD12', N'LC01', N'Chi đoàn d15kt03 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD13', N'LC01', N'Chi đoàn d15kt04 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD14', N'LC01', N'Chi đoàn d15ktr01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD15', N'LC01', N'Chi đoàn d15luhc01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD16', N'LC01', N'Chi đoàn d15luhc02 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD17', N'LC02', N'Chi đoàn d15luqc02 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD18', N'LC02', N'Chi đoàn d15lutp01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD19', N'LC02', N'Chi đoàn d15lutp02 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD20', N'LC02', N'Chi đoàn d15mn01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD21', N'LC02', N'Chi đoàn d15mn02 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD22', N'LC03', N'Chi đoàn d15mn04 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD23', N'LC03', N'Chi đoàn d15nv03 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD24', N'LC03', N'Chi đoàn d15qhdt ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD25', N'LC03', N'Chi đoàn d15qldt ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD26', N'LC03', N'Chi đoàn d15xd01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD27', N'LC04', N'Chi đoàn d16avgd01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD28', N'LC04', N'Chi đoàn d16avgd02 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD29', N'LC04', N'Chi đoàn d16avkd01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD30', N'LC04', N'Chi đoàn d16avkd02 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD31', N'LC04', N'Chi đoàn d16avkd03 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD32', N'LC04', N'Chi đoàn d16dt01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD33', N'LC04', N'Chi đoàn d16ht01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD34', N'LC01', N'Chi đoàn d15luqc01 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD35', N'LC02', N'Chi đoàn d15mn03 ', N'K')
INSERT [dbo].[ChiDoan] ([MaChiDoan], [MaLienChi], [TenChiDoan], [TrangThai]) VALUES (N'CD36', N'LC03', N'Chi đoàn d15xd02 ', N'K')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV01', N'Bí thư')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV02', N'Phó bí thư ')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV03', N'Phó bí thư thường trực')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV04', N'Uỷ viên BCH')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV05', N'Đoàn viên ')
INSERT [dbo].[ChuyenChiDoan] ([IDChuyenChiDoan], [MaDoanVien], [MaChiDoanCu], [MaChiDoanMoi], [NgayChuyen], [LiDoChuyen]) VALUES (N'CD000001', N'CD07001', N'CD07', N'CD01', CAST(N'2008-11-02T00:00:00.000' AS DateTime), N'Chuyển lớp')
INSERT [dbo].[ChuyenChiDoan] ([IDChuyenChiDoan], [MaDoanVien], [MaChiDoanCu], [MaChiDoanMoi], [NgayChuyen], [LiDoChuyen]) VALUES (N'CD000002', N'CD01001', N'CD01', N'CD02', CAST(N'2008-06-11T00:00:00.000' AS DateTime), N'Dsd ')
INSERT [dbo].[ChuyenChiDoan] ([IDChuyenChiDoan], [MaDoanVien], [MaChiDoanCu], [MaChiDoanMoi], [NgayChuyen], [LiDoChuyen]) VALUES (N'CD000003', N'CD01003', N'CD01', N'CD02', CAST(N'2008-06-11T00:00:00.000' AS DateTime), N'Fsfs ')
INSERT [dbo].[ChuyenSinhHoatDoan] ([IDChuyenSinhHoat], [MaDoanVien], [NgayChuyen], [NoiChuyenDen], [LiDoChuyen]) VALUES (N'CSH0000001', N'CD11001', CAST(N'2008-11-06T00:00:00.000' AS DateTime), N'Cơ sở mới', N'Chuyển trường')
INSERT [dbo].[ChuyenSinhHoatDoan] ([IDChuyenSinhHoat], [MaDoanVien], [NgayChuyen], [NoiChuyenDen], [LiDoChuyen]) VALUES (N'CSH0000002', N'CD02001', CAST(N'2008-06-11T00:00:00.000' AS DateTime), N'Trường đại học hàng hải', N'Chuyển trường')
INSERT [dbo].[ChuyenSinhHoatDoan] ([IDChuyenSinhHoat], [MaDoanVien], [NgayChuyen], [NoiChuyenDen], [LiDoChuyen]) VALUES (N'CSH0000003', N'CD05003', CAST(N'2008-06-11T00:00:00.000' AS DateTime), N'Trường đại học hàng hải', N'Chuyển trường')
INSERT [dbo].[ChuyenSinhHoatDoan] ([IDChuyenSinhHoat], [MaDoanVien], [NgayChuyen], [NoiChuyenDen], [LiDoChuyen]) VALUES (N'CSH0000004', N'CD06003', CAST(N'2008-06-11T00:00:00.000' AS DateTime), N'Cơ sở mới', N'Chuyển trường')
INSERT [dbo].[ChuyenSinhHoatDoan] ([IDChuyenSinhHoat], [MaDoanVien], [NgayChuyen], [NoiChuyenDen], [LiDoChuyen]) VALUES (N'CSH0000005', N'CD17003', CAST(N'2008-06-11T00:00:00.000' AS DateTime), N'Cơ sở mới', N'Chuyển trường')
INSERT [dbo].[ChuyenSinhHoatDoan] ([IDChuyenSinhHoat], [MaDoanVien], [NgayChuyen], [NoiChuyenDen], [LiDoChuyen]) VALUES (N'CSH0000006', N'CD02002', CAST(N'2008-11-02T00:00:00.000' AS DateTime), N'Cơ sở mới', N'Chuyển trường')
INSERT [dbo].[ChuyenSinhHoatDoan] ([IDChuyenSinhHoat], [MaDoanVien], [NgayChuyen], [NoiChuyenDen], [LiDoChuyen]) VALUES (N'CSH0000007', N'CD09003', CAST(N'2008-07-11T00:00:00.000' AS DateTime), N'fsf', N'Fsfs ')
INSERT [dbo].[ChuyenSinhHoatDoan] ([IDChuyenSinhHoat], [MaDoanVien], [NgayChuyen], [NoiChuyenDen], [LiDoChuyen]) VALUES (N'CSH0000008', N'CD01005', CAST(N'2008-07-11T00:00:00.000' AS DateTime), N'fdf', N'Fd ')
INSERT [dbo].[DanToc] ([MaDanToc], [TenDanToc]) VALUES (N'DT01', N'Kinh')
INSERT [dbo].[DanToc] ([MaDanToc], [TenDanToc]) VALUES (N'DT02', N'Thái ')
INSERT [dbo].[DanToc] ([MaDanToc], [TenDanToc]) VALUES (N'DT03', N'KhoMe')
INSERT [dbo].[DanToc] ([MaDanToc], [TenDanToc]) VALUES (N'DT04', N'Cham')
INSERT [dbo].[DanToc] ([MaDanToc], [TenDanToc]) VALUES (N'DT05', N'Mường ')
INSERT [dbo].[DanToc] ([MaDanToc], [TenDanToc]) VALUES (N'DT06', N'H Mong')
INSERT [dbo].[DanToc] ([MaDanToc], [TenDanToc]) VALUES (N'DT07', N'Nung ')
INSERT [dbo].[DoanPhi] ([IDDoanPhi], [MoTaDoanPhi]) VALUES (N'A', N'Đóng đoàn phí, kinh phí đầy đủ và đúng hạn')
INSERT [dbo].[DoanPhi] ([IDDoanPhi], [MoTaDoanPhi]) VALUES (N'B', N'Đóng đoàn phí, kinh phí đầy đủ nhưng không đúng hạn')
INSERT [dbo].[DoanPhi] ([IDDoanPhi], [MoTaDoanPhi]) VALUES (N'C', N'Đóng đoàn phí, kinh phí không đầy đủ và không đúng hạn')
INSERT [dbo].[DoanPhi] ([IDDoanPhi], [MoTaDoanPhi]) VALUES (N'D', N'Không đóng đoàn phí, kinh phí theo quy định')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD01001', N'Bùi Phúc Anh', N'CD01', CAST(N'1986-10-29T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD01002', N'Nguyễn Tuấn Anh ', N'CD01', CAST(N'1985-09-29T00:00:00.000' AS DateTime), N'Nam', N'DT01', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD01003', N'Nguyễn Thành Công', N'CD01', CAST(N'1986-10-27T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH008 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD01004', N'Nguyễn Đức Chính', N'CD01', CAST(N'1984-10-29T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD01005', N'Nguyễn Văn Dương', N'CD01', CAST(N'1986-08-29T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD01006', N'Nguyễn Thế Dũng', N'CD01', CAST(N'1985-06-29T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD01007', N'Mai Văn Duy', N'CD01', CAST(N'1988-04-14T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG01', N'TT02', N'QH013 ', N'Bình Dương', N'TD03', CAST(N'2001-03-23T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD01008', N'Lưu Công Hùng ', N'CD01', CAST(N'1986-12-01T00:00:00.000' AS DateTime), N'Nam', N'DT02', N'TG02', N'TT03', N'QH026 ', N'Bình Dương', N'TD03', CAST(N'2000-03-26T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD01009', N'Mai Văn Trung', N'CD01', CAST(N'1986-03-12T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG05', N'TT01', N'QH005 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD01010', N'Hoàng Đình Tùng', N'CD01', CAST(N'1985-04-22T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG03', N'TT03', N'QH004 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD01011', N'Nguyễn Ngọc Anh ', N'CD01', CAST(N'2008-10-24T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG02', N'TT01', N'QH005 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn ', N'C')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02001', N'Nguyễn Văn Đức', N'CD02', CAST(N'1985-09-12T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH003 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02002', N'Nguyễn Văn Giang ', N'CD02', CAST(N'1985-06-02T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02003', N'Lê Văn Định', N'CD02', CAST(N'1985-03-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD03', CAST(N'2001-03-24T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02004', N'Lương Thị Bến', N'CD02', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG05', N'TT01', N'QH011 ', N'Bình Dương', N'TD03', CAST(N'2000-03-21T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02005', N'Nguyễn Thanh Hải', N'CD02', CAST(N'1986-11-03T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG04', N'TT02', N'QH015 ', N'Bình Dương', N'TD03', CAST(N'2001-03-26T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02006', N'Nguyễn Văn Hảo', N'CD02', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02007', N'Nguyễn Bảo Ngọc', N'CD02', CAST(N'1985-01-02T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG03', N'TT03', N'QH026 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02008', N'Đào Duy Anh', N'CD02', CAST(N'1987-06-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH009 ', N'Bình Dương', N'TD03', CAST(N'2004-12-03T00:00:00.000' AS DateTime), N'CV03', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02009', N'Nguyễn Văn Hùng ', N'CD02', CAST(N'1983-06-18T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02010', N'Nguyễn Văn Huy ', N'CD02', CAST(N'1984-08-29T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02011', N'Nguyễn Huy Hoàng', N'CD02', CAST(N'2008-10-29T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH009 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02012', N'Hà Huy Anh ', N'CD02', CAST(N'2008-10-29T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD02013', N'Phan Thành Tài ', N'CD02', CAST(N'2018-12-27T00:00:00.000' AS DateTime), N'Nam', N'DT01', N'TG01', NULL, NULL, N'Thuận An, Bình Dương', N'TD03', NULL, N'CV05', NULL, N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03001', N'Phạm Thị Linh', N'CD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03002', N'Nguyễn Thành Luân', N'CD03', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG06', N'TT01', N'QH004 ', N'Bình Dương', N'TD04', CAST(N'2000-03-26T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03003', N'Nguyễn Thành Bắc', N'CD03', CAST(N'1986-04-18T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG04', N'TT05', N'QH019 ', N'Bình Dương', N'TD04', CAST(N'2000-03-25T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03004', N'Vũ Đức Minh', N'CD03', CAST(N'1985-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT04', N'TG04', N'TT05', N'QH019 ', N'Bình Dương', N'TD04', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03005', N'Nguyễn Thành Long', N'CD03', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT06', N'TG02', N'TT05', N'QH019 ', N'Bình Dương', N'TD04', CAST(N'2000-02-20T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03006', N'Nguyễn Minh Trang', N'CD03', CAST(N'1986-04-16T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD04', CAST(N'2001-02-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03007', N'Phạm Văn Mạnh', N'CD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03008', N'Phạm Văn Minh', N'CD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03009', N'Nguyễn Văn Nam', N'CD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03010', N'Nguyễn Văn Phương', N'CD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03011', N'Phạm Thị Phượng', N'CD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03012', N'Lê Văn Phú', N'CD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03013', N'Lê Văn Phúc', N'CD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03014', N'Lê Văn Sơn', N'CD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03015', N'Lê Văn Tư', N'CD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD03016', N'Đinh Văn Thắng', N'CD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD04001', N'Ngô Ngọc Thanh', N'CD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD04002', N'Nguyễn Văn Dũng', N'CD04', CAST(N'1986-03-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT06', N'TG01', N'TT05', N'QH019 ', N'Bình Dương', N'TD04', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD04003', N'Lê Khắc Hiếu', N'CD04', CAST(N'1986-08-15T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG02', N'TT01', N'QH004 ', N'Bình Dương', N'TD04', CAST(N'2000-03-25T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD04004', N'Nguyễn Ngọc Sỹ Lâm', N'CD04', CAST(N'1985-04-16T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG02', N'TT01', N'QH005 ', N'Bình Dương', N'TD04', CAST(N'2000-03-25T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD04005', N'Nguyễn Văn Thức', N'CD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD04006', N'Vũ Quốc Hoàn', N'CD04', CAST(N'1985-12-10T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT02', N'QH015 ', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD04007', N'Khúc Văn Hùng', N'CD04', CAST(N'1986-07-12T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT01', N'QH008 ', N'Bình Dương', N'TD04', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD04008', N'Nguyên Văn Thịnh', N'CD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD04009', N'Vũ Đức Thuận', N'CD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD04010', N'Nguyễn Xuân Tùng', N'CD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD04011', N'Nguyễn Văn Tiến', N'CD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD04012', N'Trần Ngọc Tú', N'CD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05001', N'Lê Hồng Thắng', N'CD05', CAST(N'1984-04-15T00:00:00.000' AS DateTime), N'Nam  ', N'DT05', N'TG06', N'TT01', N'QH008 ', N'Bình Dương', N'TD05', CAST(N'2000-03-24T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05002', N'Phạm Thành Thắng', N'CD05', CAST(N'1986-04-02T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG02', N'TT01', N'QH008 ', N'Bình Dương', N'TD05', CAST(N'2001-03-21T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05003', N'Lưu Công Hùng', N'CD05', CAST(N'1987-08-15T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT02', N'QH015 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV01', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05004', N'Nguyễn Xuân Trường', N'CD05', CAST(N'1986-04-20T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG03', N'TT01', N'QH003 ', N'Bình Dương', N'TD05', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05005', N'Nguyễn Thành Trung', N'CD05', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG06', N'TT04', N'QH016 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ Đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05006', N'Trần Ngọc Tú', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05007', N'La Thế Trung', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05008', N'Nguyễn Bảo Trung', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05009', N'Nguyễn Anh Tuấn', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05010', N'Nguyễn Văn Tuyên', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05011', N'Trần Quang Vũ', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05012', N'Quản Đức Anh', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05013', N'Phạm Việt Anh', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05014', N'Đỗ Duy Bình', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05015', N'Tạ Quang Bốn', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05016', N'Đố Tiến Công', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05017', N'Nguyễn Văn Cường', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05018', N'Trần Văn Cường', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05019', N'Ngô Văn Chiến', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD05020', N'Vũ Văn Cung', N'CD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD06001', N'Nguyễn Hoàng Mạnh', N'CD06', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT06', N'TG03', N'TT02', N'QH015 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD06002', N'Lê Ngọc Hân', N'CD06', CAST(N'1987-04-16T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG06', N'TT01', N'QH010 ', N'Bình Dương', N'TD05', CAST(N'2001-03-24T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD06003', N'Trần Phương Linh', N'CD06', CAST(N'1986-08-06T00:00:00.000' AS DateTime), N'Nữ   ', N'DT05', N'TG03', N'TT01', N'QH008 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV01', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD06004', N'Đỗ Kim Loan', N'CD06', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT03', N'TG02', N'TT05', N'QH019 ', N'Bình Dương', N'TD05', CAST(N'2000-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD06005', N'Trần Thu Hà', N'CD06', CAST(N'1985-04-08T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG03', N'TT01', N'QH004 ', N'Bình Dương', N'TD05', CAST(N'2000-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD06006', N'Nguyễn Minh Hằng', N'CD06', CAST(N'2008-10-24T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT01', N'QH008 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD06007', N'Mai Phương Thuý', N'CD06', CAST(N'2008-10-24T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH010 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD06008', N'Đỗ Xuân Diệu', N'CD06', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD06009', N'Hà Bá Dũng', N'CD06', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD06010', N'Hoàng Gia Dũng', N'CD06', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD06011', N'Nguyễn Hải Đường', N'CD06', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD06012', N'Mai Văn Điệp', N'CD06', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07001', N'Vũ Xuân Đức', N'CD07', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07002', N'Nguyễn Hương Lan', N'CD07', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG05', N'TT06', N'QH002 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV02', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07003', N'Nguyễn Mạnh Ngọc', N'CD07', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT04', N'TG02', N'TT01', N'QH007 ', N'Bình Dương', N'TD05', CAST(N'2000-03-25T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07004', N'Trần Hoà Bình', N'CD07', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH005 ', N'Bình Dương', N'TD05', CAST(N'2001-03-20T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07005', N'Nguyễn Văn Hữu', N'CD07', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG02', N'TT01', N'QH003 ', N'Bình Dương', N'TD05', CAST(N'2001-03-20T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07006', N'Nguyễn Mạnh Quân', N'CD07', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07007', N'Trần Nam Giang', N'CD07', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07008', N'Nguyễn Văn Hùng', N'CD07', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07009', N'Nguyễn Văn Hiệp', N'CD07', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07010', N'Đào Văn Hưng', N'CD07', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07011', N'Nguyễn Xuân Hoà', N'CD07', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07012', N'Phạm Ngọc Hoà', N'CD07', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD07013', N'Nguyễn Văn Huấn', N'CD07', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD08001', N'Nguyễn Thanh Tùng', N'CD08', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT04', N'TG02', N'TT01', N'QH008 ', N'Bình Dương', N'TD05', CAST(N'2000-03-26T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD08002', N'Phạm Tiến Trường', N'CD08', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG04', N'TT01', N'QH009 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV02', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD08003', N'Lê Kim Chi', N'CD08', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nữ   ', N'DT03', N'TG03', N'TT01', N'QH006 ', N'Bình Dương', N'TD05', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
GO
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD08004', N'Nguyễn Thành Chung', N'CD08', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG04', N'TT01', N'QH006 ', N'Bình Dương', N'TD05', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD08005', N'Nguyễn Thị Việt Hồng', N'CD08', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT03', N'TG02', N'TT01', N'QH011 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD08006', N'Trần Thành Huy', N'CD08', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD08007', N'Ngô Văn Khánh', N'CD08', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD08008', N'Nguyễn Thành Khoa', N'CD08', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD08009', N'Phạm Đức Lợi', N'CD08', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD08010', N'Đinh Đức Mạnh', N'CD08', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD08011', N'Lê Đức Ninh', N'CD08', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD09001', N'Nguyễn Văn Tùng', N'CD09', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG02', N'TT01', N'QH006 ', N'Bình Dương', N'TD05', CAST(N'2000-03-25T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD09002', N'Nguyễn Gia Thiện', N'CD09', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG04', N'TT01', N'QH005 ', N'Bình Dương', N'TD05', CAST(N'2000-03-24T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD09003', N'Đặng Thái Sơn', N'CD09', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG05', N'TT02', N'QH013 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV02', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD09004', N'Đỗ Anh Đức', N'CD09', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT03', N'QH018 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD09005', N'Đào Văn Mạnh', N'CD09', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT04', N'TG02', N'TT05', N'QH019 ', N'Bình Dương', N'TD05', CAST(N'2000-03-20T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD09006', N'Trần Văn Phú', N'CD09', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD09007', N'Nguyễn Thế Phúc', N'CD09', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD09008', N'Đỗ Hồng Quân', N'CD09', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD09009', N'Nguyễn Văn Tâm', N'CD09', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD09010', N'Bùi Văn Tài', N'CD09', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD09011', N'Lê Văn Thắng', N'CD09', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD09012', N'Phạm Văn Thái', N'CD09', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD10001', N'Phạm Văn Thành', N'CD10', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD10002', N'Lâm Thiên Hương', N'CD10', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT05', N'TG02', N'TT01', N'QH003 ', N'Bình Dương', N'TD05', CAST(N'2000-12-22T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD10003', N'Lương Phương Liên', N'CD10', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD10004', N'Giang Kiều Oanh', N'CD10', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG03', N'TT01', N'QH008 ', N'Bình Dương', N'TD05', CAST(N'2000-03-12T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD10005', N'Phạm Hà Phương', N'CD10', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG02', N'TT01', N'QH004 ', N'Bình Dương', N'TD05', CAST(N'2001-03-12T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD10006', N'Phạm Thế Nam', N'CD10', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD05', CAST(N'2001-12-22T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD10007', N'Nguyễn Văn Tiến', N'CD10', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD10008', N'Trần Văn Tú', N'CD10', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD10009', N'Nguyễn Văn Trung', N'CD10', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD10010', N'Lê Đức Việt', N'CD10', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD11001', N'Nguyễn Văn Hưng', N'CD11', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG04', N'TT01', N'QH008 ', N'Bình Dương', N'TD05', CAST(N'2001-03-26T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD11002', N'Tiêu Thanh Bình', N'CD11', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG02', N'TT02', N'QH015 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD11003', N'Đặng Quang Quyền', N'CD11', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG05', N'TT01', N'QH008 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV02', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD11004', N'Lâm Thiên Điệp', N'CD11', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT05', N'QH019 ', N'Bình Dương', N'TD05', CAST(N'2001-03-24T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD11005', N'Nguyễn Xuân Quyết', N'CD11', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG04', N'TT02', N'QH015 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD11006', N'Nguyễn Hữu Bách', N'CD11', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD11007', N'Đinh Duy Công', N'CD11', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD11008', N'Vũ Cao Cảnh', N'CD11', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD11009', N'Nguyễn Mạnh Cường', N'CD11', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD11010', N'Nguyễn Bá Cường', N'CD11', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD11011', N'Nguyễn Đăng Dương', N'CD11', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD12001', N'Mai Vũ Diệu Quỳnh', N'CD12', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG04', N'TT01', N'QH004 ', N'Bình Dương', N'TD05', CAST(N'2001-03-24T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD12002', N'Phạm Hồng Cẩm', N'CD12', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG05', N'TT01', N'QH004 ', N'Bình Dương', N'TD05', CAST(N'2001-03-20T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD12003', N'Nguyễn Thu Hiền', N'CD12', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT05', N'TG02', N'TT05', N'QH019 ', N'Bình Dương', N'TD05', CAST(N'2001-03-20T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD12004', N'Phạm Văn Công', N'CD12', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG04', N'TT01', N'QH004 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD12005', N'Phạm Trung Du', N'CD12', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH005 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD12006', N'Lê Bình Dương', N'CD12', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD12007', N'Trịnh Văn Đạo', N'CD12', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD12008', N'Phạm Văn Hà', N'CD12', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD12009', N'Phạm Văn Huân', N'CD12', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD12010', N'Nguyễn Đức Hùng', N'CD12', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD12011', N'Trần Quang Hùng', N'CD12', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD12012', N'Bùi Trung Hiếu', N'CD12', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13001', N'Nguyễn Thanh Hùng', N'CD13', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13002', N'Nguyễn Hoà Bình', N'CD13', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG02', N'TT01', N'QH005 ', N'Bình Dương', N'TD05', CAST(N'2003-03-20T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13003', N'Dương Xuân Cường', N'CD13', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG02', N'TT01', N'QH005 ', N'Bình Dương', N'TD05', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13004', N'Bùi Quang Chiến', N'CD13', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13005', N'Nguyễn Chiến Thắng', N'CD13', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT05', N'QH023 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV02', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13006', N'Trương Văn Hùng', N'CD13', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13007', N'Nguyễn Quốc Hoàn', N'CD13', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13008', N'Nguyễn Hưu Hoàng', N'CD13', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13009', N'Phan Viết Hoan', N'CD13', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13010', N'Trần Văn Huy', N'CD13', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13011', N'Nguyễn Văn Lâm', N'CD13', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13012', N'Trịnh Ngọc Long', N'CD13', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13013', N'Nguyễn Văn Luân', N'CD13', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD13014', N'Đinh Công Lực', N'CD13', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD14001', N'Lâm Thiên Tuân', N'CD14', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV01', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD14002', N'Hà Anh Tuấn', N'CD14', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG02', N'TT01', N'QH004 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD14003', N'Tăng Thanh Hà', N'CD14', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD05', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD14004', N'Nguyễn Hồng Nhung', N'CD14', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG03', N'TT01', N'QH004 ', N'Bình Dương', N'TD05', CAST(N'2001-03-21T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD14005', N'Nguyễn Bảo Thy', N'CD14', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT01', N'QH011 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD14006', N'Nguyễn Bá Minh', N'CD14', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD14007', N'Lê Văn Mỹ', N'CD14', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD14008', N'Nguyễn Văn Nam', N'CD14', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD14009', N'Phạm Văn Nhạc', N'CD14', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD14010', N'Phạm Văn Thường', N'CD14', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD14011', N'Nguyễn Thị Thuỳ Trang', N'CD14', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD15001', N'Nguyễn Tiến Dũng', N'CD15', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG05', N'TT05', N'QH025 ', N'Bình Dương', N'TD05', CAST(N'2001-03-21T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD15002', N'Hoàng Anh Dũng', N'CD15', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD05', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD15003', N'Nguyễn Văn Đại', N'CD15', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT01', N'QH005 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV01', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD15004', N'Đinh Văn Đạt', N'CD15', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG02', N'TT01', N'QH008 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD15005', N'Trần Quang Hùng', N'CD15', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT01', N'QH006 ', N'Bình Dương', N'TD05', CAST(N'2001-03-20T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD15006', N'Tô Văn Thuỷ', N'CD15', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD15007', N'Mai Xuân Thuỷ', N'CD15', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD15008', N'Bùi Ngọc Tùng', N'CD15', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD15009', N'Đỗ Văn Tú', N'CD15', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD15010', N'Đường Đức Tú', N'CD15', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD15011', N'Lê Văn Toàn', N'CD15', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD16001', N'Phạm Thị Chi', N'CD16', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG03', N'TT01', N'QH005 ', N'Bình Dương', N'TD05', CAST(N'2001-03-20T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD16002', N'Cao Thành Chung', N'CD16', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG02', N'TT05', N'QH017 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD16003', N'Trần Văn Chung', N'CD16', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT04', N'TG01', N'TT01', N'QH003 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV01', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD16004', N'Mai Văn Duy', N'CD16', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD05', CAST(N'2001-03-27T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD16005', N'Nguyễn Văn Dũng', N'CD16', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT04', N'TG02', N'TT01', N'QH008 ', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD16006', N'Đinh Văn Trọng', N'CD16', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD16007', N'Lê Văn Trường', N'CD16', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD16008', N'Lê Hà Trinh', N'CD16', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD16009', N'Hoàng Mạnh Tuấn', N'CD16', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD16010', N'Hoàng Văn Tuấn', N'CD16', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD16011', N'Phạm Tiến Tuyến', N'CD16', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
GO
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD16012', N'Trần Xuân Việt', N'CD16', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD05', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17001', N'Nguyễn Viết Vụ', N'CD17', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17002', N'Trần Duy Đỉnh', N'CD17', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG05', N'TT01', N'QH010 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17003', N'Bùi Quang Đoàn', N'CD17', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT06', N'TG05', N'TT01', N'QH005 ', N'Bình Dương', N'TD03', CAST(N'2001-03-26T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17004', N'Đồng Thanh Đông', N'CD17', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG05', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV02', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17005', N'Nguyễn Trường Sơn', N'CD17', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT05', N'TG03', N'TT01', N'QH005 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17006', N'Trần Văn Xuân', N'CD17', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17007', N'Mai Văn Yên', N'CD17', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17008', N'Đỗ Thị Hồng Việt', N'CD17', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH010 ', N'Bình Dương', N'TD03', CAST(N'2000-03-26T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17009', N'Nguyễn Anh Dũng', N'CD17', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17010', N'Lê Văn Long', N'CD17', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17011', N'Hoàng Quang Thế', N'CD17', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17012', N'Lê Thanh Việt', N'CD17', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17013', N'Nguyễn Hữu Đạt', N'CD17', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17014', N'Phạm Văn Đồng', N'CD17', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17015', N'Nguyễn Hữu Hải ', N'CD17', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD17016', N'Phan Thành Tài ', N'CD17', CAST(N'2018-12-12T00:00:00.000' AS DateTime), N'Nữ', N'DT01', N'TG01', NULL, NULL, N'BD', N'TD03', CAST(N'2018-12-12T00:00:00.000' AS DateTime), N'CV05', NULL, N'C')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD18001', N'Nguyễn Bá Hiển', N'CD18', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT06', N'TG04', N'TT01', N'QH011 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD18002', N'Trần Quang Hiệp', N'CD18', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT05', N'TG01', N'TT02', N'QH015 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD18003', N'Nguyễn Văn Huy', N'CD18', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT06', N'TG04', N'TT01', N'QH002 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD18004', N'Bùi Tiến Cường', N'CD18', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT06', N'TG02', N'TT02', N'QH015 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV02', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD18005', N'Nguyễn Trung Kiên', N'CD18', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG01', N'TT01', N'QH008 ', N'Bình Dương', N'TD03', CAST(N'2001-03-26T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD18006', N'Đỗ Hùng Mạnh', N'CD18', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD18007', N'Phạm Văn Tốt', N'CD18', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD18008', N'Lê Văn Vượng', N'CD18', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD18009', N'Bùi Văn Toản', N'CD18', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD18010', N'Hoàng Văn Hiếu', N'CD18', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD18011', N'Nguyễn Thế Anh', N'CD18', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD18012', N'Nguyễn Hữu Bình', N'CD18', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD19001', N'Phùng Văn Kiệm', N'CD19', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG04', N'TT01', N'QH003 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD19002', N'Nguyễn Ngọc Sỹ Lâm', N'CD19', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG06', N'TT01', N'QH004 ', N'Bình Dương', N'TD03', CAST(N'2000-03-21T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD19003', N'Đào Tùng Linh', N'CD19', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH011 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD19004', N'Nguyễn Văn Linh', N'CD19', CAST(N'1985-12-22T00:00:00.000' AS DateTime), N'Nam  ', N'DT05', N'TG02', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD19005', N'Nguyễn Phạm Duy Phong', N'CD19', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT04', N'TG01', N'TT02', N'QH015 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD19007', N'Trần Mạnh Cường', N'CD19', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD19008', N'Nguyễn Văn Chung', N'CD19', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD19009', N'Ngô Thanh Dương', N'CD19', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD19010', N'Nguyễn Ngọc Dương', N'CD19', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD19011', N'Hoàng Thế Dũng', N'CD19', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20001', N'Vũ Văn Phú', N'CD20', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT06', N'TG01', N'TT01', N'QH003 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20002', N'Dương Duy Phương', N'CD20', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD03', CAST(N'2001-12-22T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20003', N'Đặng Thái Sơn', N'CD20', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT05', N'TG02', N'TT01', N'QH004 ', N'Bình Dương', N'TD03', CAST(N'2000-03-26T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20004', N'Nguyễn Minh Cương', N'CD20', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20005', N'Vũ Đức Minh', N'CD20', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG06', N'TT02', N'QH015 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20006', N'Trương Công Duẩn', N'CD20', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20007', N'Phan Đình Đoàn', N'CD20', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20008', N'Hoàng Bá Đoàn', N'CD20', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20009', N'Nguyễn Văn Đoan', N'CD20', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20010', N'Nguyễn Bá Định', N'CD20', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20011', N'Phạm Việt Hà', N'CD20', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20012', N'Phạm Sơn Hải', N'CD20', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20013', N'Bùi Quang Học', N'CD20', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20014', N'Tạ Duy Hậu', N'CD20', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD20015', N'Đặng Thế Hoàng', N'CD20', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21001', N'Nguyễn Văn Ngọc', N'CD21', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'2000-12-22T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21002', N'Đào Văn Thắng', N'CD21', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'2000-03-12T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21003', N'Hoàng Anh Thắng', N'CD21', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT02', N'QH015 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21004', N'Lê Hồng Thắng', N'CD21', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT05', N'TG02', N'TT01', N'QH011 ', N'Bình Dương', N'TD03', CAST(N'2001-12-12T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21005', N'Phạm Thành Thắng', N'CD21', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG02', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV02', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21006', N'Kiều Văn Huân', N'CD21', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21007', N'Đỗ Văn Huy', N'CD21', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21008', N'Nguyễn Trung Kiên', N'CD21', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21009', N'Đặng Văn Kiên', N'CD21', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21010', N'Nguyễn Đức Lượng', N'CD21', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21011', N'Hoàng Văn Long', N'CD21', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21012', N'Trương Minh Long', N'CD21', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD21013', N'Phạm Thành Luân', N'CD21', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD22001', N'Nguyễn Gia Thiện', N'CD22', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG02', N'TT05', N'QH017 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD22002', N'Đinh Đức Thiện', N'CD22', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH005 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD22003', N'Đặng Thị Thư', N'CD22', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT04', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'2000-03-26T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD22004', N'Chu Quang Tốn', N'CD22', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG02', N'TT05', N'QH019 ', N'Bình Dương', N'TD03', CAST(N'2003-12-22T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD22005', N'Lương Thị Trang', N'CD22', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG03', N'TT06', N'QH002 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD22006', N'Nguyễn Văn Mạnh', N'CD22', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD22007', N'Trần Tiến Mạnh', N'CD22', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD22008', N'Vũ Duy Mười', N'CD22', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD22009', N'Nguyễn Thanh Ngân', N'CD22', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD22010', N'Lương Cao Nguyên', N'CD22', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD22011', N'Trương Văn Phúc', N'CD22', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD23001', N'Ngô Quang Trọng', N'CD23', CAST(N'1985-12-22T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG01', N'TT01', N'QH005 ', N'Bình Dương', N'TD03', CAST(N'2002-12-22T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD23002', N'Nguyễn Văn Trường', N'CD23', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD03', CAST(N'2000-03-12T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD23003', N'Nguyễn Xuân Trường', N'CD23', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG02', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'1999-12-22T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD23004', N'Phạm Tiến Trường', N'CD23', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV02', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD23005', N'Nguyễn Văn Trung', N'CD23', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD23006', N'Phạm Văn Phúc', N'CD23', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD23007', N'Dương Mạnh Quân', N'CD23', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD23008', N'Đào Ngọc Quang', N'CD23', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD23009', N'Phạm Văn Quy', N'CD23', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD23010', N'Nguyễn Tá Sơn', N'CD23', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24001', N'Nguyễn Anh Tuấn', N'CD24', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG02', N'TT01', N'QH003 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV02', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24002', N'Nguyễn Văn Tùng', N'CD24', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT05', N'TG06', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'2000-12-22T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24003', N'Phạm Văn Tùng', N'CD24', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD03', CAST(N'2001-03-06T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24004', N'Nguyễn Thanh Vân', N'CD24', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT03', N'TG02', N'TT02', N'QH012 ', N'Bình Dương', N'TD03', CAST(N'2000-05-05T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24005', N'Đinh Viết Vương', N'CD24', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT05', N'TG01', N'TT01', N'QH008 ', N'Bình Dương', N'TD03', CAST(N'1999-05-19T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24006', N'Bùi Văn Thìn', N'CD24', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24007', N'Trần Anh Thắng', N'CD24', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24008', N'Nguyễn Sỹ Thắng', N'CD24', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24009', N'Vũ Tùng Thạch', N'CD24', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24010', N'Dương Tuấn Thanh', N'CD24', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24011', N'Trịnh Văn Thưởng', N'CD24', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24012', N'Ngô Văn Tuân', N'CD24', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
GO
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD24013', N'Bùi Thanh Thuỷ', N'CD24', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25001', N'Hoàng Thị Thanh Xuân', N'CD25', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG03', N'TT01', N'QH009 ', N'Bình Dương', N'TD03', CAST(N'2000-03-25T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25002', N'Bùi Văn Anh', N'CD25', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT02', N'QH015 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25003', N'Hoàng Văn Bách', N'CD25', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG01', N'TT01', N'QH003 ', N'Bình Dương', N'TD03', CAST(N'2001-03-26T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25004', N'Nguyễn Thị Thanh Bình', N'CD25', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT05', N'QH017 ', N'Bình Dương', N'TD03', CAST(N'2002-12-22T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25005', N'Nguyễn Mai Chung', N'CD25', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nữ   ', N'DT05', N'TG02', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25006', N'Nhân Thị Thuý Bắc', N'CD25', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25007', N'Nguyễn Thị Thanh Dung', N'CD25', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25008', N'Nguyễn Anh Dũng', N'CD25', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25009', N'Vũ Văn Dũng', N'CD25', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25010', N'Nguyễn Thị Hằng', N'CD25', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25011', N'Vũ Thị Thu Hằng', N'CD25', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25012', N'Nguyễn Thị Hà', N'CD25', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25013', N'Đinh Hoàng Thanh Hải', N'CD25', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25014', N'Trịnh Thị Huyền', N'CD25', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD25015', N'Phùng Đình Hưng', N'CD25', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26001', N'Phạm Thị Dinh', N'CD26', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG01', N'TT05', N'QH017 ', N'Bình Dương', N'TD03', CAST(N'2001-03-12T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26002', N'Bùi Thanh Duy', N'CD26', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26003', N'Vũ Thị Hà', N'CD26', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT03', N'TG01', N'TT02', N'QH013 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV01', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26004', N'Nguyễn Tiến Hậu', N'CD26', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH009 ', N'Bình Dương', N'TD03', CAST(N'2001-12-22T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26005', N'Nguyễn Thị Hiên', N'CD26', CAST(N'1987-03-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG03', N'TT02', N'QH015 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26006', N'Phùng Thu Hương', N'CD26', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26007', N'Bùi Thị Hường', N'CD26', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26008', N'Vũ Quang Huy', N'CD26', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26009', N'Bùi Phú Khánh', N'CD26', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26010', N'Đặng Thành Long', N'CD26', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26011', N'Lê Thị Mơ', N'CD26', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26012', N'Nguyễn Thị Mỹ', N'CD26', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26013', N'Nguyễn Ngọc Nam', N'CD26', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD26014', N'Bùi Thị Nga', N'CD26', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27001', N'Phạm Thu Thuỷ', N'CD27', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG02', N'TT04', N'QH016 ', N'Bình Dương', N'TD03', CAST(N'2003-12-22T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27002', N'Nguyễn Thuý Quỳnh', N'CD27', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27003', N'Bùi Thanh Duy', N'CD27', CAST(N'1974-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT06', N'QH001 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27004', N'Nguyễn Mạnh Tiến', N'CD27', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27005', N'Bùi Thanh Duy', N'CD27', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT02', N'QH012 ', N'Bình Dương', N'TD03', CAST(N'2000-03-20T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27006', N'Nguyễn Thuý Quỳnh', N'CD27', CAST(N'1974-03-17T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG02', N'TT01', N'QH008 ', N'Bình Dương', N'TD03', CAST(N'2003-12-22T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27007', N'Mai Thị Nga', N'CD27', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27008', N'Mai Thị Phương Nga', N'CD27', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27009', N'Nguyễn Thị Ngọc', N'CD27', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27010', N'Đinh Thị Linh Nhâm', N'CD27', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27011', N'Nguyễn Thị Nhài', N'CD27', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27012', N'Trần Minh Đức', N'CD27', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD27013', N'Phạm Thi Phương', N'CD27', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD28001', N'Nguyễn Tiến Hậu', N'CD28', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'2000-03-20T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD28002', N'Phạm Văn Tùng', N'CD28', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH008 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD28003', N'Hoàng Văn Bách', N'CD28', CAST(N'1981-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT04', N'QH016 ', N'Bình Dương', N'TD03', CAST(N'2001-12-12T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD28004', N'Phạm Thu Thuỷ', N'CD28', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG02', N'TT02', N'QH013 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD28005', N'Nguyễn Tiến Hậu', N'CD28', CAST(N'1985-12-22T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD28006', N'Nguyễn Chiến Thắng', N'CD28', CAST(N'1980-04-14T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG02', N'TT06', N'QH001 ', N'Bình Dương', N'TD03', CAST(N'2001-12-12T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD28007', N'Trương Công Quyền', N'CD28', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD28008', N'Đoàn Thị Sim', N'CD28', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD28009', N'Nguyễn Duy Tân', N'CD28', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD28010', N'Đinh Văn Thành', N'CD28', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD28011', N'Trịnh Thị Thanh Thuỳ', N'CD28', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD28012', N'Lê Thị Thuý', N'CD28', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29001', N'Phạm Thị Dinh', N'CD29', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG02', N'TT01', N'QH008 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29002', N'Nguyễn Thị Hiên', N'CD29', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29003', N'Phạm Thu Thuỷ', N'CD29', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG02', N'TT02', N'QH015 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29004', N'Đặng Thái Sơn', N'CD29', CAST(N'1985-12-22T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'2001-12-12T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29005', N'Nguyễn Mạnh Tiến', N'CD29', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT04', N'QH016 ', N'Bình Dương', N'TD03', CAST(N'2000-03-20T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29006', N'Nguyễn Tiến Hậu', N'CD29', CAST(N'1974-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG02', N'TT01', N'QH008 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29007', N'Phùng Thị Thuý', N'CD29', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29008', N'Nguyễn Khắc Tiệp', N'CD29', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29009', N'Đặng Ngọc Trường', N'CD29', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29010', N'Lê Thị Ngọc Tuyến', N'CD29', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29011', N'Nguyễn Thị Vui', N'CD29', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29012', N'Phạm Vũ', N'CD29', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD29013', N'Tạ Thị Yến', N'CD29', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30001', N'Phạm Thị Dinh', N'CD30', CAST(N'1981-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV02', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30002', N'Phạm Thu Thuỷ', N'CD30', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG02', N'TT02', N'QH012 ', N'Bình Dương', N'TD03', CAST(N'1998-12-12T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30003', N'Bùi Thanh Duy', N'CD30', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'2001-12-12T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30004', N'Đặng Thái Sơn', N'CD30', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT06', N'QH008 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30005', N'Nguyễn Tiến Hậu', N'CD30', CAST(N'1985-12-22T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'2000-03-20T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30006', N'Phạm Văn Tùng', N'CD30', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT01', N'QH008 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30007', N'Đỗ Xuân Toàn', N'CD30', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30008', N'Vương Quý Dương', N'CD30', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30009', N'Đinh Thị Bình', N'CD30', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30010', N'Phạm Trọng Hữu', N'CD30', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30011', N'Nguyễn Văn Minh', N'CD30', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30012', N'Nguyễn Thị Hồng Nhung', N'CD30', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30013', N'Nguyễn Mạnh Trường', N'CD30', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD30014', N'Lưu Văn Việt', N'CD30', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31001', N'Hoàng Văn Bách', N'CD31', CAST(N'1980-04-14T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH008 ', N'Bình Dương', N'TD03', CAST(N'2003-12-22T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31002', N'Nguyễn Thuý Quỳnh', N'CD31', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG02', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31003', N'Nguyễn Chiến Thắng', N'CD31', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT02', N'QH015 ', N'Bình Dương', N'TD03', CAST(N'2001-12-12T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31004', N'Nguyễn Tiến Hậu', N'CD31', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'1998-12-12T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31005', N'Đặng Thái Sơn', N'CD31', CAST(N'1985-12-22T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT01', N'QH008 ', N'Bình Dương', N'TD03', CAST(N'2000-03-20T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31006', N'Phạm Thu Thuỷ', N'CD31', CAST(N'1974-03-17T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG02', N'TT04', N'QH016 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31007', N'Nguyễn Mạnh Tiến', N'CD31', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31008', N'Ngô Xuân Đạt', N'CD31', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31009', N'Nguyễn Mạnh Hà', N'CD31', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31010', N'Lê Thị Việt Hải', N'CD31', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31011', N'Đoàn Trung Hiếu', N'CD31', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31012', N'Nguyễn Thị Thanh Huyền', N'CD31', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31013', N'Đỗ Văn Lanh', N'CD31', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD31014', N'Phạm Thuỳ Liên', N'CD31', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32001', N'Bùi Thanh Duy', N'CD32', CAST(N'1981-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT02', N'QH012 ', N'Bình Dương', N'TD03', CAST(N'2001-12-12T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32002', N'Phạm Thị Dinh', N'CD32', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32003', N'Đặng Thái Sơn', N'CD32', CAST(N'1980-04-14T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT06', N'QH001 ', N'Bình Dương', N'TD03', CAST(N'2003-12-22T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32004', N'Nguyễn Thuý Quỳnh', N'CD32', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD03', CAST(N'2000-03-20T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
GO
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32005', N'Phạm Văn Tùng', N'CD32', CAST(N'1974-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT02', N'QH015 ', N'Bình Dương', N'TD03', CAST(N'1998-12-12T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32006', N'Đặng Thái Sơn', N'CD32', CAST(N'1986-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH008 ', N'Bình Dương', N'TD03', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32007', N'Bùi Thanh Duy', N'CD32', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD03', CAST(N'2000-03-20T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32008', N'Phạm Thu Thuỷ', N'CD32', CAST(N'1986-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT04', N'QH016 ', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32009', N'Nguyễn Thành Nam', N'CD32', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32010', N'Đỗ Thị Quỳnh Như', N'CD32', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32011', N'Bùi Thị Nhàn', N'CD32', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32012', N'Nguyễn Thành Phú', N'CD32', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32013', N'Lương Đình Phụ', N'CD32', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD32014', N'Vũ Xuân Phong', N'CD32', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD03', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33001', N'Hoàng Văn Bách', N'CD33', CAST(N'1985-12-22T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT01', N'QH007 ', N'Bình Dương', N'TD04', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33002', N'Nguyễn Tiến Hậu', N'CD33', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT02', N'QH015 ', N'Bình Dương', N'TD04', CAST(N'2001-12-12T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33003', N'Đặng Thái Sơn', N'CD33', CAST(N'1986-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG02', N'TT06', N'QH001 ', N'Bình Dương', N'TD04', CAST(N'2003-12-22T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33004', N'Nguyễn Mạnh Tiến', N'CD33', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT01', N'QH006 ', N'Bình Dương', N'TD04', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33005', N'Nguyễn Thuý Quỳnh', N'CD33', CAST(N'1981-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG01', N'TT01', N'QH008 ', N'Bình Dương', N'Thạc sỹ', CAST(N'1998-12-12T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33006', N'Bùi Thanh Duy', N'CD33', CAST(N'1981-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG02', N'TT02', N'QH012 ', N'Bình Dương', N'TD04', CAST(N'1996-03-26T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33007', N'Vũ Thanh Sơn', N'CD33', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33008', N'Đỗ Danh Thành', N'CD33', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33009', N'Nguyễn Thị Phương Thảo', N'CD33', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33010', N'Nguyễn Thị Thanh', N'CD33', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33011', N'Phan Văn Thịnh', N'CD33', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33012', N'Bùi Thị Thuỳ', N'CD33', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33013', N'Phạm Văn Tiến', N'CD33', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33014', N'Đinh Ngọc Vinh', N'CD33', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD33015', N'Phạm Văn Đại', N'CD33', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34001', N'Nguyễn Thuý Quỳnh', N'CD34', CAST(N'1974-03-17T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'Thạc sỹ', CAST(N'1999-03-26T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34002', N'Nguyễn Minh Sơn', N'CD34', CAST(N'1981-04-14T00:00:00.000' AS DateTime), N'Nam  ', N'DT05', N'TG04', N'TT01', N'QH004 ', N'Bình Dương', N'TD04', CAST(N'2000-03-20T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34003', N'Vũ Thị Thanh Thảo', N'CD34', CAST(N'1975-04-05T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG01', N'TT01', N'QH005 ', N'Bình Dương', N'Thạc sỹ', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34004', N'Nguyễn Quang Thắng', N'CD34', CAST(N'1978-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT03', N'TG01', N'TT02', N'QH013 ', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34005', N'Nguyến Thị Thu', N'CD34', CAST(N'1982-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG01', N'TT01', N'QH007 ', N'Bình Dương', N'TD04', CAST(N'2000-03-20T00:00:00.000' AS DateTime), N'CV04', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34009', N'Hoàng Thị Thu Hương', N'CD34', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34010', N'Lương Xuân Chính', N'CD34', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34011', N'Đỗ An Giang', N'CD34', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34012', N'Hoàng Thị Khánh Chi', N'CD34', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34013', N'Dương Đức Thọ', N'CD34', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34014', N'Trịnh Tiến Thành', N'CD34', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34015', N'Lê Ngọc An', N'CD34', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34016', N'Doãn Hải Bằng', N'CD34', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34017', N'Nguyễn Thị Cảnh', N'CD34', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34018', N'Trần Quý Chi', N'CD34', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34019', N'Nguyễn Thị Dương', N'CD34', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD34020', N'Trần Duy Điệp', N'CD34', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35001', N'Nguyễn Thị Thuận', N'CD35', CAST(N'1981-04-14T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD04', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35002', N'Phạm Thu Thuỷ', N'CD35', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nữ   ', N'DT03', N'TG01', N'TT02', N'QH015 ', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35003', N'Nguyễn Mạnh Tiến', N'CD35', CAST(N'1979-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT05', N'QH017 ', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35004', N'Đào Ngọc Toàn', N'CD35', CAST(N'1982-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT04', N'TG02', N'TT01', N'QH006 ', N'Bình Dương', N'TD04', CAST(N'2001-12-22T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35005', N'Nguyễn Phú Toàn', N'CD35', CAST(N'1981-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD04', CAST(N'2001-03-12T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35006', N'Phạm Văn Tới', N'CD35', CAST(N'1983-09-28T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH006 ', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35007', N'Vũ Đình Trưởng', N'CD35', CAST(N'1975-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT04', N'QH016 ', N'Bình Dương', N'Thạc sỹ', CAST(N'2001-12-22T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35008', N'Đoàn Thanh Tuấn', N'CD35', CAST(N'1980-04-14T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG04', N'TT05', N'QH017 ', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35009', N'Vũ Anh Tuấn', N'CD35', CAST(N'1982-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT04', N'TG01', N'TT02', N'QH013 ', N'Bình Dương', N'Thạc sỹ', CAST(N'2000-03-20T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35010', N'Nguyễn Trung Tuyến', N'CD35', CAST(N'1984-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG01', N'TT02', N'QH015 ', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV01', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35011', N'Nguyễn Mai Hương', N'CD35', CAST(N'1981-12-04T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT02', N'QH014 ', N'Bình Dương', N'TD04', CAST(N'2001-03-25T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35012', N'Trương Thu Hằng', N'CD35', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35013', N'Đỗ Thị Thuỳ Hương', N'CD35', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35014', N'Lê Thị Vân Hà', N'CD35', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35015', N'Hoàng Thị Hồng Hạnh', N'CD35', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35016', N'Bùi Thị Vũ Hậu', N'CD35', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35017', N'Trần Thị Hiền', N'CD35', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35018', N'Đinh Thị Thu Hiền', N'CD35', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35019', N'Bùi Trung Hiếu', N'CD35', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35020', N'Đỗ Văn Hoà', N'CD35', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD35021', N'Nguyễn Thị Huệ', N'CD35', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36001', N'Đặng Thái Sơn', N'CD36', CAST(N'1980-12-04T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT06', N'QH001 ', N'Bình Dương', N'Thạc sỹ', CAST(N'1998-12-12T00:00:00.000' AS DateTime), N'CV01', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36002', N'Phạm Thu Thuỷ', N'CD36', CAST(N'1972-04-05T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG01', N'TT02', N'QH015 ', N'Bình Dương', N'TD04', CAST(N'1996-03-26T00:00:00.000' AS DateTime), N'CV02', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36003', N'Nguyễn Tiến Hậu', N'CD36', CAST(N'1974-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT01', N'QH004 ', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV05', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36004', N'Nguyễn Thuý Quỳnh', N'CD36', CAST(N'1977-12-22T00:00:00.000' AS DateTime), N'Nữ   ', N'DT02', N'TG02', N'TT01', N'QH007 ', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'CV04', N'Mất sổ đoàn', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36005', N'Phạm Thu Thuỷ', N'CD36', CAST(N'1973-03-17T00:00:00.000' AS DateTime), N'Nữ   ', N'DT01', N'TG01', N'TT04', N'QH016 ', N'Bình Dương', N'TD04', CAST(N'1996-03-26T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36006', N'Đặng Thái Sơn', N'CD36', CAST(N'1970-04-05T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG02', N'TT02', N'QH012 ', N'Bình Dương', N'Thạc sỹ', CAST(N'1998-12-12T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36007', N'Nguyễn Mạnh Tiến', N'CD36', CAST(N'1974-03-17T00:00:00.000' AS DateTime), N'Nam  ', N'DT02', N'TG01', N'TT01', N'QH004 ', N'Bình Dương', N'TD04', CAST(N'2001-12-12T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36008', N'Nguyễn Mạnh Ngọc', N'CD36', CAST(N'1981-04-18T00:00:00.000' AS DateTime), N'Nam  ', N'DT01', N'TG02', N'TT01', N'QH009 ', N'Bình Dương', N'Thạc sỹ', CAST(N'1996-03-26T00:00:00.000' AS DateTime), N'CV05', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36009', N'Nguyễn Thị Huệ', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36010', N'Đoàn Trung Kiên', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36011', N'Lý Thị Ngọc Liên', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36012', N'Hoàng Mạnh Linh', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36013', N'Doãn Thị Phương Ninh', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36014', N'Nguyễn Xuân Quỳnh', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36015', N'Đào Kim Quyên', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36016', N'Trần Đức Quyết', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36017', N'Vũ Thị Thanh Tâm', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36018', N'Lê Đức Tài', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36019', N'Nguyễn Đức Thắng', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36020', N'Phạm Trường Thọ', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nam  ', N'', N'', N'', N'', N'Bình Dương', N'Thạc sỹ', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVien] ([MaDoanVien], [TenDoanVien], [MaChiDoan], [NgaySinh], [GioiTinh], [MaDanToc], [MaTonGiao], [MaTinhThanh], [MaQuanHuyen], [QueQuan], [TrinhDo], [NgayVaoDoan], [MaChucVu], [GhiChu], [TrangThai]) VALUES (N'CD36021', N'Phạm Thị Thanh', N'CD36', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nữ   ', N'', N'', N'', N'', N'Bình Dương', N'TD04', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', N'', N'K')
INSERT [dbo].[DoanVienKha] ([IDDoanVienKha], [MoTaDoanVienKha]) VALUES (N'A', N'Số ĐV Khá trở lên >=2/3 tổng số ĐV')
INSERT [dbo].[DoanVienKha] ([IDDoanVienKha], [MoTaDoanVienKha]) VALUES (N'B', N'2/3 tổng số ĐV>Số ĐV Khá trở lên>=1/2 tổng số ĐV')
INSERT [dbo].[DoanVienKha] ([IDDoanVienKha], [MoTaDoanVienKha]) VALUES (N'C', N'1/2 tổng số ĐV>Số ĐV Khá trở lên>=1/3 tổng số ĐV')
INSERT [dbo].[DoanVienKha] ([IDDoanVienKha], [MoTaDoanVienKha]) VALUES (N'D', N'Số ĐV Khá trở lên<1/3 tổng số ĐV')
INSERT [dbo].[DoanVienYeuKem] ([IDDoanVienYeuKem], [MoTaDoanVienYeuKem]) VALUES (N'A', N'Không có ĐV Yếu kém')
INSERT [dbo].[DoanVienYeuKem] ([IDDoanVienYeuKem], [MoTaDoanVienYeuKem]) VALUES (N'B', N'Số ĐV Yếu kém<=1/10 tổng số ĐV')
INSERT [dbo].[DoanVienYeuKem] ([IDDoanVienYeuKem], [MoTaDoanVienYeuKem]) VALUES (N'C', N'1/10 tổng số ĐV<Số ĐV Yếu kém<=3/10 tổng số ĐV')
INSERT [dbo].[DoanVienYeuKem] ([IDDoanVienYeuKem], [MoTaDoanVienYeuKem]) VALUES (N'D', N'Số ĐV Yếu kém>3/10 tổng số ĐV')
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi]) VALUES (N'DV01', N'Chi đoàn')
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi]) VALUES (N'DV02', N'Liên chi')
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi]) VALUES (N'DV03', N'Đoàn trường')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB001', N'CD35007', N'Thử thách 1 năm')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB002', N'CD34004', N'Chuyển công tác')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB004', N'CD01007', N'Thử thách 2 năm')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB005', N'CD18001', N'Thử thách 2 năm')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB006', N'CD34004', N'Thử thách 2 năm')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB009', N'CD11001', N'Thử thách 2 năm')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB010', N'CD19001', N'Thử thách 2 năm')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB011', N'CD21002', N'Thử thách 2 năm')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB012', N'CD23001', N'Thử thách 2 năm')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB013', N'CD24004', N'Thử thách 2 năm')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB014', N'CD23001', N'Thử thách 2 năm')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB015', N'CD01009', N'Du học nước ngoài ')
INSERT [dbo].[DuBi] ([MaDuBi], [MaDoanVien], [LiDo]) VALUES (N'DB016', N'CD01008', N'Du học nước ngoài ')
INSERT [dbo].[HocTap] ([IDHocTap], [MoTaHocTap]) VALUES (N'A', N'100% môn thi đạt vòng 1, điểm trung bình trung học tập >=6,0')
INSERT [dbo].[HocTap] ([IDHocTap], [MoTaHocTap]) VALUES (N'B', N'Số môn thi vòng 1 không đạt <=1/3 số môn thi, điểm TBT học tập >=6,0')
INSERT [dbo].[HocTap] ([IDHocTap], [MoTaHocTap]) VALUES (N'C', N'Số môn thi vòng 1 không đạt<=1/2 số môn thi, điểm TBT học tập>=5,0')
INSERT [dbo].[HocTap] ([IDHocTap], [MoTaHocTap]) VALUES (N'D', N'Số môn thi vòng 1 không đạt>1/2 số môn thi')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT001', N'CD08003', CAST(N'2007-12-03T00:00:00.000' AS DateTime), N'Hoạt động Đoàn nhiệt tình', N'Phần thưởng Sao tháng giêng')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT002', N'CD09002', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT003', N'CD19005', CAST(N'2007-11-02T00:00:00.000' AS DateTime), N'Nghiên cứu khoa học', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT004', N'CD20003', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Thi Olympic tiếng Anh', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT005', N'CD21002', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT007', N'CD22002', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Nghiên cứu khoa học', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT008', N'CD01007', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT009', N'CD01008', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT010', N'CD02004', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Lớp trưởng xuất sắc', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT011', N'CD02005', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT012', N'CD03006', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt, nhiệt tình với công tác Đoàn', N'Phần thưởng nữ sinh xuất sắc ngành CNTT')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT013', N'CD03005', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Tình nguyện viên nhiệt tình', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT014', N'CD04002', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT015', N'CD04003', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT016', N'CD05003', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Bí thư xuất sắc', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT017', N'CD05002', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT018', N'CD06002', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT019', N'CD07004', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT020', N'CD08002', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Huy chương bạc bơi lội', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT021', N'CD09001', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT022', N'CD10002', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Nghiên cứu khoa học', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT023', N'CD10004', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT024', N'CD11002', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt, nhiệt tình với công tác Đoàn', N'Phần thưởng nữ sinh xuất sắc ngành CNTT')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT025', N'CD12005', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Nghiên cứu khoa học', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT026', N'CD13004', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT027', N'CD14002', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT028', N'CD15002', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Huy chương bạc bơi lội', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT029', N'CD15004', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT030', N'CD16004', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT031', N'CD17005', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Lớp trưởng xuất sắc', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT032', N'CD18002', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT033', N'CD19001', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Tình nguyện viên nhiệt tình', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT034', N'CD22001', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Lớp trưởng xuất sắc', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT035', N'CD23001', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Bí thư xuất sắc', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT036', N'CD23004', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT037', N'CD24002', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT038', N'CD24005', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Tình nguyện viên nhiệt tình', N'Khen thưởng SV tiêu biểu')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT039', N'CD25003', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT040', N'CD26004', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT048', N'CD34003', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT049', N'CD35001', CAST(N'2008-02-13T00:00:00.000' AS DateTime), N'Học tập tốt', N'Giấy khen')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT050', N'CD35007', CAST(N'2008-10-15T00:00:00.000' AS DateTime), N'Nhiệt tình trong công tác Đoàn ', N'Bằng khen của trung ương Đoàn')
INSERT [dbo].[KhenThuong] ([MaKhenThuong], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KT051', N'CD01002', CAST(N'2008-11-12T00:00:00.000' AS DateTime), N'Học tập tốt ', N'Sinh viên tiêu biểu ')
INSERT [dbo].[KiLuat] ([MaKiLuat], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KL001', N'CD08002', CAST(N'2008-12-03T00:00:00.000' AS DateTime), N'Không chấp hành mệnh lệnh của cấp trên', N'Hạ hạnh kiểm')
INSERT [dbo].[KiLuat] ([MaKiLuat], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KL002', N'CD26004', CAST(N'2008-05-15T00:00:00.000' AS DateTime), N'Không tham dự đại hội chi đoàn', N'Hạ hạnh kiểm')
INSERT [dbo].[KiLuat] ([MaKiLuat], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KL003', N'CD16003', CAST(N'2008-12-04T00:00:00.000' AS DateTime), N'Không tham dự hội nghị nâng cao chất lượng học tập', N'Hạ hạnh kiểm')
INSERT [dbo].[KiLuat] ([MaKiLuat], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KL004', N'CD22002', CAST(N'2008-04-15T00:00:00.000' AS DateTime), N'Không tham dự hội nghị nâng cao chất lượng hoc tập', N'Hạ hạnh kiểm')
INSERT [dbo].[KiLuat] ([MaKiLuat], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KL005', N'CD03002', CAST(N'2008-04-15T00:00:00.000' AS DateTime), N'Không tham dự hội nghị nâng cao chất lượng hoc tập', N'Hạ hạnh kiểm')
INSERT [dbo].[KiLuat] ([MaKiLuat], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KL006', N'CD01007', CAST(N'2008-12-03T00:00:00.000' AS DateTime), N'Không chấp hành mệnh lệnh của cấp trên', N'Hạ hạnh kiểm')
INSERT [dbo].[KiLuat] ([MaKiLuat], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KL007', N'CD02004', CAST(N'2008-12-04T00:00:00.000' AS DateTime), N'Không tham dự hội nghị nâng cao chất lượng học tập', N'Hạ hạnh kiểm')
INSERT [dbo].[KiLuat] ([MaKiLuat], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KL008', N'CD02003', CAST(N'2008-05-15T00:00:00.000' AS DateTime), N'Không tham dự đại hội chi đoàn', N'Hạ hạnh kiểm')
INSERT [dbo].[KiLuat] ([MaKiLuat], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KL009', N'CD03004', CAST(N'2008-12-04T00:00:00.000' AS DateTime), N'Không tham dự hội nghị nâng cao chất lượng học tập', N'Hạ hạnh kiểm')
INSERT [dbo].[KiLuat] ([MaKiLuat], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KL010', N'CD16004', CAST(N'2008-12-03T00:00:00.000' AS DateTime), N'Không chấp hành mệnh lệnh của cấp trên', N'Hạ hạnh kiểm')
INSERT [dbo].[KiLuat] ([MaKiLuat], [MaDoanVien], [Ngay], [LiDo], [HinhThuc]) VALUES (N'KL011', N'CD26005', CAST(N'2008-12-04T00:00:00.000' AS DateTime), N'Không tham dự hội nghị nâng cao chất lượng học tập', N'Hạ hạnh kiểm')
INSERT [dbo].[LienChi] ([MaLienChi], [TenLienChi]) VALUES (N'LC01', N'Liên chi Kinh tế')
INSERT [dbo].[LienChi] ([MaLienChi], [TenLienChi]) VALUES (N'LC02', N'Liên chi Kiến trúc, Xây dựng và Mỹ thuật')
INSERT [dbo].[LienChi] ([MaLienChi], [TenLienChi]) VALUES (N'LC03', N'Liên chi Kĩ thuật - Công nghệ')
INSERT [dbo].[LienChi] ([MaLienChi], [TenLienChi]) VALUES (N'LC04', N'Liên chi Khoa học - Tự nhiên')
INSERT [dbo].[LienChi] ([MaLienChi], [TenLienChi]) VALUES (N'LC05', N'Liên chi Ngoại ngữ')
INSERT [dbo].[LienChi] ([MaLienChi], [TenLienChi]) VALUES (N'LC06', N'Liên chi Khoa học - Xã hội & Nhân văn')
INSERT [dbo].[LienChi] ([MaLienChi], [TenLienChi]) VALUES (N'LC07', N'Liên chi Sư phạm')
INSERT [dbo].[LienChi] ([MaLienChi], [TenLienChi]) VALUES (N'LC08', N'Liên chi Khoa học quản lý')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenHan]) VALUES (N'ND01', N'Doantruong', N'A6-65-A4-59-20-42-2F-9D-41-7E-48-67-EF-DC-4F-B8-A0-4A-1F-3F-FF-1F-A0-7E-99-8E-86-F7-F7-A2-7A-E3', N'*     ')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenHan]) VALUES (N'ND02', N'lienchitin', N'A6-65-A4-59-20-42-2F-9D-41-7E-48-67-EF-DC-4F-B8-A0-4A-1F-3F-FF-1F-A0-7E-99-8E-86-F7-F7-A2-7A-E3', N'LCLC02')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenHan]) VALUES (N'ND03', N'chidoancnt01cd01', N'A6-65-A4-59-20-42-2F-9D-41-7E-48-67-EF-DC-4F-B8-A0-4A-1F-3F-FF-1F-A0-7E-99-8E-86-F7-F7-A2-7A-E3', N'CDCD01')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenHan]) VALUES (N'ND04', N'chidoandkt01cd01', N'A6-65-A4-59-20-42-2F-9D-41-7E-48-67-EF-DC-4F-B8-A0-4A-1F-3F-FF-1F-A0-7E-99-8E-86-F7-F7-A2-7A-E3', N'CDCD17')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenHan]) VALUES (N'ND05', N'123', N'A6-65-A4-59-20-42-2F-9D-41-7E-48-67-EF-DC-4F-B8-A0-4A-1F-3F-FF-1F-A0-7E-99-8E-86-F7-F7-A2-7A-E3', N'CDCD30')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenHan]) VALUES (N'ND06', N'thanhtai', N'A6-65-A4-59-20-42-2F-9D-41-7E-48-67-EF-DC-4F-B8-A0-4A-1F-3F-FF-1F-A0-7E-99-8E-86-F7-F7-A2-7A-E3', N'CDCD02')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenHan]) VALUES (N'ND07', N'tai', N'A6-65-A4-59-20-42-2F-9D-41-7E-48-67-EF-DC-4F-B8-A0-4A-1F-3F-FF-1F-A0-7E-99-8E-86-F7-F7-A2-7A-E3', N'LCLC02')
INSERT [dbo].[PhongTrao] ([IDPhongTrao], [MoTaPhongTrao]) VALUES (N'A', N'Tham gia đầy đủ, nhiệt tình,hiệu quả các hoạt động Đoàn, Hội các cấp')
INSERT [dbo].[PhongTrao] ([IDPhongTrao], [MoTaPhongTrao]) VALUES (N'B', N'Tham gia song chưa đầy đủ, chưa nhiệt tình, chưa hiệu quả')
INSERT [dbo].[PhongTrao] ([IDPhongTrao], [MoTaPhongTrao]) VALUES (N'C', N'Ít tham gia hoạt động và sinh hoạt lớp, sinh hoạt chi đoàn')
INSERT [dbo].[PhongTrao] ([IDPhongTrao], [MoTaPhongTrao]) VALUES (N'D', N'Không tham gia hoạt động hoặc có hành động đi ngược lại phong trào chung')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN01', N'Vững mạnh', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN02', N'Khá', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN03', N'Vững mạnh', N'Khá', N'Khá')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN04', N'Vững mạnh', N'Trung bình', N'Khá')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN05', N'Vững mạnh', N'Yếu kém', N'Khá')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN06', N'Khá', N'Khá', N'Khá')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN07', N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN08', N'Trung bình', N'Vững mạnh', N'Khá')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN09', N'Yếu kém', N'Vững mạnh', N'Khá')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN10', N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN11', N'Khá', N'Yếu kém', N'Trung bình')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN12', N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN13', N'Yếu kém', N'Khá', N'Trung bình')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN14', N'Yếu kém', N'Trung bình', N'Trung bình')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN15', N'Trung bình', N'Yếu kém', N'Yếu kém')
INSERT [dbo].[PLCDCaNam] ([IDPLCDCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLCDCN16', N'Yếu kém', N'Yếu kém', N'Yếu kém')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK01', N'A', N'A', N'Vững mạnh')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK02', N'A', N'B', N'Khá')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK03', N'B', N'A', N'Khá')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK04', N'B', N'B', N'Khá')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK05', N'A', N'C', N'Trung bình')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK06', N'C', N'A', N'Trung bình')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK07', N'B', N'C', N'Trung bình')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK08', N'C', N'B', N'Trung bình')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK09', N'C', N'C', N'Trung bình')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK10', N'D', N'A', N'Yếu kém')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK11', N'A', N'D', N'Yếu kém')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK12', N'D', N'B', N'Yếu kém')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK13', N'B', N'D', N'Yếu kém')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK14', N'D', N'C', N'Yếu kém')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK15', N'C', N'D', N'Yếu kém')
INSERT [dbo].[PLCDHocKi] ([IDPLCDHocKi], [IDDoanVienKha], [IDDoanVienYeuKem], [XepLoai]) VALUES (N'PLCDHK16', N'D', N'D', N'Yếu kém')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN01', N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN02', N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN03', N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN04', N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN05', N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN06', N'Khá', N'Khá', N'Khá')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN07', N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN08', N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN09', N'Yếu', N'Xuất sắc', N'Khá')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN10', N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN11', N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN12', N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN13', N'Yếu', N'Khá', N'Trung bình')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN14', N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN15', N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[PLDVCaNam] ([IDPLDVCaNam], [PhanLoaiKiI], [PhanLoaiKiII], [PhanLoaiCaNam]) VALUES (N'PLDVCN16', N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0001', N'A', N'A', N'A', N'A', N'Xuất sắc')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0002', N'A', N'A', N'A', N'B', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0003', N'A', N'A', N'B', N'A', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0004', N'A', N'B', N'A', N'A', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0005', N'B', N'A', N'A', N'A', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0006', N'A', N'A', N'B', N'B', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0007', N'A', N'B', N'A', N'B', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0008', N'B', N'A', N'A', N'B', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0009', N'B', N'B', N'A', N'A', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0010', N'B', N'A', N'B', N'A', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0011', N'A', N'B', N'B', N'A', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0012', N'A', N'B', N'B', N'B', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0013', N'B', N'A', N'B', N'B', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0014', N'B', N'B', N'A', N'B', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0015', N'B', N'B', N'B', N'A', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0016', N'B', N'B', N'B', N'B', N'Khá')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0017', N'C', N'A', N'A', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0018', N'A', N'C', N'A', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0019', N'A', N'A', N'C', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0020', N'A', N'A', N'A', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0021', N'C', N'B', N'A', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0022', N'B', N'C', N'A', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0023', N'A', N'C', N'B', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0024', N'A', N'A', N'C', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0025', N'A', N'B', N'C', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0026', N'A', N'A', N'B', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0027', N'C', N'A', N'B', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0028', N'C', N'A', N'A', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0029', N'B', N'A', N'C', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0030', N'B', N'A', N'A', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0031', N'A', N'B', N'A', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0032', N'A', N'C', N'A', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0033', N'C', N'C', N'A', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0034', N'C', N'A', N'C', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0035', N'C', N'A', N'A', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0036', N'A', N'C', N'C', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0037', N'A', N'C', N'A', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0038', N'A', N'A', N'C', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0039', N'C', N'A', N'B', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0040', N'C', N'B', N'A', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0041', N'C', N'B', N'B', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0042', N'A', N'C', N'B', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0043', N'A', N'B', N'C', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0044', N'A', N'B', N'B', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0045', N'B', N'A', N'B', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0046', N'B', N'A', N'C', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0047', N'B', N'B', N'A', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0048', N'B', N'B', N'C', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0049', N'B', N'C', N'B', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0050', N'B', N'C', N'A', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0051', N'C', N'B', N'B', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0052', N'B', N'C', N'B', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0053', N'B', N'B', N'C', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0054', N'B', N'B', N'B', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0055', N'C', N'C', N'A', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0056', N'C', N'C', N'B', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0057', N'C', N'A', N'B', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0058', N'C', N'A', N'C', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0059', N'C', N'B', N'A', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0060', N'C', N'B', N'C', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0061', N'A', N'C', N'C', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0062', N'A', N'C', N'B', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0063', N'A', N'B', N'C', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0064', N'B', N'A', N'C', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0065', N'B', N'C', N'C', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0066', N'B', N'C', N'A', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0067', N'C', N'C', N'B', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0068', N'C', N'B', N'C', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0069', N'C', N'B', N'B', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0070', N'B', N'C', N'C', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0071', N'B', N'C', N'B', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0072', N'B', N'B', N'C', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0073', N'A', N'C', N'C', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0074', N'C', N'A', N'C', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0075', N'C', N'C', N'A', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0076', N'C', N'C', N'C', N'A', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0077', N'B', N'C', N'C', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0078', N'C', N'B', N'C', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0079', N'C', N'C', N'B', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0080', N'C', N'C', N'C', N'B', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0081', N'C', N'C', N'C', N'C', N'Trung bình')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0082', N'D', N'A', N'A', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0083', N'A', N'D', N'A', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0084', N'A', N'A', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0085', N'A', N'A', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0086', N'D', N'B', N'A', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0087', N'D', N'A', N'B', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0088', N'D', N'A', N'A', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0089', N'B', N'D', N'A', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0090', N'B', N'A', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0091', N'B', N'A', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0092', N'A', N'A', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0093', N'A', N'A', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0094', N'A', N'B', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0095', N'A', N'B', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0096', N'A', N'D', N'A', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0097', N'A', N'D', N'B', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0098', N'D', N'C', N'A', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0099', N'D', N'A', N'C', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0100', N'D', N'A', N'A', N'C', N'Yếu')
GO
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0101', N'C', N'D', N'A', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0102', N'C', N'A', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0103', N'C', N'A', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0104', N'A', N'A', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0105', N'A', N'A', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0106', N'A', N'D', N'A', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0107', N'A', N'D', N'C', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0108', N'A', N'C', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0109', N'A', N'C', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0110', N'D', N'B', N'B', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0111', N'D', N'B', N'A', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0112', N'D', N'A', N'B', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0113', N'A', N'B', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0114', N'A', N'B', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0115', N'A', N'D', N'B', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0116', N'B', N'A', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0117', N'B', N'A', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0118', N'B', N'B', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0119', N'B', N'B', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0120', N'B', N'D', N'A', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0121', N'B', N'D', N'B', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0122', N'D', N'C', N'B', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0123', N'D', N'C', N'A', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0124', N'D', N'B', N'A', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0125', N'D', N'B', N'C', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0126', N'D', N'A', N'B', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0127', N'D', N'A', N'C', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0128', N'A', N'B', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0129', N'A', N'B', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0130', N'A', N'D', N'B', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0131', N'A', N'D', N'C', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0132', N'A', N'C', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0133', N'A', N'C', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0134', N'C', N'A', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0135', N'C', N'A', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0136', N'C', N'B', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0137', N'C', N'B', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0138', N'C', N'D', N'A', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0139', N'C', N'D', N'B', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0140', N'B', N'A', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0141', N'B', N'A', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0142', N'B', N'D', N'A', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0143', N'B', N'D', N'C', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0144', N'B', N'C', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0145', N'B', N'C', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0146', N'D', N'B', N'B', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0147', N'B', N'D', N'B', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0148', N'B', N'B', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0149', N'B', N'B', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0150', N'D', N'B', N'B', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0151', N'D', N'B', N'C', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0152', N'D', N'C', N'B', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0153', N'B', N'D', N'B', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0154', N'B', N'D', N'C', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0155', N'B', N'B', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0156', N'B', N'B', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0157', N'B', N'C', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0158', N'B', N'C', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0159', N'C', N'B', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0160', N'C', N'B', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0161', N'C', N'D', N'B', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0162', N'D', N'B', N'C', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0163', N'D', N'C', N'B', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0164', N'D', N'C', N'C', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0165', N'B', N'D', N'C', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0166', N'B', N'C', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0167', N'B', N'C', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0168', N'C', N'B', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0169', N'C', N'B', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0170', N'C', N'D', N'C', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0171', N'C', N'D', N'B', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0172', N'C', N'C', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0173', N'C', N'C', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0174', N'D', N'C', N'C', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0175', N'C', N'D', N'C', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0176', N'C', N'C', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0177', N'C', N'C', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0178', N'D', N'D', N'A', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0179', N'D', N'A', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0180', N'D', N'A', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0181', N'A', N'A', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0182', N'A', N'D', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0183', N'A', N'D', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0184', N'D', N'D', N'A', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0185', N'D', N'D', N'B', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0186', N'D', N'A', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0187', N'D', N'A', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0188', N'D', N'B', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0189', N'D', N'B', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0190', N'A', N'D', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0191', N'A', N'D', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0192', N'A', N'B', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0193', N'B', N'D', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0194', N'B', N'D', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0195', N'B', N'A', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0196', N'D', N'D', N'A', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0197', N'D', N'D', N'C', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0198', N'D', N'A', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0199', N'D', N'A', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0200', N'D', N'C', N'D', N'A', N'Yếu')
GO
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0201', N'D', N'C', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0202', N'A', N'D', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0203', N'A', N'D', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0204', N'A', N'C', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0205', N'C', N'A', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0206', N'C', N'D', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0207', N'C', N'D', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0208', N'D', N'D', N'B', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0209', N'D', N'B', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0210', N'D', N'B', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0211', N'B', N'D', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0212', N'B', N'D', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0213', N'B', N'B', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0214', N'D', N'D', N'B', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0215', N'D', N'D', N'C', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0216', N'D', N'B', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0217', N'D', N'B', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0218', N'D', N'C', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0219', N'D', N'C', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0220', N'C', N'D', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0221', N'C', N'D', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0222', N'C', N'B', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0223', N'B', N'D', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0224', N'B', N'D', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0225', N'B', N'C', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0226', N'D', N'D', N'C', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0227', N'D', N'C', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0228', N'D', N'C', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0229', N'C', N'C', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0230', N'C', N'D', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0231', N'C', N'D', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0232', N'D', N'D', N'D', N'A', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0233', N'D', N'D', N'A', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0234', N'D', N'A', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0235', N'A', N'D', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0236', N'D', N'D', N'D', N'B', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0237', N'D', N'D', N'B', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0238', N'D', N'B', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0239', N'B', N'D', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0240', N'D', N'D', N'D', N'C', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0241', N'D', N'D', N'C', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0242', N'D', N'C', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0243', N'C', N'D', N'D', N'D', N'Yếu')
INSERT [dbo].[PLDVHocKi] ([IDPLDVHocKi], [IDHocTap], [IDRenLuyen], [IDPhongTrao], [IDDoanPhi], [XepLoai]) VALUES (N'PLDVHK0244', N'D', N'D', N'D', N'D', N'Yếu')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0002', N'CD34', CAST(204 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0003', N'CD05', CAST(240 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0004', N'CD07', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0005', N'CD09', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0006', N'CD20', CAST(180 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0007', N'CD01', CAST(132 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Mai Văn Duy', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0008', N'CD06', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0009', N'CD29', CAST(156 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0010', N'CD01', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0011', N'CD02', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0012', N'CD03', CAST(192 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0013', N'CD04', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0014', N'CD08', CAST(132 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Tùng', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0015', N'CD10', CAST(120 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Giang Kiều Oanh', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0016', N'CD12', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0017', N'CD14', CAST(132 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lâm Thiên Tuân', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0018', N'CD15', CAST(132 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Đại', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0019', N'CD16', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0020', N'CD17', CAST(180 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0021', N'CD18', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0022', N'CD19', CAST(120 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phùng Văn Kiệm', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0023', N'CD21', CAST(156 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0024', N'CD22', CAST(132 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thị Thư', N'Phạm Tiến Trường')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0025', N'CD23', CAST(120 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Ngô Quang Trọng', N'Phạm Tiến Trường')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0026', N'CD24', CAST(156 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân', N'Phạm Tiến Trường')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0027', N'CD25', CAST(180 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân', N'Phạm Tiến Trường')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0028', N'CD26', CAST(168 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà', N'Phạm Tiến Trường')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0029', N'CD27', CAST(156 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0030', N'CD28', CAST(132 AS Decimal(18, 0)), CAST(12 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Hậu', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0031', N'CD28', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0032', N'CD27', CAST(156 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0033', N'CD26', CAST(168 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà', N'Phạm Tiến Trường')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0034', N'CD25', CAST(180 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân', N'Phạm Tiến Trường')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0035', N'CD24', CAST(156 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân', N'Phạm Tiến Trường')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0036', N'CD34', CAST(204 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0037', N'CD35', CAST(252 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0038', N'CD05', CAST(240 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0039', N'CD23', CAST(120 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Ngô Quang Trọng', N'Phạm Tiến Trường')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0040', N'CD22', CAST(132 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thị Thư', N'Phạm Tiến Trường')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0041', N'CD21', CAST(156 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đào Văn Thắng', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0042', N'CD20', CAST(180 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0043', N'CD19', CAST(120 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phùng Văn Kiệm', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0044', N'CD18', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0045', N'CD17', CAST(180 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0046', N'CD16', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0047', N'CD15', CAST(132 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Đại', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0048', N'CD14', CAST(132 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lâm Thiên Tuân', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0049', N'CD13', CAST(168 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0050', N'CD03', CAST(192 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0051', N'CD13', CAST(168 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0052', N'CD12', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0053', N'CD11', CAST(132 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Hưng', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0054', N'CD11', CAST(132 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Hưng', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0055', N'CD10', CAST(120 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Giang Kiều Oanh', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0056', N'CD09', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0057', N'CD08', CAST(132 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Tùng', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0058', N'CD07', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0059', N'CD06', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0060', N'CD04', CAST(144 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng', N'Nguyễn Quang Thắng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0061', N'CD30', CAST(168 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0062', N'CD30', CAST(168 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0063', N'CD31', CAST(168 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thằng', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0064', N'CD31', CAST(168 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thằng', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0065', N'CD32', CAST(168 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Thanh Duy', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0066', N'CD32', CAST(168 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0067', N'CD33', CAST(66 AS Decimal(18, 0)), CAST(114 AS Decimal(18, 0)), 2008, N'Hoàng Văn Bách', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0068', N'CD33', CAST(180 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0069', N'CD35', CAST(252 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Trung Tuyến', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0070', N'CD36', CAST(252 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn', N'Phạm Tiến Trường')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0071', N'CD36', CAST(252 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn', N'Phạm Tiến Trường')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0072', N'CD29', CAST(156 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên', N'Đặng Thái Sơn')
INSERT [dbo].[QLDPChiDoan] ([MaQLDPChiDoan], [MaChiDoan], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPCD0073', N'CD34', CAST(202 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), 2009, N'Nguyễn Thuý Quỳnh ', N'Nguyễn Quang Thắng ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0002', N'CD02001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0003', N'CD02002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0004', N'CD01003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0005', N'CD01001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0006', N'CD01001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0007', N'CD01003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0008', N'CD01002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0009', N'CD01002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0010', N'CD01002', CAST(6 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), 2009, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0011', N'CD01004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0012', N'CD01005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0013', N'CD01006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0014', N'CD01007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0015', N'CD01008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0016', N'CD01009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0017', N'CD01010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0018', N'CD01011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0019', N'CD02003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0020', N'CD02004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0021', N'CD02005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0022', N'CD02006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0023', N'CD02007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0024', N'CD02008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0025', N'CD02009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0026', N'CD02010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0027', N'CD02011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0028', N'CD02012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0029', N'CD03001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0030', N'CD03002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0031', N'CD03003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0032', N'CD03004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0033', N'CD03005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0034', N'CD03006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0035', N'CD03007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0036', N'CD03008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0037', N'CD03009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0038', N'CD03010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0039', N'CD03011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0040', N'CD03013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0041', N'CD03013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0042', N'CD03014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0043', N'CD03015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0044', N'CD03016', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0045', N'CD04001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0046', N'CD04002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0047', N'CD04003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0048', N'CD04004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0049', N'CD04005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0050', N'CD04006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0051', N'CD04007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0052', N'CD04008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0053', N'CD04009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0054', N'CD04010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0055', N'CD04011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0056', N'CD04012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0057', N'CD05001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0058', N'CD05002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0059', N'CD05003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0060', N'CD05004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0061', N'CD05005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0062', N'CD05006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0063', N'CD05007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0064', N'CD05008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0065', N'CD05009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0066', N'CD05010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0067', N'CD05011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0068', N'CD05012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0069', N'CD05013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0070', N'CD05014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0071', N'CD05015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0072', N'CD05016', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0073', N'CD05017', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0074', N'CD05019', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0075', N'CD05020', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0076', N'CD06001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0077', N'CD06002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0078', N'CD06003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0079', N'CD06004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0080', N'CD06005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0081', N'CD06006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0082', N'CD06007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0083', N'CD06008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0084', N'CD06009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0085', N'CD06010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0086', N'CD06011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0087', N'CD06012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0088', N'CD07002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0089', N'CD07004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0090', N'CD07003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0091', N'CD07005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0092', N'CD07006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0093', N'CD07007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0094', N'CD07008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0095', N'CD07009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0096', N'CD07010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0097', N'CD07011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0098', N'CD07012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0099', N'CD07013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0100', N'CD08001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0101', N'CD08002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Tùng')
GO
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0102', N'CD08003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0103', N'CD08004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0104', N'CD08005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0105', N'CD08006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0106', N'CD08007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0107', N'CD08008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0108', N'CD08009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0109', N'CD08010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0110', N'CD08011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0111', N'CD09001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0112', N'CD09002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0113', N'CD09003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0114', N'CD09004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0115', N'CD09005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0116', N'CD09006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0117', N'CD09007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0118', N'CD09008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0119', N'CD09009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0120', N'CD09010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0121', N'CD09011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0122', N'CD09012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0123', N'CD10001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0124', N'CD10002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0125', N'CD10003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0126', N'CD10004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0127', N'CD10007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0128', N'CD10006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0129', N'CD10005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0130', N'CD10008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0131', N'CD10009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0132', N'CD10010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0133', N'CD11001', CAST(6 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0134', N'CD11002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0135', N'CD11003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0136', N'CD11004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0137', N'CD11005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0138', N'CD11006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0139', N'CD11007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0140', N'CD11008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0141', N'CD11009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0142', N'CD11010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0143', N'CD11011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0144', N'CD12001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0145', N'CD12002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0146', N'CD12003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0147', N'CD12004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0148', N'CD12005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0149', N'CD12006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0150', N'CD12007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0151', N'CD12008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0152', N'CD12009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0153', N'CD12010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0154', N'CD12011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0155', N'CD12012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0156', N'CD13001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0157', N'CD13002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0158', N'CD13003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0159', N'CD13004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0160', N'CD13005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0161', N'CD13006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0162', N'CD13007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0163', N'CD13008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0164', N'CD13009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0165', N'CD13010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0166', N'CD13011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0167', N'CD13012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0168', N'CD13013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0169', N'CD13014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0170', N'CD14001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0171', N'CD14002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0172', N'CD14003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0173', N'CD14004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0174', N'CD14005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0175', N'CD14006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0176', N'CD14007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0177', N'CD14008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0178', N'CD14009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0179', N'CD14010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0180', N'CD14011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0181', N'CD15001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Đại')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0182', N'CD15002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Đại')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0183', N'CD15003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Đại')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0184', N'CD15004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Đại')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0185', N'CD15005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Đại')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0186', N'CD15006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Đại')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0187', N'CD15007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Đại')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0188', N'CD15008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Đại')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0189', N'CD15009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Đại')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0190', N'CD15010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Đại')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0191', N'CD15011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Văn Đại')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0192', N'CD16001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0193', N'CD16002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0194', N'CD16004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0195', N'CD16003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0196', N'CD16005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0197', N'CD16006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0198', N'CD16007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0199', N'CD16008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0200', N'CD16009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0201', N'CD16010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung')
GO
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0202', N'CD16011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0203', N'CD16012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0204', N'CD34001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0205', N'CD34002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0206', N'CD34003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0207', N'CD34004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0208', N'CD34005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0209', N'CD34009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0210', N'CD34010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0211', N'CD34011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0212', N'CD34012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0213', N'CD34013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0214', N'CD34014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0215', N'CD34015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0216', N'CD34016', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0217', N'CD34017', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0218', N'CD34018', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0219', N'CD34019', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0220', N'CD34020', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0221', N'CD17001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0222', N'CD17002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0223', N'CD17003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0224', N'CD17004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0225', N'CD17005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0226', N'CD17006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0227', N'CD17007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0228', N'CD17008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0229', N'CD17009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0230', N'CD17010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0231', N'CD17011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0232', N'CD17012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0233', N'CD17013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0234', N'CD17014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0235', N'CD17015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0236', N'CD18001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0237', N'CD18002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0238', N'CD18003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0239', N'CD18004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0240', N'CD18005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0241', N'CD18006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0242', N'CD18007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0243', N'CD18008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0244', N'CD18009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0245', N'CD18010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0246', N'CD18011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0247', N'CD18012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0248', N'CD19001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0249', N'CD19002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0250', N'CD19003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0251', N'CD19004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0252', N'CD19005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0253', N'CD19007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0254', N'CD19008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0255', N'CD19009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0256', N'CD19010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0257', N'CD19011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0258', N'CD20001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0259', N'CD20002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0260', N'CD20003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0261', N'CD20004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0262', N'CD20005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0263', N'CD20006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0264', N'CD20007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0265', N'CD20008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0266', N'CD20009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0267', N'CD20010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0268', N'CD20011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0269', N'CD20012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0270', N'CD20013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0271', N'CD20014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0272', N'CD20015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0273', N'CD21001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0274', N'CD21002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0275', N'CD21003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0276', N'CD21004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0277', N'CD21005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0278', N'CD21006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0279', N'CD21007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0280', N'CD21008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0281', N'CD21009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0282', N'CD21010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0283', N'CD21011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0284', N'CD21012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0285', N'CD21013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đào Văn Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0286', N'CD35001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0287', N'CD35002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0288', N'CD35003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0289', N'CD35004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0290', N'CD35005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0291', N'CD35006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0292', N'CD35007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0293', N'CD35008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0294', N'CD35009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0295', N'CD35010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0296', N'CD35011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0297', N'CD35012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0298', N'CD35013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0299', N'CD35014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0300', N'CD35015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0301', N'CD35016', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
GO
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0302', N'CD35017', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0303', N'CD35018', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0304', N'CD35019', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0305', N'CD35020', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0306', N'CD35021', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Trung Tuyến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0307', N'CD22001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0308', N'CD22002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0309', N'CD22003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0310', N'CD22004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0311', N'CD22005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0312', N'CD22006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0313', N'CD22007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0314', N'CD22008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0315', N'CD22009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0316', N'CD22010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0317', N'CD22011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0318', N'CD23001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0319', N'CD23002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0320', N'CD23003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0321', N'CD23004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0322', N'CD23005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0323', N'CD23006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0324', N'CD23007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0325', N'CD24001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0326', N'CD23009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0327', N'CD23010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0328', N'CD24002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0329', N'CD24003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0330', N'CD24004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0331', N'CD24005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0332', N'CD24006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0333', N'CD24007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0334', N'CD24008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0335', N'CD24009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0336', N'CD24010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0337', N'CD24011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0338', N'CD24012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0339', N'CD24013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0340', N'CD25001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0341', N'CD25002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0342', N'CD25003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0343', N'CD25004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0344', N'CD25005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0345', N'CD25006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0346', N'CD25007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0347', N'CD25008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0348', N'CD25009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0349', N'CD25010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0350', N'CD25011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0351', N'CD25012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0352', N'CD25013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0353', N'CD25014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0354', N'CD25015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0355', N'CD26001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0356', N'CD26002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0357', N'CD26003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0358', N'CD26004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0359', N'CD26005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0360', N'CD26006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0361', N'CD26007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0362', N'CD26008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0363', N'CD26009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0364', N'CD26010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0365', N'CD26011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0366', N'CD26012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0367', N'CD26013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0368', N'CD26014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0369', N'CD36001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0370', N'CD36002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0371', N'CD36003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0372', N'CD36004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0373', N'CD36005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0374', N'CD36006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0375', N'CD36007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0376', N'CD36008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0377', N'CD36009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0378', N'CD36010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0379', N'CD36011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0380', N'CD36012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0381', N'CD36013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0382', N'CD36014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0383', N'CD36015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0384', N'CD36016', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0385', N'CD36017', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0386', N'CD36018', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0387', N'CD36019', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0388', N'CD36020', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0389', N'CD36021', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0390', N'CD27001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0391', N'CD27002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0392', N'CD27003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0393', N'CD27004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0394', N'CD27005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0395', N'CD27006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0396', N'CD27007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0397', N'CD27008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0398', N'CD27009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0399', N'CD27010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0400', N'CD27011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0401', N'CD27012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
GO
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0402', N'CD27013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0403', N'CD28001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0404', N'CD28002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0405', N'CD28003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0406', N'CD28004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0407', N'CD28005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0408', N'CD28006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0409', N'CD28007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0410', N'CD28008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0411', N'CD28009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0412', N'CD28010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0413', N'CD28011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0414', N'CD28012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0415', N'CD29001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0416', N'CD29002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0417', N'CD29003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0418', N'CD29004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0419', N'CD29005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0420', N'CD29006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0421', N'CD29007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0422', N'CD29008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0423', N'CD29009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0424', N'CD29010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0425', N'CD29011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0426', N'CD29012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0427', N'CD29013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0428', N'CD30001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0429', N'CD30002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0430', N'CD30003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0431', N'CD30004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0432', N'CD30005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0433', N'CD30006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0434', N'CD30007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0435', N'CD30008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0436', N'CD30009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0437', N'CD30010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0438', N'CD30011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0439', N'CD30012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0440', N'CD30013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0441', N'CD30014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0442', N'CD31001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0443', N'CD31002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0444', N'CD31003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0445', N'CD31004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0446', N'CD31005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0447', N'CD31006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0448', N'CD31007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0449', N'CD31008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0450', N'CD31009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0451', N'CD31010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0452', N'CD31011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0453', N'CD31012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0454', N'CD31013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0455', N'CD31014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0456', N'CD32001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0457', N'CD32002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0458', N'CD32003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0459', N'CD32004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0460', N'CD32005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0461', N'CD32006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0462', N'CD32007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0463', N'CD32008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0464', N'CD32009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0465', N'CD32010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0466', N'CD32011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0467', N'CD32012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0468', N'CD32013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0469', N'CD32014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Bùi Thanh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0470', N'CD33001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0471', N'CD33002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0472', N'CD33003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0473', N'CD33004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0474', N'CD33005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0475', N'CD33006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0476', N'CD33007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0477', N'CD33008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0478', N'CD33009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0479', N'CD33010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0480', N'CD33011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0481', N'CD33012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0482', N'CD33013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0483', N'CD33014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0484', N'CD33015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0485', N'CD01004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0486', N'CD01005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0487', N'CD01006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0488', N'CD01007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0489', N'CD01008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0490', N'CD01009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0491', N'CD01010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0492', N'CD01011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0493', N'CD07001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Mai Văn Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0494', N'CD02001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0495', N'CD02002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0496', N'CD02003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0497', N'CD02004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0498', N'CD02005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0499', N'CD02006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0500', N'CD02007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0501', N'CD02008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lương Thị Bến')
GO
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0502', N'CD02009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0503', N'CD02010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0504', N'CD02011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0505', N'CD02012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lương Thị Bến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0506', N'CD03001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0507', N'CD03002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0508', N'CD03003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0509', N'CD03004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0510', N'CD03005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0511', N'CD03006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0512', N'CD03007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0513', N'CD03008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0514', N'CD03009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0515', N'CD03010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0516', N'CD03011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0517', N'CD03012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0518', N'CD03013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0519', N'CD03014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0520', N'CD03015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0521', N'CD03016', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thành Luân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0522', N'CD04001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0523', N'CD04002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0524', N'CD04003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0525', N'CD04004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0526', N'CD04005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0527', N'CD04006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0528', N'CD04007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0529', N'CD04008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0530', N'CD04009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0531', N'CD04010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0532', N'CD04011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0533', N'CD04012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0534', N'CD05001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0535', N'CD05002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0536', N'CD05003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0537', N'CD05004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0538', N'CD05005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0539', N'CD05006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0540', N'CD05007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0541', N'CD05008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0542', N'CD05009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0543', N'CD05010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0544', N'CD05011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0545', N'CD05012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0546', N'CD05013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0547', N'CD05014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0548', N'CD05015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0549', N'CD05016', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0550', N'CD05017', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0551', N'CD05018', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0552', N'CD05019', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0553', N'CD05020', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lưu Công Hùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0554', N'CD06001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0555', N'CD06002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0556', N'CD06003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0557', N'CD06004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0558', N'CD06005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0559', N'CD06006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0560', N'CD06007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0561', N'CD06008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0562', N'CD06009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0563', N'CD06010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0564', N'CD06011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0565', N'CD06012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Phương Linh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0566', N'CD07002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0567', N'CD07003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0568', N'CD07004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0569', N'CD07005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0570', N'CD07006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0571', N'CD07007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0572', N'CD07008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0573', N'CD07009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0574', N'CD07010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0575', N'CD07011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0576', N'CD07012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0577', N'CD07013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Ngọc')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0578', N'CD08001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0579', N'CD08002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0580', N'CD08003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0581', N'CD08004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0582', N'CD08005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0583', N'CD08006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0584', N'CD08007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0585', N'CD08008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0586', N'CD08009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0587', N'CD08010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0588', N'CD08011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0589', N'CD09001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0590', N'CD09002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0591', N'CD09003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0592', N'CD09004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0593', N'CD09005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0594', N'CD09006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0595', N'CD09007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0596', N'CD09008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0597', N'CD09009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0598', N'CD09010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0599', N'CD09011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0600', N'CD09012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Tùng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0601', N'CD10001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Giang Kiều Oanh')
GO
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0602', N'CD10002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0603', N'CD10003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0604', N'CD10004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0605', N'CD10005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0606', N'CD10006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0607', N'CD10007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0608', N'CD10008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0609', N'CD10009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0610', N'CD10010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Giang Kiều Oanh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0611', N'CD11001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0612', N'CD11002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0613', N'CD11003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0614', N'CD11004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0615', N'CD11005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0616', N'CD11006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0617', N'CD11007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0618', N'CD11008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0619', N'CD11009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0620', N'CD11010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0621', N'CD11011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Văn Hưng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0622', N'CD12001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0623', N'CD12002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0624', N'CD12003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0625', N'CD12004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0626', N'CD12005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0627', N'CD12006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0628', N'CD12007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0629', N'CD12008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0630', N'CD12009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0631', N'CD12010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0632', N'CD12011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0633', N'CD12012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Hồng Cẩm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0634', N'CD13001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0635', N'CD13002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0636', N'CD13003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0637', N'CD13004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0638', N'CD13005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0639', N'CD13006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0640', N'CD13007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0641', N'CD13008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0642', N'CD13009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0643', N'CD13010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0644', N'CD13011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0645', N'CD13012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0646', N'CD13013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0647', N'CD13014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Hoà Bình')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0648', N'CD14001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0649', N'CD14002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0650', N'CD14003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0651', N'CD14004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0652', N'CD14005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0653', N'CD14006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0654', N'CD14007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0655', N'CD14008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0656', N'CD14009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0657', N'CD14010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0658', N'CD14011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Lâm Thiên Tuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0659', N'CD15001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0660', N'CD15002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0661', N'CD15003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0662', N'CD15004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0663', N'CD15005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0664', N'CD15006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0665', N'CD15007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0666', N'CD15008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0667', N'CD15009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0668', N'CD15010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0669', N'CD15011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Dũng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0670', N'CD16001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0671', N'CD16002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0672', N'CD16003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0673', N'CD16004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0674', N'CD16005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0675', N'CD16006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0676', N'CD16007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0677', N'CD16008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0678', N'CD16009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0679', N'CD16010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0680', N'CD16011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0681', N'CD16012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Trần Văn Chung')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0682', N'CD34001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0683', N'CD34002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0684', N'CD34003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0685', N'CD34004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0686', N'CD34005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0687', N'CD34009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0688', N'CD34010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0689', N'CD34011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0690', N'CD34012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0691', N'CD34013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0692', N'CD34014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0693', N'CD34015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0694', N'CD34016', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0695', N'CD34017', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0696', N'CD34018', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0697', N'CD34019', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0698', N'CD34020', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0699', N'CD17001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0700', N'CD17002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0701', N'CD17003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
GO
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0702', N'CD17004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0703', N'CD17005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0704', N'CD17006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0705', N'CD17007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0706', N'CD17008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0707', N'CD17009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0708', N'CD17010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0709', N'CD17011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0710', N'CD17012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0711', N'CD17013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0712', N'CD17014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0713', N'CD17015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đỗ Thị Hồng Việt')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0714', N'CD18001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0715', N'CD18002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0716', N'CD18003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0717', N'CD18004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0718', N'CD18005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0719', N'CD18006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0720', N'CD18007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0721', N'CD18008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0722', N'CD18009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0723', N'CD18010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0724', N'CD18011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0725', N'CD18012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Bá Hiển')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0726', N'CD19001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0727', N'CD19002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0728', N'CD19003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0729', N'CD19004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0730', N'CD19005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0731', N'CD19007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0732', N'CD19008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0733', N'CD19009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0734', N'CD19010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0735', N'CD19011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phùng Văn Kiệm')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0736', N'CD20001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0737', N'CD20002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0738', N'CD20003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0739', N'CD20004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0740', N'CD20005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0741', N'CD20006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0742', N'CD20007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0743', N'CD20008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0744', N'CD20009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0745', N'CD20010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0746', N'CD20011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0747', N'CD20012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0748', N'CD20013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0749', N'CD20014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0750', N'CD20015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0751', N'CD21001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0752', N'CD21002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0753', N'CD21003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0754', N'CD21004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0755', N'CD21005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0756', N'CD21006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0757', N'CD21007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0758', N'CD21008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0759', N'CD21009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0760', N'CD21010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0761', N'CD21011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0762', N'CD21012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0763', N'CD21013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0764', N'CD35001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0765', N'CD35002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0766', N'CD35003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0767', N'CD35004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0768', N'CD35005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0769', N'CD35006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0770', N'CD35007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0771', N'CD35008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0772', N'CD35009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0773', N'CD35010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0774', N'CD35011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0775', N'CD35012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0776', N'CD35013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0777', N'CD35014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0778', N'CD35015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0779', N'CD35016', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0780', N'CD35017', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0781', N'CD35018', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0782', N'CD35019', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0783', N'CD35020', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0784', N'CD35021', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Thuận')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0785', N'CD22001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0786', N'CD22002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0787', N'CD22003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0788', N'CD22004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0789', N'CD22005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0790', N'CD22006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0791', N'CD22007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0792', N'CD22008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0793', N'CD22009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0794', N'CD22010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0795', N'CD22011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thị Thư')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0796', N'CD23001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0797', N'CD23002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0798', N'CD23003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0799', N'CD23004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0800', N'CD23005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0801', N'CD23006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Ngô Quang Trọng')
GO
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0802', N'CD23007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0803', N'CD23008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0804', N'CD23009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0805', N'CD23010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Ngô Quang Trọng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0806', N'CD24001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0807', N'CD24002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0808', N'CD24003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0809', N'CD24004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0810', N'CD24005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0811', N'CD24006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0812', N'CD24007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0813', N'CD24008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0814', N'CD24009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0815', N'CD24010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0816', N'CD24011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0817', N'CD24012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0818', N'CD24013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thanh Vân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0819', N'CD25001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0820', N'CD25002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0821', N'CD25003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0822', N'CD25004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0823', N'CD25005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0824', N'CD25006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0825', N'CD25007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0826', N'CD25008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0827', N'CD25009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0828', N'CD25010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0829', N'CD25011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0830', N'CD25012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0831', N'CD25013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0832', N'CD25014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0833', N'CD25015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0834', N'CD26001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0835', N'CD26002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0836', N'CD26003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0837', N'CD26004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0838', N'CD26005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0839', N'CD26006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0840', N'CD26007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0841', N'CD26008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0842', N'CD26009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0843', N'CD26010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0844', N'CD26011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0845', N'CD26012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0846', N'CD26013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0847', N'CD26014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Thị Hà')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0848', N'CD36001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0849', N'CD36002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0850', N'CD36003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0851', N'CD36004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0852', N'CD36005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0853', N'CD36006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0854', N'CD36007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0855', N'CD36008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0856', N'CD36009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0857', N'CD36010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0858', N'CD36011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0859', N'CD36012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0860', N'CD36013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0861', N'CD36014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0862', N'CD36015', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0863', N'CD36016', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0864', N'CD36017', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0865', N'CD36018', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0866', N'CD36019', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0867', N'CD36020', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0868', N'CD36021', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0869', N'CD27001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0870', N'CD27002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0871', N'CD27003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0872', N'CD27004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0873', N'CD27005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0874', N'CD27006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0875', N'CD27007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0876', N'CD27008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0877', N'CD27009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0878', N'CD27010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0879', N'CD27011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0880', N'CD27012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0881', N'CD27013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0882', N'CD28001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0883', N'CD28002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0884', N'CD28003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0885', N'CD28005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0886', N'CD28006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0887', N'CD28007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0888', N'CD28008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0889', N'CD28009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0890', N'CD28010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0891', N'CD28011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0892', N'CD28012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0893', N'CD29001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0894', N'CD29002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0895', N'CD29003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0896', N'CD29004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0897', N'CD29005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0898', N'CD29006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0899', N'CD29007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0900', N'CD29008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0901', N'CD29009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
GO
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0902', N'CD29010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0903', N'CD29011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0904', N'CD29012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0905', N'CD29013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Thị Hiên')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0906', N'CD30001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0907', N'CD30002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0908', N'CD30003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0909', N'CD30004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0910', N'CD30005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0911', N'CD30006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0912', N'CD30007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0913', N'CD30008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0914', N'CD30009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0915', N'CD30010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0916', N'CD30011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0917', N'CD30012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0918', N'CD30013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0919', N'CD30014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Thu Thuỷ')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0920', N'CD31001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0921', N'CD31002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0922', N'CD31003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0923', N'CD31004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0924', N'CD31005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0925', N'CD31006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0926', N'CD31007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0927', N'CD31008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0928', N'CD31009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0929', N'CD31010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0930', N'CD31011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0931', N'CD31012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0932', N'CD31013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0933', N'CD31014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0934', N'CD32001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0935', N'CD32002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0936', N'CD32003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0937', N'CD32004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0938', N'CD32005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0939', N'CD32006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0940', N'CD32007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0941', N'CD32008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0942', N'CD32009', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0943', N'CD32010', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0944', N'CD32011', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0945', N'CD32012', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0946', N'CD32013', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0947', N'CD32014', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Bùi Danh Duy')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0948', N'CD33001', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0949', N'CD33002', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0950', N'CD33003', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0951', N'CD33004', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0952', N'CD33005', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0953', N'CD33006', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0954', N'CD33007', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'fdfd')
INSERT [dbo].[QLDPDoanVien] ([IDQLDPDoanVien], [MaDoanVien], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNhan]) VALUES (N'DPDV0955', N'CD33008', CAST(12 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Hoàng Văn Bách')
INSERT [dbo].[QLDPLienChi] ([IDQLDPLienChi], [MaLienChi], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPLC0001', N'LC01', CAST(2600 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), 2007, N'Nguyễn Quang Thắng', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPLienChi] ([IDQLDPLienChi], [MaLienChi], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPLC0002', N'LC02', CAST(1032 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Vũ Đình Trưởng', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPLienChi] ([IDQLDPLienChi], [MaLienChi], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPLC0003', N'LC03', CAST(1008 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Phạm Tiến Trường', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPLienChi] ([IDQLDPLienChi], [MaLienChi], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPLC0004', N'LC04', CAST(1140 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2007, N'Đặng Thái Sơn', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPLienChi] ([IDQLDPLienChi], [MaLienChi], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPLC0005', N'LC01', CAST(2504 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), 2008, N'Nguyễn Quang Thắng', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPLienChi] ([IDQLDPLienChi], [MaLienChi], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPLC0006', N'LC02', CAST(1032 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Vũ Đình Trưởng', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPLienChi] ([IDQLDPLienChi], [MaLienChi], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPLC0007', N'LC03', CAST(1008 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 2008, N'Phạm Tiến Trường', N'Vũ Đình Trưởng')
INSERT [dbo].[QLDPLienChi] ([IDQLDPLienChi], [MaLienChi], [SoTienNop], [SoTienThieu], [NamHoc], [NguoiNop], [NguoiNhan]) VALUES (N'DPLC0008', N'LC04', CAST(1014 AS Decimal(18, 0)), CAST(126 AS Decimal(18, 0)), 2008, N'Đặng Thái Sơn', N'Vũ Đình Trưởng')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD01', N'CD33', N'15', CAST(N'2008-10-27T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Hoàng Văn Bách ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD02', N'CD05', N'17', CAST(N'2008-10-07T00:00:00.000' AS DateTime), CAST(N'2008-11-09T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Lưu Công Hùng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD03', N'CD35', N'21', CAST(N'2008-10-14T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Trung Tuyến ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD04', N'CD11', N'8', CAST(N'2008-10-06T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Văn Hưng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD05', N'CD08', N'9', CAST(N'2006-10-08T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Thanh Tùng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD06', N'CD01', N'8', CAST(N'2008-10-06T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Mai Văn Duy ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD07', N'CD03', N'16', CAST(N'2008-10-06T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Thành Luân ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD08', N'CD02', N'10', CAST(N'2008-10-07T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Lương Thị Bến ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD09', N'CD04', N'9', CAST(N'2008-10-06T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Văn Dũng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD10', N'CD06', N'7', CAST(N'2008-10-08T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Trần Phương Linh ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD11', N'CD07', N'10', CAST(N'2008-10-06T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Mạnh Ngọc ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD12', N'CD09', N'9', CAST(N'2008-10-06T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Văn Tùng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD13', N'CD13', N'11', CAST(N'2008-10-06T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Hoà Bình ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD14', N'CD14', N'8', CAST(N'2008-10-07T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Lâm Thiên Tuân ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD15', N'CD15', N'9', CAST(N'2008-10-06T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Văn Đại ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD16', N'CD16', N'8', CAST(N'2008-10-07T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Trần Văn Chung ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD17', N'CD17', N'13', CAST(N'2008-10-13T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Đỗ Thị Hồng Việt ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD18', N'CD18', N'10', CAST(N'2008-10-14T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Bá Hiển ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD19', N'CD19', N'8', CAST(N'2008-10-13T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Phùng Văn Kiệm ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD20', N'CD20', N'12', CAST(N'2008-10-14T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Đặng Thái Sơn ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD21', N'CD21', N'9', CAST(N'2008-10-13T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Đào Văn Thắng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD22', N'CD22', N'9', CAST(N'2008-10-20T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Đặng Thị Thư ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD23', N'CD23', N'7', CAST(N'2008-10-21T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Ngô Quang Trọng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD24', N'CD24', N'11', CAST(N'2008-10-20T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Thanh Vân ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD25', N'CD25', N'11', CAST(N'2008-10-20T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Hoàng Thị Thanh Xuân ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD26', N'CD26', N'10', CAST(N'2008-10-21T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Vũ Thị Hà ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD27', N'CD10', N'9', CAST(N'2008-10-08T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Giang Kiều Oanh ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD28', N'CD36', N'21', CAST(N'2008-10-20T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Đặng Thái Sơn ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD29', N'CD32', N'13', CAST(N'2007-10-23T00:00:00.000' AS DateTime), CAST(N'2007-10-30T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Bùi Thanh Duy')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD30', N'CD31', N'12', CAST(N'2008-10-28T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Chiến Thắng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD31', N'CD30', N'11', CAST(N'2007-10-23T00:00:00.000' AS DateTime), CAST(N'2007-10-29T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Phạm Thu Thuỷ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD32', N'CD29', N'10', CAST(N'2008-10-27T00:00:00.000' AS DateTime), CAST(N'2008-10-22T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Thị Hiên ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD33', N'CD28', N'8', CAST(N'2008-10-28T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Tiến Hậu ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD34', N'CD34', N'17', CAST(N'2008-10-06T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Thuý Quỳnh ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD35', N'CD27', N'9', CAST(N'2008-10-27T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Mạnh Tiến ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD36', N'CD12', N'10', CAST(N'2008-10-07T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Phạm Hồng Cẩm ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD37', N'CD01', N'8', CAST(N'2007-10-02T00:00:00.000' AS DateTime), CAST(N'2007-10-09T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Mai Văn Duy ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD38', N'CD02', N'10', CAST(N'2007-10-02T00:00:00.000' AS DateTime), CAST(N'2007-10-09T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Lương Thị Bến ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD39', N'CD03', N'16', CAST(N'2007-10-03T00:00:00.000' AS DateTime), CAST(N'2007-10-10T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Thành Luân ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD40', N'CD04', N'9', CAST(N'2007-10-02T00:00:00.000' AS DateTime), CAST(N'2007-10-10T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Văn Dũng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD41', N'CD05', N'17', CAST(N'2007-10-01T00:00:00.000' AS DateTime), CAST(N'2007-10-09T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Lưu Công Hùng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD42', N'CD06', N'7', CAST(N'2007-10-05T00:00:00.000' AS DateTime), CAST(N'2007-10-12T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Trần Phương Linh ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD43', N'CD07', N'10', CAST(N'2007-10-02T00:00:00.000' AS DateTime), CAST(N'2007-10-09T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Mạnh Ngọc ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD44', N'CD08', N'9', CAST(N'2007-10-03T00:00:00.000' AS DateTime), CAST(N'2007-10-10T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Thanh Tùng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD45', N'CD09', N'9', CAST(N'2007-10-03T00:00:00.000' AS DateTime), CAST(N'2007-10-11T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Nguyễn Văn Tùng')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD46', N'CD10', N'9', CAST(N'2007-10-02T00:00:00.000' AS DateTime), CAST(N'2007-10-11T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Giang Kiều Oanh')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD47', N'CD11', N'8', CAST(N'2007-10-02T00:00:00.000' AS DateTime), CAST(N'2007-10-10T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Văn Hưng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD48', N'CD12', N'10', CAST(N'2007-10-03T00:00:00.000' AS DateTime), CAST(N'2007-10-10T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Phạm Hồng Cẩm')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD49', N'CD13', N'11', CAST(N'2007-10-05T00:00:00.000' AS DateTime), CAST(N'2007-10-11T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Nguyễn Hoà Bình')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD50', N'CD14', N'8', CAST(N'2007-10-04T00:00:00.000' AS DateTime), CAST(N'2007-10-10T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Lâm Thiên Tuân ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD51', N'CD15', N'9', CAST(N'2007-10-02T00:00:00.000' AS DateTime), CAST(N'2007-10-09T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Nguyễn Văn Đại')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD52', N'CD16', N'8', CAST(N'2007-10-03T00:00:00.000' AS DateTime), CAST(N'2007-10-11T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Trần Văn Chung')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD53', N'CD17', N'13', CAST(N'2007-10-08T00:00:00.000' AS DateTime), CAST(N'2007-10-15T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Đỗ Thị Hồng Việt ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD54', N'CD18', N'10', CAST(N'2007-10-09T00:00:00.000' AS DateTime), CAST(N'2007-10-15T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Bá Hiển ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD55', N'CD19', N'8', CAST(N'2007-10-08T00:00:00.000' AS DateTime), CAST(N'2007-10-15T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Phùng Văn Kiệm')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD56', N'CD20', N'12', CAST(N'2007-10-09T00:00:00.000' AS DateTime), CAST(N'2007-10-16T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Đặng Thái Sơn ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD57', N'CD21', N'9', CAST(N'2007-10-09T00:00:00.000' AS DateTime), CAST(N'2007-10-17T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Đào Văn Thắng')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD58', N'CD22', N'9', CAST(N'2007-10-15T00:00:00.000' AS DateTime), CAST(N'2007-10-22T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Đặng Thị Thư')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD59', N'CD23', N'7', CAST(N'2007-10-16T00:00:00.000' AS DateTime), CAST(N'2007-10-22T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Ngô Quang Trọng ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD60', N'CD24', N'11', CAST(N'2007-10-15T00:00:00.000' AS DateTime), CAST(N'2007-10-23T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Nguyễn Thanh Vân')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD61', N'CD25', N'11', CAST(N'2007-10-16T00:00:00.000' AS DateTime), CAST(N'2007-10-24T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Hoàng Thị Thanh Xuân')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD62', N'CD26', N'10', CAST(N'2007-10-15T00:00:00.000' AS DateTime), CAST(N'2007-10-24T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Vũ Thị Hà ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD63', N'CD27', N'9', CAST(N'2007-10-22T00:00:00.000' AS DateTime), CAST(N'2007-10-29T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Nguyễn Mạnh Tiến')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD64', N'CD28', N'8', CAST(N'2007-10-22T00:00:00.000' AS DateTime), CAST(N'2007-10-29T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Nguyễn Tiến Hậu')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD65', N'CD29', N'10', CAST(N'2007-10-22T00:00:00.000' AS DateTime), CAST(N'2007-10-29T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Thị Hiên ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD66', N'CD30', N'11', CAST(N'2008-10-27T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Phạm Thu Thuỷ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD67', N'CD31', N'12', CAST(N'2007-10-22T00:00:00.000' AS DateTime), CAST(N'2007-10-30T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Nguyễn Chiến Thắng')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD68', N'CD32', N'13', CAST(N'2008-10-27T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Bùi Thanh Duy ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD69', N'CD33', N'15', CAST(N'2007-10-22T00:00:00.000' AS DateTime), CAST(N'2007-10-29T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Hoàng Văn Bách')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD70', N'CD34', N'17', CAST(N'2007-10-02T00:00:00.000' AS DateTime), CAST(N'2007-10-09T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý', N'Nguyễn Thuý Quỳnh')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD71', N'CD35', N'21', CAST(N'2007-10-08T00:00:00.000' AS DateTime), CAST(N'2007-10-15T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Nguyễn Trung Tuyến ')
INSERT [dbo].[QLSoDoan] ([MaQLSoDoan], [MaChiDoan], [SoLuong], [NgayNhan], [NgayTra], [NguoiGiao], [NguoiNhan]) VALUES (N'QLSD72', N'CD36', N'21', CAST(N'2007-10-15T00:00:00.000' AS DateTime), CAST(N'2007-10-22T00:00:00.000' AS DateTime), N'Nguyễn Phương Thuý ', N'Đặng Thái Sơn ')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH001 ', N'TT14', N'Đông Hưng')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH002 ', N'TT06', N'Vũ Thư')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH003 ', N'TT01', N'Hải An')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH004 ', N'TT01', N'Tiên Lãng')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH005 ', N'TT01', N'An Lão')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH006 ', N'TT01', N'Vĩnh Bảo')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH007 ', N'TT01', N'Thuỷ Nguyên')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH008 ', N'TT01', N'Đồ Sơn')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH009 ', N'TT01', N'Lê Chân')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH010 ', N'TT01', N'Ngô Quyền')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH011 ', N'TT01', N'Kiến Thuỵ')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH012 ', N'TT02', N'Hoàn Kiếm')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH013 ', N'TT02', N'Bách Khoa')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH014 ', N'TT02', N'Sóc Sơn')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH015 ', N'TT02', N'Thanh Xuân')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH016 ', N'TT04', N'Đông Triều')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH017 ', N'TT05', N'Chương Dương')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH018 ', N'TT03', N'Châu Quỳ')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH019 ', N'TT05', N'Thanh Chương')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH020 ', N'TT05', N'Nam Đàn')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH021 ', N'TT05', N'Quỳ Hợp')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH022 ', N'TT05', N'Tân Kỳ')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH023 ', N'TT05', N'Tương Dương')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH024 ', N'TT05', N'Diễn Châu')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH025 ', N'TT05', N'Quỳnh Lưu')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH026 ', N'TT03', N'Hưng Nguyên')
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [MaTinhThanh], [TenQuanHuyen]) VALUES (N'QH027 ', N'TT03', N'Thanh Miện')
INSERT [dbo].[RenLuyen] ([IDRenLuyen], [MoTaRenLuyen]) VALUES (N'A', N'Không bị kỷ luật từ mức khiển trách toàn trường trở lên')
INSERT [dbo].[RenLuyen] ([IDRenLuyen], [MoTaRenLuyen]) VALUES (N'B', N'Bị kỷ luật mức độ khiển trách toàn trường trong học kỳ')
INSERT [dbo].[RenLuyen] ([IDRenLuyen], [MoTaRenLuyen]) VALUES (N'C', N'Bị kỷ luật mức độ cảnh cáo toàn trường trong học kỳ')
INSERT [dbo].[RenLuyen] ([IDRenLuyen], [MoTaRenLuyen]) VALUES (N'D', N'Bị kỷ luật mức độ rèn luyện lao động, buộc thôi học')
INSERT [dbo].[TheoDoiHoatDong] ([IDTheoDoi], [MaDoanVien], [HoatDongThamGia], [Ngay], [DanhGia]) VALUES (N'TD0001', N'CD01001', N'Chào mừng ngày 20 - 10', CAST(N'2007-10-20T00:00:00.000' AS DateTime), N'Nhiệt tình')
INSERT [dbo].[TheoDoiHoatDong] ([IDTheoDoi], [MaDoanVien], [HoatDongThamGia], [Ngay], [DanhGia]) VALUES (N'TD0002', N'CD01007', N'Cuộc thi đơn ca toàn trường', CAST(N'2007-10-24T00:00:00.000' AS DateTime), N'Nhiệt tình')
INSERT [dbo].[TheoDoiHoatDong] ([IDTheoDoi], [MaDoanVien], [HoatDongThamGia], [Ngay], [DanhGia]) VALUES (N'TD0003', N'CD01007', N'Thi bơi toàn trường', CAST(N'2007-10-30T00:00:00.000' AS DateTime), N'Nhiệt tình')
INSERT [dbo].[TheoDoiHoatDong] ([IDTheoDoi], [MaDoanVien], [HoatDongThamGia], [Ngay], [DanhGia]) VALUES (N'TD0004', N'CD01008', N'Tình nguyện hè', CAST(N'2008-08-20T00:00:00.000' AS DateTime), N'Chưa nhiệt tình')
INSERT [dbo].[TheoDoiHoatDong] ([IDTheoDoi], [MaDoanVien], [HoatDongThamGia], [Ngay], [DanhGia]) VALUES (N'TD0005', N'CD01007', N'Tiếp sinh', CAST(N'2008-09-05T00:00:00.000' AS DateTime), N'Nhiệt tình')
INSERT [dbo].[TheoDoiHoatDong] ([IDTheoDoi], [MaDoanVien], [HoatDongThamGia], [Ngay], [DanhGia]) VALUES (N'TD0006', N'CD20004', N'Tiếp sinh', CAST(N'2008-09-05T00:00:00.000' AS DateTime), N'Nhiệt tình')
INSERT [dbo].[TheoDoiHoatDong] ([IDTheoDoi], [MaDoanVien], [HoatDongThamGia], [Ngay], [DanhGia]) VALUES (N'TD0007', N'CD01001', N'Tiếp sinh', CAST(N'2008-09-05T00:00:00.000' AS DateTime), N'Chưa nhiệt tình')
INSERT [dbo].[TheoDoiHoatDong] ([IDTheoDoi], [MaDoanVien], [HoatDongThamGia], [Ngay], [DanhGia]) VALUES (N'TD0008', N'CD01001', N'Tình nguyện hè ', CAST(N'2008-12-20T00:00:00.000' AS DateTime), N'Nhiệt tình ')
INSERT [dbo].[TheoDoiHoatDong] ([IDTheoDoi], [MaDoanVien], [HoatDongThamGia], [Ngay], [DanhGia]) VALUES (N'TD0009', N'CD01002', N'Bation ', CAST(N'2008-07-04T00:00:00.000' AS DateTime), N'Ds ')
INSERT [dbo].[TheoDoiHoatDong] ([IDTheoDoi], [MaDoanVien], [HoatDongThamGia], [Ngay], [DanhGia]) VALUES (N'TD0010', N'CD01011', N'Mastur ', CAST(N'2008-12-09T00:00:00.000' AS DateTime), N'Ll ')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT01', N'Hải Phòng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT02', N'Hà Nội')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT03', N'Hải Dương')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT04', N'Quảng Ninh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT05', N'Nghệ An')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT06', N'Thái Bình')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT07', N'Bắc Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT08', N'Thanh Hoá')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT09', N'Nam Định')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT10', N'Điện Biên Phủ')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT11', N'Thái Nguyên')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT12', N'TP Hồ Chí Minh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT13', N'Bình Dương')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT14', N'Sóc Trăng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT15', N'Cà Mau')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT16', N'Huế')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT17', N'Hưng Yên')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT18', N'Đà Nẵng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT19', N'Tuyên Quang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT20', N'Vĩnh Phúc')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT21', N'Hoà Bình')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT22', N'Hà Tĩnh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT23', N'Quảng Trị')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT24', N'Bình Định')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT25', N'Đà Lạt')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT26', N'Nha Trang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT27', N'Khánh Hoà')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT28', N'Bắc Kạn')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT29', N'Lai Châu')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (N'TT30', N'Bạc Liêu')
INSERT [dbo].[TonGiao] ([MaTonGiao], [TenTonGiao]) VALUES (N'TG01', N'Không')
INSERT [dbo].[TonGiao] ([MaTonGiao], [TenTonGiao]) VALUES (N'TG02', N'Công giáo')
INSERT [dbo].[TonGiao] ([MaTonGiao], [TenTonGiao]) VALUES (N'TG03', N'Thiên chúa giáo')
INSERT [dbo].[TonGiao] ([MaTonGiao], [TenTonGiao]) VALUES (N'TG04', N'Hồi giáo')
INSERT [dbo].[TonGiao] ([MaTonGiao], [TenTonGiao]) VALUES (N'TG05', N'Hindu')
INSERT [dbo].[TonGiao] ([MaTonGiao], [TenTonGiao]) VALUES (N'TG06', N'Phật')
INSERT [dbo].[TonGiao] ([MaTonGiao], [TenTonGiao]) VALUES (N'TG07', N'Satan ')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [MoTaTrinhDo]) VALUES (N'TD01', N'9/12 ')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [MoTaTrinhDo]) VALUES (N'TD02', N'12/12')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [MoTaTrinhDo]) VALUES (N'TD03', N'Cao đẳng')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [MoTaTrinhDo]) VALUES (N'TD04', N'Đại học')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [MoTaTrinhDo]) VALUES (N'TD05', N'Cử nhân')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0001', N'CD26', 2007, N'Vững mạnh', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0002', N'CD20', 2007, N'Khá', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0004', N'CD17', 2007, N'Vững mạnh', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0005', N'CD18', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0006', N'CD03', 2007, N'Vững mạnh', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0007', N'CD19', 2007, N'Vững mạnh', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0008', N'CD04', 2007, N'Vững mạnh', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0009', N'CD05', 2007, N'Vững mạnh', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0010', N'CD34', 2007, N'Vững mạnh', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0011', N'CD28', 2007, N'Khá', N'Yếu kém', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0012', N'CD06', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0013', N'CD07', 2007, N'Vững mạnh', N'Yếu kém', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0014', N'CD08', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0015', N'CD09', 2007, N'Yếu kém', N'Vững mạnh', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0016', N'CD10', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0017', N'CD11', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0018', N'CD12', 2007, N'Yếu kém', N'Vững mạnh', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0019', N'CD13', 2007, N'Vững mạnh', N'Yếu kém', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0020', N'CD14', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0021', N'CD15', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0022', N'CD16', 2007, N'Yếu kém', N'Khá', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0023', N'CD21', 2007, N'Khá', N'Yếu kém', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0024', N'CD22', 2007, N'Yếu kém', N'Vững mạnh', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0025', N'CD23', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0026', N'CD24', 2007, N'Trung bình', N'Yếu kém', N'Yếu kém')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0027', N'CD29', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0028', N'CD27', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0035', N'CD01', 2006, N'Khá', N'Yếu kém', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0036', N'CD02', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0037', N'CD03', 2006, N'Yếu kém', N'Vững mạnh', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0038', N'CD04', 2006, N'Khá', N'Yếu kém', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0039', N'CD05', 2006, N'Vững mạnh', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0040', N'CD06', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0041', N'CD07', 2006, N'Yếu kém', N'Yếu kém', N'Yếu kém')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0042', N'CD08', 2006, N'Vững mạnh', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0043', N'CD09', 2006, N'Khá', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0044', N'CD10', 2006, N'Yếu kém', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0045', N'CD11', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0046', N'CD12', 2006, N'Khá', N'Yếu kém', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0047', N'CD13', 2006, N'Vững mạnh', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0048', N'CD14', 2006, N'Yếu kém', N'Khá', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0049', N'CD15', 2006, N'Khá', N'Yếu kém', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0050', N'CD16', 2006, N'Yếu kém', N'Vững mạnh', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0051', N'CD17', 2006, N'Vững mạnh', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0052', N'CD18', 2006, N'Khá', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0053', N'CD19', 2006, N'Vững mạnh', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0054', N'CD20', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0055', N'CD21', 2006, N'Khá', N'Yếu kém', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0056', N'CD22', 2006, N'Yếu kém', N'Khá', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0057', N'CD23', 2006, N'Yếu kém', N'Yếu kém', N'Yếu kém')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0058', N'CD24', 2006, N'Yếu kém', N'Khá', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0059', N'CD25', 2006, N'Khá', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0060', N'CD26', 2006, N'Trung bình', N'Yếu kém', N'Yếu kém')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0061', N'CD27', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0062', N'CD28', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0063', N'CD29', 2006, N'Vững mạnh', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0064', N'CD30', 2006, N'Yếu kém', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0065', N'CD31', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0066', N'CD32', 2006, N'Khá', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0067', N'CD33', 2006, N'Khá', N'Yếu kém', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0068', N'CD34', 2006, N'Khá', N'Yếu kém', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0069', N'CD35', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0070', N'CD36', 2006, N'Khá', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0071', N'CD25', 2007, N'Vững mạnh', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0072', N'CD02', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0073', N'CD01', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0074', N'CD01', 2008, N'Vững mạnh', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0075', N'CD02', 2008, N'Vững mạnh', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0076', N'CD04', 2008, N'Vững mạnh', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0077', N'CD05', 2008, N'Khá', N'Vững mạnh', N'Vững mạnh')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0078', N'CD06', 2008, N'Vững mạnh', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0079', N'CD03', 2008, N'Vững mạnh', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0080', N'CD07', 2008, N'Vững mạnh', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiChiDoan] ([IDXepLoaiChiDoan], [MaChiDoan], [NamHoc], [XepLoaiKiI], [XepLoaiKiII], [XepLoaiCaNam]) VALUES (N'XLCD0081', N'CD01', 2009, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000001', N'CD02003', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000002', N'CD05002', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000003', N'CD01008', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000004', N'CD18004', 2007, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000005', N'CD26004', 2008, N'Khá', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000006', N'CD02005', 2008, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000007', N'CD21002', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000008', N'CD02005', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000009', N'CD24004', 2007, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000010', N'CD02004', 2008, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000011', N'CD02004', 2007, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000012', N'CD17002', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000013', N'CD22003', 2008, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000014', N'CD02005', 2008, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000015', N'CD08002', 2007, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000016', N'CD08001', 2007, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000017', N'CD08003', 2007, N'Trung bình', N'Yếu', N'Yêú')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000018', N'CD08004', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000019', N'CD08005', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000020', N'CD09005', 2007, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000022', N'CD08004', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000023', N'CD02003', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000024', N'CD02005', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000025', N'CD02006', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000026', N'CD01003', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000027', N'CD01005', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000028', N'CD01002', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000029', N'CD01006', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000030', N'CD01007', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000031', N'CD01008', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000032', N'CD01009', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000033', N'CD01010', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000034', N'CD01011', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000035', N'CD02001', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000036', N'CD02002', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000037', N'CD02004', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000038', N'CD02007', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000039', N'CD01001', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000040', N'CD02008', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000041', N'CD02009', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000042', N'CD02010', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000043', N'CD02011', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000044', N'CD02012', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000045', N'CD03001', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000046', N'CD03002', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000047', N'CD03003', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000048', N'CD03004', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000049', N'CD03005', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000050', N'CD03006', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000051', N'CD03007', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000052', N'CD03008', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000053', N'CD03009', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000054', N'CD03010', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000055', N'CD03011', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000056', N'CD03012', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000057', N'CD03013', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000058', N'CD03014', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000059', N'CD03015', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000060', N'CD03016', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000061', N'CD04001', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000062', N'CD04002', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000063', N'CD04003', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000064', N'CD04004', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000065', N'CD04005', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000066', N'CD04006', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000067', N'CD04007', 2006, N'Yếu', N'Trung bình', N'')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000068', N'CD04008', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000069', N'CD04009', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000070', N'CD04010', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000071', N'CD04011', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000072', N'CD04012', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000073', N'CD05001', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000074', N'CD05002', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000075', N'CD05003', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000076', N'CD05004', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000077', N'CD05005', 2006, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000078', N'CD05006', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000079', N'CD05007', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000080', N'CD05008', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000081', N'CD05009', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000082', N'CD05010', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000083', N'CD05011', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000084', N'CD05012', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000085', N'CD05013', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000086', N'CD05014', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000087', N'CD05015', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000088', N'CD05016', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000089', N'CD05017', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000090', N'CD05018', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000091', N'CD05019', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000092', N'CD05020', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000093', N'CD06001', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000094', N'CD06002', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000095', N'CD06003', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000096', N'CD06004', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000097', N'CD06005', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000098', N'CD06006', 2006, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000099', N'CD06007', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000100', N'CD06008', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000101', N'CD06009', 2006, N'Trung bình', N'Yếu', N'Yếu')
GO
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000102', N'CD06010', 2006, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000103', N'CD06011', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000104', N'CD06012', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000105', N'CD07001', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000106', N'CD07002', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000107', N'CD07003', 2006, N'Yếu', N'Khá', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000108', N'CD07004', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000109', N'CD07005', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000110', N'CD07006', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000111', N'CD07007', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000112', N'CD07008', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000113', N'CD07009', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000114', N'CD07010', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000115', N'CD07011', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000116', N'CD07012', 2006, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000117', N'CD07013', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000118', N'CD08011', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000119', N'CD08001', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000120', N'CD08002', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000121', N'CD08003', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000122', N'CD08005', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000123', N'CD08006', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000124', N'CD08007', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000125', N'CD08008', 2006, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000126', N'CD08009', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000127', N'CD08010', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000128', N'CD09001', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000129', N'CD09002', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000130', N'CD09003', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000131', N'CD09004', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000132', N'CD09005', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000133', N'CD09006', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000134', N'CD09007', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000135', N'CD09008', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000136', N'CD09009', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000137', N'CD09010', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000138', N'CD09011', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000139', N'CD09012', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000140', N'CD10001', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000141', N'CD10002', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000142', N'CD10004', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000143', N'CD10003', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000144', N'CD10005', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000145', N'CD10006', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000146', N'CD10007', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000147', N'CD10008', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000148', N'CD10009', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000149', N'CD10010', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000150', N'CD11001', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000151', N'CD11002', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000152', N'CD11003', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000153', N'CD11004', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000154', N'CD11005', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000155', N'CD11006', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000156', N'CD11007', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000157', N'CD11008', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000158', N'CD11009', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000159', N'CD11010', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000160', N'CD11011', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000161', N'CD12001', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000162', N'CD12002', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000163', N'CD12003', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000164', N'CD12004', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000165', N'CD12005', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000166', N'CD12006', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000167', N'CD12007', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000168', N'CD12008', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000169', N'CD12009', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000170', N'CD12010', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000171', N'CD12011', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000172', N'CD12012', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000173', N'CD13001', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000174', N'CD13002', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000175', N'CD13003', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000176', N'CD13004', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000177', N'CD13005', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000178', N'CD13006', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000179', N'CD13007', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000180', N'CD13008', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000181', N'CD13009', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000182', N'CD13010', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000183', N'CD13011', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000184', N'CD13012', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000185', N'CD13013', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000186', N'CD13014', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000187', N'CD14001', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000188', N'CD14002', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000189', N'CD14003', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000190', N'CD14004', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000191', N'CD14005', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000192', N'CD14006', 2006, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000193', N'CD14007', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000194', N'CD14008', 2006, N'Yếu', N'Khá', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000195', N'CD14009', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000196', N'CD14010', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000197', N'CD14011', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000198', N'CD15001', 2006, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000199', N'CD15002', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000200', N'CD15003', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000201', N'CD15005', 2006, N'Yếu', N'Khá', N'Trung bình')
GO
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000202', N'CD15006', 2006, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000203', N'CD15007', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000204', N'CD15008', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000205', N'CD15009', 2006, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000206', N'CD15010', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000207', N'CD15011', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000208', N'CD16001', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000209', N'CD16002', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000210', N'CD16003', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000211', N'CD16004', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000212', N'CD16005', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000213', N'CD16006', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000214', N'CD16007', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000215', N'CD16008', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000216', N'CD16009', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000217', N'CD16010', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000218', N'CD16011', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000219', N'CD16012', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000220', N'CD34001', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000221', N'CD34002', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000222', N'CD34003', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000223', N'CD34004', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000224', N'CD34005', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000225', N'CD34009', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000226', N'CD34010', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000227', N'CD34011', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000228', N'CD34012', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000229', N'CD34013', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000230', N'CD34015', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000231', N'CD34014', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000232', N'CD34016', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000233', N'CD34017', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000234', N'CD34018', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000235', N'CD34019', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000236', N'CD34020', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000237', N'CD17001', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000238', N'CD17002', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000239', N'CD17003', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000240', N'CD17004', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000241', N'CD17005', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000242', N'CD17006', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000243', N'CD17007', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000244', N'CD17008', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000245', N'CD17009', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000246', N'CD17010', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000247', N'CD17011', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000248', N'CD17012', 2006, N'Yếu', N'Khá', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000249', N'CD17013', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000250', N'CD17014', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000251', N'CD17015', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000252', N'CD18001', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000253', N'CD18002', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000254', N'CD18003', 2006, N'Trung bình', N'Khá', N'')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000255', N'CD18004', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000256', N'CD18005', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000257', N'CD18006', 2006, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000258', N'CD18007', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000259', N'CD18008', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000260', N'CD18009', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000261', N'CD18010', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000262', N'CD18011', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000263', N'CD18012', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000264', N'CD19001', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000265', N'CD19002', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000266', N'CD19003', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000267', N'CD19004', 2006, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000268', N'CD19005', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000269', N'CD19007', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000270', N'CD19008', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000271', N'CD19009', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000272', N'CD19010', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000273', N'CD19011', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000274', N'CD20001', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000275', N'CD20002', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000276', N'CD20003', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000277', N'CD20004', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000278', N'CD20005', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000279', N'CD20006', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000280', N'CD20007', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000281', N'CD20008', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000282', N'CD20009', 2006, N'Yếu', N'Khá', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000283', N'CD20010', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000284', N'CD20011', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000285', N'CD20012', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000286', N'CD20013', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000287', N'CD20014', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000288', N'CD20015', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000289', N'CD21001', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000290', N'CD21002', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000291', N'CD21004', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000292', N'CD21004', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000293', N'CD21005', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000294', N'CD21006', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000295', N'CD21007', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000296', N'CD21008', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000297', N'CD21009', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000298', N'CD21010', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000299', N'CD21011', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000300', N'CD21012', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000301', N'CD21013', 2006, N'Khá', N'Trung bình', N'Trung bình')
GO
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000302', N'CD35001', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000303', N'CD35002', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000304', N'CD35003', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000305', N'CD35004', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000306', N'CD35005', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000307', N'CD35006', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000308', N'CD35007', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000309', N'CD35008', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000310', N'CD35010', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000311', N'CD35009', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000312', N'CD35011', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000313', N'CD35012', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000314', N'CD35013', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000315', N'CD35014', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000316', N'CD35015', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000317', N'CD35016', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000318', N'CD35017', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000319', N'CD35018', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000320', N'CD35019', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000321', N'CD35020', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000322', N'CD35021', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000323', N'CD22001', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000324', N'CD22002', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000325', N'CD22003', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000326', N'CD22004', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000327', N'CD22005', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000328', N'CD22006', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000329', N'CD22007', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000330', N'CD22008', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000331', N'CD22009', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000332', N'CD22010', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000333', N'CD22011', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000334', N'CD23001', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000335', N'CD23002', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000336', N'CD23003', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000337', N'CD23004', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000338', N'CD23005', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000339', N'CD23006', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000340', N'CD23007', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000341', N'CD23008', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000342', N'CD23009', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000343', N'CD23010', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000344', N'CD24001', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000345', N'CD24002', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000346', N'CD24003', 2006, N'Trung bình', N'Khá', N'')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000347', N'CD24004', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000348', N'CD24005', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000349', N'CD24006', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000350', N'CD24007', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000351', N'CD24008', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000352', N'CD24009', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000353', N'CD24010', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000354', N'CD24011', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000355', N'CD24012', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000356', N'CD24013', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000357', N'CD26001', 2006, N'Khá', N'Trung bình', N'')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000358', N'CD25002', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000359', N'CD25003', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000360', N'CD25004', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000361', N'CD25005', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000362', N'CD25006', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000363', N'CD25007', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000364', N'CD25008', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000365', N'CD25009', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000366', N'CD25010', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000367', N'CD25011', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000368', N'CD25012', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000369', N'CD25013', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000370', N'CD25014', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000371', N'CD25015', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000372', N'CD26002', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000373', N'CD26003', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000374', N'CD26004', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000375', N'CD26005', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000376', N'CD26006', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000377', N'CD26007', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000378', N'CD26008', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000379', N'CD26009', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000380', N'CD26010', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000381', N'CD26011', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000382', N'CD26012', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000383', N'CD26013', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000384', N'CD26014', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000385', N'CD36001', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000386', N'CD36002', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000387', N'CD36003', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000388', N'CD36004', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000389', N'CD36003', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000390', N'CD36006', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000391', N'CD36007', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000392', N'CD36008', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000393', N'CD36009', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000394', N'CD36010', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000395', N'CD36011', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000396', N'CD36012', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000397', N'CD36013', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000398', N'CD36014', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000399', N'CD36015', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000400', N'CD36016', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000401', N'CD36017', 2006, N'Xuất sắc', N'Khá', N'Khá')
GO
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000402', N'CD36018', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000403', N'CD36019', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000404', N'CD36020', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000405', N'CD36021', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000406', N'CD27001', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000407', N'CD27002', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000408', N'CD27003', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000409', N'CD27004', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000410', N'CD27005', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000411', N'CD27006', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000412', N'CD27007', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000413', N'CD27008', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000414', N'CD27009', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000415', N'CD28001', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000416', N'CD28002', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000417', N'CD28003', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000418', N'CD28004', 2006, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000419', N'CD28005', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000420', N'CD28006', 2006, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000421', N'CD28007', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000422', N'CD28008', 2006, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000423', N'CD28009', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000424', N'CD28010', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000425', N'CD28011', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000426', N'CD28012', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000427', N'CD29001', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000428', N'CD29002', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000429', N'CD29003', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000430', N'CD29004', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000431', N'CD29005', 2006, N'Yếu', N'Khá', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000432', N'CD29006', 2006, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000433', N'CD29008', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000434', N'CD29007', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000435', N'CD29009', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000436', N'CD29010', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000437', N'CD29011', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000438', N'CD29012', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000439', N'CD29013', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000440', N'CD30001', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000441', N'CD30002', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000442', N'CD30003', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000443', N'CD30004', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000444', N'CD30005', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000445', N'CD30006', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000446', N'CD30007', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000447', N'CD30008', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000448', N'CD30009', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000449', N'CD30010', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000450', N'CD30011', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000451', N'CD30012', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000452', N'CD30013', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000453', N'CD30014', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000454', N'CD31001', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000455', N'CD31002', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000456', N'CD31003', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000457', N'CD31004', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000458', N'CD31005', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000459', N'CD31006', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000460', N'CD31007', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000461', N'CD31008', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000462', N'CD31009', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000463', N'CD31010', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000464', N'CD31011', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000465', N'CD31012', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000466', N'CD31013', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000467', N'CD31014', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000468', N'CD32001', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000469', N'CD32002', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000470', N'CD32003', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000471', N'CD32004', 2006, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000472', N'CD32005', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000473', N'CD32006', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000474', N'CD32007', 2006, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000475', N'CD32008', 2006, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000476', N'CD32009', 2006, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000477', N'CD32010', 2006, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000478', N'CD32011', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000479', N'CD32012', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000480', N'CD32014', 2006, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000481', N'CD32013', 2006, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000482', N'CD33001', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000483', N'CD33002', 2006, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000484', N'CD33003', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000485', N'CD33004', 2006, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000486', N'CD33005', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000487', N'CD33006', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000488', N'CD33007', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000489', N'CD33008', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000490', N'CD33009', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000491', N'CD33011', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000492', N'CD33010', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000493', N'CD33012', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000494', N'CD33013', 2006, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000495', N'CD33014', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000496', N'CD33015', 2006, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000497', N'CD01001', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000498', N'CD01002', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000499', N'CD01003', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000500', N'CD01004', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000501', N'CD01005', 2007, N'Trung bình', N'Khá', N'Khá')
GO
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000502', N'CD01006', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000503', N'CD01008', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000504', N'CD01009', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000505', N'CD01010', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000506', N'CD01011', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000507', N'CD02001', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000508', N'CD02002', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000509', N'CD02006', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000510', N'CD02007', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000511', N'CD02008', 2007, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000512', N'CD02009', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000513', N'CD02010', 2007, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000514', N'CD02011', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000515', N'CD02012', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000516', N'CD03001', 2007, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000517', N'CD03003', 2007, N'Khá', N'Khá', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000518', N'CD03003', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000519', N'CD03004', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000520', N'CD03005', 2007, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000521', N'CD03006', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000522', N'CD03007', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000523', N'CD03008', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000524', N'CD03009', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000525', N'CD03010', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000526', N'CD03011', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000527', N'CD03012', 2007, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000528', N'CD03013', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000529', N'CD03014', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000530', N'CD03015', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000531', N'CD03016', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000532', N'CD04001', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000533', N'CD04002', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000534', N'CD04003', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000535', N'CD04004', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000536', N'CD04005', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000537', N'CD04006', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000538', N'CD04007', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000539', N'CD04008', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000540', N'CD04009', 2007, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000541', N'CD04010', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000542', N'CD04011', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000543', N'CD04012', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000544', N'CD05001', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000545', N'CD05003', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000546', N'CD05004', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000547', N'CD05005', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000548', N'CD05006', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000549', N'CD05007', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000550', N'CD05008', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000551', N'CD05009', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000552', N'CD05010', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000553', N'CD05011', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000554', N'CD05012', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000555', N'CD05013', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000556', N'CD05015', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000557', N'CD05015', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000558', N'CD05017', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000559', N'CD05016', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000560', N'CD05019', 2007, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000561', N'CD05018', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000562', N'CD05020', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000563', N'CD06001', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000564', N'CD06002', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000565', N'CD06003', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000566', N'CD06004', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000567', N'CD06005', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000568', N'CD06006', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000569', N'CD06007', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000570', N'CD06008', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000571', N'CD06009', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000572', N'CD06010', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000573', N'CD06011', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000574', N'CD06012', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000575', N'CD07001', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000576', N'CD07002', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000577', N'CD07003', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000578', N'CD07004', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000579', N'CD07005', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000580', N'CD07006', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000581', N'CD07007', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000582', N'CD07008', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000583', N'CD07009', 2007, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000584', N'CD07010', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000585', N'CD07011', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000586', N'CD07012', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000587', N'CD07013', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000588', N'CD08006', 2007, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000589', N'CD08007', 2007, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000590', N'CD08008', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000591', N'CD08009', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000592', N'CD08010', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000593', N'CD08011', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000594', N'CD09001', 2007, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000595', N'CD09002', 2007, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000596', N'CD09003', 2007, N'Yếu', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000597', N'CD09004', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000598', N'CD09006', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000599', N'CD09007', 2007, N'Yếu', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000600', N'CD09008', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000601', N'CD09009', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
GO
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000602', N'CD09010', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000603', N'CD09011', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000604', N'CD09004', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000605', N'CD10001', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000606', N'CD10002', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000607', N'CD10003', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000608', N'CD10004', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000609', N'CD10005', 2007, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000610', N'CD10006', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000611', N'CD10008', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000612', N'CD10007', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000613', N'CD10009', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000614', N'CD10010', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000615', N'CD11001', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000616', N'CD11002', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000617', N'CD11003', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000618', N'CD11004', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000619', N'CD11005', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000620', N'CD11006', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000621', N'CD11007', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000622', N'CD11008', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000623', N'CD11009', 2007, N'Yếu', N'Khá', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000624', N'CD11010', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000625', N'CD11008', 2007, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000626', N'CD12001', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000627', N'CD12002', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000628', N'CD12004', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000629', N'CD12004', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000630', N'CD12005', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000631', N'CD12006', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000632', N'CD12007', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000633', N'CD12008', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000634', N'CD12009', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000635', N'CD12010', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000636', N'CD12011', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000637', N'CD12012', 2007, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000638', N'CD13001', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000639', N'CD13002', 2007, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000640', N'CD13003', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000641', N'CD13004', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000642', N'CD13005', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000643', N'CD13006', 2007, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000644', N'CD13007', 2007, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000645', N'CD13008', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000646', N'CD13009', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000647', N'CD13010', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000648', N'CD13011', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000649', N'CD13012', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000650', N'CD13013', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000651', N'CD13014', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000652', N'CD14001', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000653', N'CD14002', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000654', N'CD14003', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000655', N'CD14004', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000656', N'CD14005', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000657', N'CD14006', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000658', N'CD14007', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000659', N'CD14008', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000660', N'CD14009', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000661', N'CD14010', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000662', N'CD14011', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000663', N'CD15001', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000664', N'CD15002', 2007, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000665', N'CD15003', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000666', N'CD15004', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000667', N'CD15005', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000668', N'CD15006', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000669', N'CD15007', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000670', N'CD15008', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000671', N'CD15009', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000672', N'CD15011', 2007, N'Trung bình', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000673', N'CD15011', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000674', N'CD16001', 2007, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000675', N'CD16002', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000676', N'CD16003', 2007, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000677', N'CD16004', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000678', N'CD16005', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000679', N'CD16006', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000680', N'CD16007', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000681', N'CD16008', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000682', N'CD16009', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000683', N'CD16010', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000684', N'CD16011', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000685', N'CD16012', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000686', N'CD34001', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000687', N'CD34002', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000688', N'CD34003', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000689', N'CD34004', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000690', N'CD34005', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000691', N'CD34009', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000692', N'CD34010', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000693', N'CD34011', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000694', N'CD34012', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000695', N'CD34013', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000696', N'CD34014', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000697', N'CD34015', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000698', N'CD34016', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000699', N'CD34017', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000700', N'CD34018', 2007, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000701', N'CD34019', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
GO
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000702', N'CD34020', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000703', N'CD17001', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000704', N'CD17003', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000705', N'CD17004', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000706', N'CD17005', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000707', N'CD17006', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000708', N'CD17007', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000709', N'CD17008', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000710', N'CD17009', 2007, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000711', N'CD17010', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000712', N'CD17011', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000713', N'CD17012', 2007, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000714', N'CD17013', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000715', N'CD17014', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000716', N'CD17015', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000717', N'CD18001', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000718', N'CD18002', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000719', N'CD18003', 2007, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000720', N'CD18005', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000721', N'CD18006', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000722', N'CD18007', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000723', N'CD18008', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000724', N'CD18009', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000725', N'CD18010', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000726', N'CD18011', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000727', N'CD18012', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000728', N'CD19001', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000729', N'CD19002', 2007, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000730', N'CD19003', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000731', N'CD19004', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000732', N'CD19005', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000733', N'CD19007', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000734', N'CD19008', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000735', N'CD19009', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000736', N'CD19010', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000737', N'CD19011', 2007, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000738', N'CD20001', 2007, N'Yếu', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000739', N'CD20002', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000740', N'CD20003', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000741', N'CD20004', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000742', N'CD20005', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000743', N'CD20006', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000744', N'CD20007', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000745', N'CD20008', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000746', N'CD20009', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000747', N'CD20010', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000748', N'CD20011', 2007, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000749', N'CD20012', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000750', N'CD20013', 2007, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000751', N'CD20014', 2007, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000752', N'CD20015', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000753', N'CD21001', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000754', N'CD21003', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000755', N'CD21004', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000756', N'CD21005', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000757', N'CD21006', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000758', N'CD21007', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000759', N'CD21008', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000760', N'CD21009', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000761', N'CD21010', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000762', N'CD21011', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000763', N'CD21012', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000764', N'CD21013', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000765', N'CD35001', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000766', N'CD35002', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000767', N'CD35003', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000768', N'CD35004', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000769', N'CD35005', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000770', N'CD35006', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000771', N'CD35007', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000772', N'CD35008', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000773', N'CD35009', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000774', N'CD35010', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000775', N'CD35011', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000776', N'CD35012', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000777', N'CD35013', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000778', N'CD35014', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000779', N'CD35015', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000780', N'CD35016', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000781', N'CD35017', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000782', N'CD35018', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000783', N'CD35019', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000784', N'CD35020', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000785', N'CD35021', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000786', N'CD22001', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000787', N'CD22002', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000788', N'CD22003', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000789', N'CD22004', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000790', N'CD22005', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000791', N'CD22006', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000792', N'CD22007', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000793', N'CD22008', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000794', N'CD22009', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000795', N'CD22010', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000796', N'CD22011', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000797', N'CD23001', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000798', N'CD23002', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000799', N'CD23003', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000800', N'CD23004', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000801', N'CD23005', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
GO
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000802', N'CD23006', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000803', N'CD23007', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000804', N'CD23008', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000805', N'CD23009', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000806', N'CD23010', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000807', N'CD24001', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000808', N'CD24002', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000809', N'CD24003', 2007, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000810', N'CD24005', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000811', N'CD24006', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000812', N'CD24007', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000813', N'CD24008', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000814', N'CD24009', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000815', N'CD24010', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000816', N'CD24011', 2007, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000817', N'CD24012', 2007, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000818', N'CD24013', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000819', N'CD25001', 2007, N'Yếu', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000820', N'CD25002', 2007, N'Xuất sắc', N'Yếu', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000821', N'CD25003', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000822', N'CD25004', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000823', N'CD25005', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000824', N'CD25006', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000825', N'CD25007', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000826', N'CD25008', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000827', N'CD25009', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000828', N'CD25010', 2007, N'Khá', N'Yếu', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000829', N'CD25011', 2007, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000830', N'CD25012', 2007, N'Yếu', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000831', N'CD25013', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000832', N'CD25014', 2007, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000833', N'CD26001', 2007, N'Xuất sắc', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000834', N'CD26001', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000835', N'CD26002', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000836', N'CD26003', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000837', N'CD26004', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000838', N'CD26005', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000839', N'CD26006', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000840', N'CD26007', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000841', N'CD26008', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000842', N'CD26009', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000843', N'CD26010', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000844', N'CD26011', 2007, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000845', N'CD26012', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000846', N'CD26013', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000847', N'CD26014', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000848', N'CD36001', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000849', N'CD36002', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000850', N'CD36003', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000851', N'CD36004', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000852', N'CD36005', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000853', N'CD36006', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000854', N'CD36007', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000855', N'CD36008', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000856', N'CD36009', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000857', N'CD36010', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000858', N'CD36011', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000859', N'CD36012', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000860', N'CD36013', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000861', N'CD36014', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000862', N'CD36015', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000863', N'CD36016', 2007, N'Khá', N'Khá', N'')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000864', N'CD36017', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000865', N'CD36018', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000866', N'CD36019', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000867', N'CD36020', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000868', N'CD36021', 2007, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000869', N'CD27001', 2007, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000870', N'CD27002', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000871', N'CD27003', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000872', N'CD27004', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000873', N'CD27005', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000874', N'CD27006', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000875', N'CD27007', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000876', N'CD27008', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000877', N'CD27009', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000878', N'CD27010', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000879', N'CD27011', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000880', N'CD27012', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000881', N'CD27013', 2007, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000882', N'CD28001', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000883', N'CD28002', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000884', N'CD28003', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000885', N'CD28004', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000886', N'CD28005', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000887', N'CD28006', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000888', N'CD28007', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000889', N'CD28008', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000890', N'CD28009', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000891', N'CD28010', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000892', N'CD28011', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000893', N'CD28012', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000894', N'CD29001', 2007, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000895', N'CD29002', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000896', N'CD29003', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000897', N'CD29004', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000898', N'CD29005', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000899', N'CD29006', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000900', N'CD29007', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000901', N'CD29008', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
GO
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000902', N'CD29009', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000903', N'CD29010', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000904', N'CD29011', 2007, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000905', N'CD29012', 2007, N'Xuất sắc', N'Trung bình', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000906', N'CD29013', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000907', N'CD30001', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000908', N'CD30002', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000909', N'CD30003', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000910', N'CD30004', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000911', N'CD30005', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000912', N'CD30006', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000913', N'CD30007', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000914', N'CD30008', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000915', N'CD30009', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000916', N'CD30010', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000917', N'CD30011', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000918', N'CD30012', 2007, N'Trung bình', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000919', N'CD30013', 2007, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000920', N'CD30014', 2007, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000921', N'CD31001', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000922', N'CD31002', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000923', N'CD31003', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000924', N'CD31004', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000925', N'CD31005', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000926', N'CD31006', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000927', N'CD31007', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000928', N'CD31008', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000929', N'CD31009', 2007, N'Khá', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000930', N'CD31010', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000931', N'CD31011', 2007, N'Yếu', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000932', N'CD31012', 2007, N'Yếu', N'Trung bình', N'Trung bình')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000933', N'CD31013', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000934', N'CD31014', 2007, N'Trung bình', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000935', N'CD32001', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000936', N'CD32002', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000937', N'CD32003', 2007, N'Trung bình', N'Xuất sắc', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000938', N'CD32004', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000939', N'CD32005', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000940', N'CD32006', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000941', N'CD32007', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000942', N'CD32008', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000943', N'CD32009', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000944', N'CD32010', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000945', N'CD32011', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000946', N'CD32012', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000947', N'CD32013', 2007, N'Trung bình', N'Yếu', N'Yếu')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000948', N'CD32014', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000949', N'CD33001', 2007, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000950', N'CD33002', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000951', N'CD33003', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000952', N'CD33004', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000953', N'CD33005', 2007, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000954', N'CD33006', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000955', N'CD33007', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000956', N'CD33008', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000957', N'CD33009', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000958', N'CD33010', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000959', N'CD33011', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000960', N'CD33012', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000961', N'CD33013', 2007, N'Khá', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000962', N'CD33014', 2007, N'Khá', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000963', N'CD33015', 2007, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000964', N'CD01001', 2008, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000965', N'CD01002', 2008, N'Xuất sắc', N'Khá', N'Khá')
INSERT [dbo].[XepLoaiDoanVien] ([IDXepLoaiDoanVien], [MaDoanVien], [NamHoc], [PLDVKiI], [PLDVKiII], [PLDVCaNam]) VALUES (N'XLDV000966', N'CD01004', 2008, N'Xuất sắc', N'Xuất sắc', N'Xuất sắc')
/****** Object:  StoredProcedure [dbo].[SPDoanPhiChiDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SPDoanPhiChiDoan]
		@MaChiDoan varchar(10),
		@NamHoc bigint
as
	Select SoTienThieu
	from QLDPChiDoan
	where MaChiDoan=@MaChiDoan and NamHoc=@NamHoc
	return

GO
/****** Object:  StoredProcedure [dbo].[SPDoanPhiDoanVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SPDoanPhiDoanVien]
		@MaDoanVien varchar(10),
		@NamHoc bigint
as
	Select SoTienThieu
	from QLDPDoanVien
	where MaDoanVien=@MaDoanVien and NamHoc=@NamHoc
	return

GO
/****** Object:  StoredProcedure [dbo].[SPLayMaCamTinhDang]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaCamTinhDang]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(MaCamTinhDang, 3)) +1
FROM         CamTinhDang
ORDER BY MaCamTinhDang DESC 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaChiDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaChiDoan]
	
AS
		SELECT     TOP 1 CONVERT(int, RIGHT(MaChiDoan, 2)) +1
FROM        ChiDoan
ORDER BY MaChiDoan DESC
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaChucVu]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaChucVu]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(MaChucVu, 2)) +1
FROM         ChucVu
ORDER BY MaChucVu DESC
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaChuyenDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaChuyenDoan]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(IDChuyenChiDoan, 2)) +1
FROM         ChuyenChiDoan
ORDER BY IDChuyenChiDoan DESC
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPLayMaChuyenSinhHoatDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaChuyenSinhHoatDoan]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(IDChuyenSinhHoat, 2)) +1
FROM         ChuyenSinhHoatDoan
ORDER BY IDChuyenSinhHoat DESC
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPLayMaDanToc]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaDanToc]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(MaDanToc, 2)) +1
FROM         DanToc
ORDER BY MaDanToc DESC
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaDoanVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaDoanVien]
	@parMaChiDoan char(4)
AS
	select Max(Convert(int,Right(MaDoanVien,3))) from DoanVien where left(MaDoanVien,4)=@parMaChiDoan
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPLayMaDuBi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaDuBi]
	
AS
		SELECT     TOP 1 CONVERT(int, RIGHT(MaDuBi, 3)) +1
FROM        DuBi
ORDER BY MaDuBi DESC 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaKhenThuong]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaKhenThuong]
	
AS
		SELECT     TOP 1 CONVERT(int, RIGHT(MaKhenThuong, 3)) +1
FROM         KhenThuong
ORDER BY MaKhenThuong DESC
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaKiLuat]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaKiLuat]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(MaKiLuat, 3)) +1
FROM         KiLuat
ORDER BY MaKiLuat DESC
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaLienChi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaLienChi]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(MaLienChi, 2)) +1
FROM         LienChi
ORDER BY MaLienChi DESC 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaNguoiDung]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaNguoiDung]

AS
	SELECT     TOP 1 CONVERT(int, RIGHT(MaNguoiDung, 2)) +1
FROM         NguoiDung
ORDER BY MaNguoiDung DESC
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaPLCDCaNam]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaPLCDCaNam]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(IDPLCDCaNam, 2)) +1
FROM         PLCDCaNam
ORDER BY IDPLCDCaNam DESC 
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPLayMaPLCDHocKi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaPLCDHocKi]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(IDPLCDHocKi, 2)) +1
FROM         PLCDHocKi
ORDER BY IDPLCDHocKi DESC 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaPLDVCaNam]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaPLDVCaNam]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(IDPLDVCaNam, 2)) +1
FROM         PLDVCaNam
ORDER BY IDPLDVCaNam DESC 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaPLDVHocKi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaPLDVHocKi]
	
AS
		SELECT     TOP 1 CONVERT(int, RIGHT(IDPLDVHocKi, 4)) +1
FROM         PLDVHocKi
ORDER BY IDPLDVHocKi DESC 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaQLDPChiDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaQLDPChiDoan]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(MaQLDPChiDoan, 3)) +1
FROM         QLDPChiDoan
ORDER BY MaQLDPChiDoan DESC
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPLayMaQLDPDoanVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SPLayMaQLDPDoanVien]
as
		SELECT     TOP 1 CONVERT(int, RIGHT(IDQLDPDoanVien, 2)) +1
FROM        QLDPDoanVien
ORDER BY IDQLDPDoanVien DESC
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaQLDPLienChi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaQLDPLienChi]
	
AS
		SELECT     TOP 1 CONVERT(int, RIGHT(IDQLDPLienChi, 4)) +1
FROM        QLDPLienChi
ORDER BY IDQLDPLienChi DESC 
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPLayMaQLSD]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaQLSD] 
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(MaQLSoDoan, 2))+1 
FROM         QLSoDoan
ORDER BY MaQLSoDoan DESC
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPLayMaTheoDoi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaTheoDoi]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(IDTheoDoi, 3)) +1
FROM         TheoDoiHoatDong
ORDER BY IDTheoDoi DESC
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPLayMaTonGiao]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaTonGiao]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(MaTonGiao, 2)) +1
FROM         TonGiao
ORDER BY MaTonGiao DESC
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPLayMaXepLoaiChiDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SPLayMaXepLoaiChiDoan]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(IDXepLoaiChiDoan, 4)) +1
FROM         XepLoaiChiDoan
ORDER BY IDXepLoaiChiDoan DESC
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPLayMaXepLoaiDoanVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLayMaXepLoaiDoanVien]
	
AS
	SELECT     TOP 1 CONVERT(int, RIGHT(IDXepLoaiDoanVien, 6)) +1
FROM         XepLoaiDoanVien
ORDER BY IDXepLoaiDoanVien DESC
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPLaySoLuongDoanVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLaySoLuongDoanVien]
	@MaChiDoan varchar(10)
AS
	SELECT     COUNT(MaDoanVien)
FROM         DoanVien
where MaChiDoan=@MaChiDoan
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPLaySoLuongDoanVien_LienChi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SPLaySoLuongDoanVien_LienChi]
		@MaLienChi varchar(10)
as
	select Count(MaDoanVien)
	from DoanVien
	where MaChiDoan in (select MaChiDoan
						from ChiDoan
						where MaLienChi=@MaLienChi)
	return

GO
/****** Object:  StoredProcedure [dbo].[SPLaySoLuongSoDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLaySoLuongSoDoan]
	@MaChiDoan char(4)
AS
	Select COUNT(MaDoanVien)
	from DoanVien
	Where (NgayVaoDoan!='')and(MaChiDoan=@MaChiDoan)
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPMaChiDoan]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMaChiDoan]
	@MaDoanVien char(7)
AS
	SELECT     MaChiDoan
FROM        ChiDoan
WHERE  MaChiDoan IN(SELECT MaChiDoan FROM DoanVien WHERE MaDoanVien=@MaDoanVien)
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPMaDoanPhi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMaDoanPhi]
	
AS
	select top 1 IDDoanPhi
	from DoanPhi
	order by IDDoanPhi desc
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPMaDoanVien]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMaDoanVien] 
	@MaDoanVien char(7)
AS
	SELECT     MaDoanVien
FROM        DoanVien
WHERE  (MaDoanVien=@MaDoanVien)
 
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPMaDoanVienKha]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMaDoanVienKha]
	
AS
		select top 1 IDDoanVienKha
	from DoanVienKha
	order by IDDoanVienKha desc
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPMaDoanVienYeuKem]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMaDoanVienYeuKem] 
	
AS
	select top 1 IDDoanVienYeuKem
	from DoanVienYeuKem
	order by IDDoanVienYeuKem desc
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPMaHocTap]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMaHocTap]
	
AS
	select top 1 IDHocTap
	from HocTap
	order by IDHocTap desc
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[SPMaLienChi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMaLienChi]
	@MaDoanVien char(7)
AS
	SELECT     MaLienChi
FROM        LienChi
WHERE (MaLienChi IN(SELECT MaLienChi FROM ChiDoan WHERE MaChiDoan IN(SELECT MaChiDoan FROM DoanVien WHERE (MaDoanVien=@MaDoanVien))) )

	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPMaPhongTrao]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMaPhongTrao]
	
AS
		select top 1 IDPhongTrao
	from PhongTrao
	order by IDPhongTrao desc
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPMaRenLuyen]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPMaRenLuyen]
	
AS
	select top 1 IDRenLuyen
	from RenLuyen
	order by IDRenLuyen desc
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SPTenLienChi]    Script Date: 28/12/2018 11:43:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPTenLienChi]
	@MaChiDoan varchar(10)
AS
	select TenLienChi from LienChi
	where MaLienChi=(select MaLienChi from ChiDoan
					where MaChiDoan=@MaChiDoan)
	RETURN
GO
USE [master]
GO
ALTER DATABASE [QuanLyDoanVien] SET  READ_WRITE 
GO
