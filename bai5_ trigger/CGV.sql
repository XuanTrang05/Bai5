USE [master]
GO
/****** Object:  Database [CGV_hihi]    Script Date: 23/04/2025 4:16:00 CH ******/
CREATE DATABASE [CGV_hihi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CGV_hihi', FILENAME = N'D:\CGV chil chill\CGV_hihi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CGV_hihi_log', FILENAME = N'D:\CGV chil chill\CGV_hihi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CGV_hihi] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CGV_hihi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CGV_hihi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CGV_hihi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CGV_hihi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CGV_hihi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CGV_hihi] SET ARITHABORT OFF 
GO
ALTER DATABASE [CGV_hihi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CGV_hihi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CGV_hihi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CGV_hihi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CGV_hihi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CGV_hihi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CGV_hihi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CGV_hihi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CGV_hihi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CGV_hihi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CGV_hihi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CGV_hihi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CGV_hihi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CGV_hihi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CGV_hihi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CGV_hihi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CGV_hihi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CGV_hihi] SET RECOVERY FULL 
GO
ALTER DATABASE [CGV_hihi] SET  MULTI_USER 
GO
ALTER DATABASE [CGV_hihi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CGV_hihi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CGV_hihi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CGV_hihi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CGV_hihi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CGV_hihi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CGV_hihi', N'ON'
GO
ALTER DATABASE [CGV_hihi] SET QUERY_STORE = ON
GO
ALTER DATABASE [CGV_hihi] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CGV_hihi]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] NOT NULL,
	[noiDung] [varchar](255) NULL,
	[TenTaiKhoan] [varchar](255) NULL,
	[MaPhim] [int] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatVe]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatVe](
	[MaDatVe] [int] NOT NULL,
	[SDT] [int] NULL,
	[email] [varchar](255) NULL,
	[NgayDatVe] [date] NULL,
	[SoLuong] [int] NULL,
	[TongGia] [int] NULL,
	[tenkhach] [varchar](255) NULL,
 CONSTRAINT [PK_DatVe] PRIMARY KEY CLUSTERED 
(
	[MaDatVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ghe]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ghe](
	[MaGhe] [int] NOT NULL,
	[Cot] [int] NULL,
	[Hang] [int] NULL,
	[TenGhe] [varchar](255) NULL,
	[TinhTrangGhe] [bit] NULL,
	[MaPhong] [int] NULL,
 CONSTRAINT [PK_ghe] PRIMARY KEY CLUSTERED 
(
	[MaGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyenmai]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyenmai](
	[MaKM] [varchar](255) NOT NULL,
	[ChuDe] [varchar](255) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[NoiDung] [ntext] NULL,
	[MaPhim] [int] NULL,
 CONSTRAINT [PK_khuyenmai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[MaLog] [int] IDENTITY(1,1) NOT NULL,
	[MaXC] [int] NOT NULL,
	[TenPhim] [nvarchar](255) NOT NULL,
	[TenPhong] [nvarchar](100) NOT NULL,
	[ThoiGian] [datetime] NULL,
	[TongSoVeDaBan] [int] NOT NULL,
	[TongSoVeToiDa] [int] NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phanquyen]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phanquyen](
	[MaPhanQuyen] [int] NOT NULL,
	[Quyen] [varchar](255) NULL,
	[TenTaiKhoan] [varchar](255) NULL,
 CONSTRAINT [PK_phanquyen] PRIMARY KEY CLUSTERED 
(
	[MaPhanQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [int] NOT NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetthuc] [date] NULL,
	[DaoDien] [varchar](255) NULL,
	[DienVien] [varchar](255) NULL,
	[Gia] [int] NULL,
	[HangPhim] [varchar](255) NULL,
	[MoTa] [ntext] NULL,
	[PhienBan] [varchar](255) NULL,
	[QuocGia] [varchar](50) NULL,
	[TenPhim] [varchar](255) NULL,
	[TheLoai] [varchar](255) NULL,
	[ThoiLuong] [int] NULL,
	[TrangThai] [bit] NULL,
	[MaRap] [int] NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [int] NOT NULL,
	[GhiChu] [varchar](255) NULL,
	[SoGhe] [int] NULL,
	[TenPhong] [varchar](255) NULL,
	[TrangThai] [bit] NULL,
	[MaXC] [int] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rap]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rap](
	[MaRap] [int] NOT NULL,
	[DiaChi] [varchar](255) NULL,
	[TenRap] [varchar](255) NULL,
	[TaiKhoanRap] [varchar](255) NULL,
 CONSTRAINT [PK_rap] PRIMARY KEY CLUSTERED 
(
	[MaRap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [varchar](255) NOT NULL,
	[Email] [varchar](255) NULL,
	[LoaiTaiKhoan] [varchar](255) NULL,
	[MatKhau] [varchar](255) NULL,
	[NgaySinh] [date] NULL,
	[sdt] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [int] NOT NULL,
	[MaDatVe] [int] NULL,
	[MaGhe] [int] NULL,
	[MaXC] [int] NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XuatChieu]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatChieu](
	[MaXC] [int] NOT NULL,
	[gio] [int] NULL,
	[ngay] [date] NULL,
	[phut] [int] NULL,
	[MaPhim] [int] NULL,
 CONSTRAINT [PK_XuatChieu] PRIMARY KEY CLUSTERED 
(
	[MaXC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BinhLuan] ([MaBL], [noiDung], [TenTaiKhoan], [MaPhim]) VALUES (1, N'HDHFVSHJSAJFVASJHC', N'DANG HOANG K', 1111)
INSERT [dbo].[BinhLuan] ([MaBL], [noiDung], [TenTaiKhoan], [MaPhim]) VALUES (2, N'BDFBDF G G', N'HOAN XUAN TR', 1115)
INSERT [dbo].[BinhLuan] ([MaBL], [noiDung], [TenTaiKhoan], [MaPhim]) VALUES (3, N'FDGVDFBFTFCN', N'HOANG HUY R', 1117)
INSERT [dbo].[BinhLuan] ([MaBL], [noiDung], [TenTaiKhoan], [MaPhim]) VALUES (4, N'FFGGFGFGSD', N'HOANG THI XUAN TR', 1117)
INSERT [dbo].[BinhLuan] ([MaBL], [noiDung], [TenTaiKhoan], [MaPhim]) VALUES (5, N'FBDFBHSRDNDF', N'LE TRIEU M', 1117)
INSERT [dbo].[BinhLuan] ([MaBL], [noiDung], [TenTaiKhoan], [MaPhim]) VALUES (6, N'CBFDN  F', N'NGUYEN DUY DV', 1119)
INSERT [dbo].[BinhLuan] ([MaBL], [noiDung], [TenTaiKhoan], [MaPhim]) VALUES (7, N'FBFN GDFNGFDFGN V', N'NGUYEN DUY D', 1119)
INSERT [dbo].[BinhLuan] ([MaBL], [noiDung], [TenTaiKhoan], [MaPhim]) VALUES (8, N'GNFTJGFDGFNF ND', N'NGUYEN DUY D', 1119)
INSERT [dbo].[BinhLuan] ([MaBL], [noiDung], [TenTaiKhoan], [MaPhim]) VALUES (9, N'NTFGHGDFGENG', N'NGUYEN XUAN PHUONG  Đ?n', 1209)
INSERT [dbo].[BinhLuan] ([MaBL], [noiDung], [TenTaiKhoan], [MaPhim]) VALUES (10, N'TFHFGTGRFGM TRE', N'NGUYEN XUAN PHUONG  Đ?n', 1209)
GO
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9807, 223232332, N'danghuyhoangmd345@gmail.com', CAST(N'2025-04-20' AS Date), 2, 100000, N'DANG HOANG K')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9808, 454557633, N'hoangxuanthaisd123@gmil.com', CAST(N'2025-03-21' AS Date), 3, 60000, N'HOAN XUAN TR')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9809, 227755445, N'doanquochuysf456@gmail.com', CAST(N'2025-12-01' AS Date), 1, 20000, N'HOANG HUY R')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9810, 983443474, N'hoangthixuantrang@gmail.com', CAST(N'2025-04-30' AS Date), 5, 300000, N'HOANG THI XUAN TR')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9811, 424242422, N'letrieuminhty@gmail.com', CAST(N'2025-01-05' AS Date), 4, 200000, N'LE TRIEU M')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9812, 433333344, N'nguyenduydmd345@gmail.com', CAST(N'2025-03-04' AS Date), 3, 90000, N'NGUYEN DUY D')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9813, 244556655, N'nguyenduymanhsd234@gmail.com', CAST(N'2025-03-14' AS Date), 3, 60000, N'NGUYEN DUY M ')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9814, 33291111, N'nguyenduymanhsd234@gmail.com', CAST(N'2025-08-10' AS Date), 2, 240000, N'NGUYEN VAN A')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9815, 37811425, N'123@gmail.com', CAST(N'2025-01-31' AS Date), 1, 30000, N'NGUYEN XUAN PHUONG  Đ?n')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9816, 54545354, N'vudangminhfg123@gmail.com', CAST(N'2025-02-28' AS Date), 1, 90000, N'VU DANG M')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9817, 987654321, N'hoangngocduymd12@gmail.com', CAST(N'2025-04-30' AS Date), 2, 120000, N'DANG HOANG K')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9818, 123456789, N'nguyenkhactaimd23@gmail.com', CAST(N'2025-04-30' AS Date), 3, 180000, N'HOANG HUY R')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9819, 210303832, N'sd23@gmail.com', CAST(N'2025-03-04' AS Date), 4, 120000, N'NGUYEN DUY D')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9820, 267338384, N'dotungkhanhmd123@gmail.com', CAST(N'2025-01-31' AS Date), 6, 180000, N'NGUYEN XUAN PHUONG  Đ?n')
INSERT [dbo].[DatVe] ([MaDatVe], [SDT], [email], [NgayDatVe], [SoLuong], [TongGia], [tenkhach]) VALUES (9821, 894748487, N'nguyenduylong2@gmail.com', CAST(N'2025-03-21' AS Date), 2, 40000, N'LE TRIEU M')
GO
INSERT [dbo].[ghe] ([MaGhe], [Cot], [Hang], [TenGhe], [TinhTrangGhe], [MaPhong]) VALUES (100, 3, 2, N'F01', 1, 2)
INSERT [dbo].[ghe] ([MaGhe], [Cot], [Hang], [TenGhe], [TinhTrangGhe], [MaPhong]) VALUES (101, 1, 5, N'Q01', 0, 1)
INSERT [dbo].[ghe] ([MaGhe], [Cot], [Hang], [TenGhe], [TinhTrangGhe], [MaPhong]) VALUES (102, 1, 2, N'W02', 1, 1)
INSERT [dbo].[ghe] ([MaGhe], [Cot], [Hang], [TenGhe], [TinhTrangGhe], [MaPhong]) VALUES (103, 2, 3, N'G02', 1, 4)
INSERT [dbo].[ghe] ([MaGhe], [Cot], [Hang], [TenGhe], [TinhTrangGhe], [MaPhong]) VALUES (104, 2, 4, N'J01', 1, 3)
INSERT [dbo].[ghe] ([MaGhe], [Cot], [Hang], [TenGhe], [TinhTrangGhe], [MaPhong]) VALUES (107, 5, 1, N'C05', 0, 6)
INSERT [dbo].[ghe] ([MaGhe], [Cot], [Hang], [TenGhe], [TinhTrangGhe], [MaPhong]) VALUES (109, 1, 3, N'D04', 0, 5)
INSERT [dbo].[ghe] ([MaGhe], [Cot], [Hang], [TenGhe], [TinhTrangGhe], [MaPhong]) VALUES (110, 1, 1, N'A01', 1, 1)
INSERT [dbo].[ghe] ([MaGhe], [Cot], [Hang], [TenGhe], [TinhTrangGhe], [MaPhong]) VALUES (111, 2, 1, N'B02', 0, 2)
INSERT [dbo].[ghe] ([MaGhe], [Cot], [Hang], [TenGhe], [TinhTrangGhe], [MaPhong]) VALUES (123, 4, 4, N'T04', 1, 2)
INSERT [dbo].[ghe] ([MaGhe], [Cot], [Hang], [TenGhe], [TinhTrangGhe], [MaPhong]) VALUES (145, 3, 1, N'B01', 1, 3)
GO
INSERT [dbo].[khuyenmai] ([MaKM], [ChuDe], [NgayBatDau], [NgayKetThuc], [NoiDung], [MaPhim]) VALUES (N'777', N'chudemot', CAST(N'2025-03-17' AS Date), CAST(N'2025-05-30' AS Date), N'bdbfjnthdxbcfn', 1113)
INSERT [dbo].[khuyenmai] ([MaKM], [ChuDe], [NgayBatDau], [NgayKetThuc], [NoiDung], [MaPhim]) VALUES (N'778', N'chu de a', CAST(N'2025-04-18' AS Date), CAST(N'2025-09-29' AS Date), N'vxdbfnf', 1209)
INSERT [dbo].[khuyenmai] ([MaKM], [ChuDe], [NgayBatDau], [NgayKetThuc], [NoiDung], [MaPhim]) VALUES (N'779', N'chu de b', CAST(N'2025-02-05' AS Date), CAST(N'2025-07-05' AS Date), N'sgdbdb', 1119)
INSERT [dbo].[khuyenmai] ([MaKM], [ChuDe], [NgayBatDau], [NgayKetThuc], [NoiDung], [MaPhim]) VALUES (N'780', N'chu de c', CAST(N'2025-01-02' AS Date), CAST(N'2025-01-29' AS Date), NULL, 1112)
INSERT [dbo].[khuyenmai] ([MaKM], [ChuDe], [NgayBatDau], [NgayKetThuc], [NoiDung], [MaPhim]) VALUES (N'781', N'chu de d', CAST(N'2025-01-06' AS Date), CAST(N'2025-03-02' AS Date), N'ghgshxh', 1115)
GO
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([MaLog], [MaXC], [TenPhim], [TenPhong], [ThoiGian], [TongSoVeDaBan], [TongSoVeToiDa], [TrangThai]) VALUES (1, 9, N'Avengers', N'Ph?ng 1', CAST(N'2025-04-23T18:00:00.000' AS DateTime), 100, 120, N'Hetve')
INSERT [dbo].[Log] ([MaLog], [MaXC], [TenPhim], [TenPhong], [ThoiGian], [TongSoVeDaBan], [TongSoVeToiDa], [TrangThai]) VALUES (2, 10, N'Tom & Jerry', N'Ph?ng 1', CAST(N'2025-04-21T17:00:00.000' AS DateTime), 100, 120, N'saphetve')
SET IDENTITY_INSERT [dbo].[Log] OFF
GO
INSERT [dbo].[phanquyen] ([MaPhanQuyen], [Quyen], [TenTaiKhoan]) VALUES (556, N'khach hang', N'DANG HOANG K')
INSERT [dbo].[phanquyen] ([MaPhanQuyen], [Quyen], [TenTaiKhoan]) VALUES (557, N'khach hang', N'HOAN XUAN TR')
INSERT [dbo].[phanquyen] ([MaPhanQuyen], [Quyen], [TenTaiKhoan]) VALUES (558, N'khach hang', N'HOANG HUY R')
INSERT [dbo].[phanquyen] ([MaPhanQuyen], [Quyen], [TenTaiKhoan]) VALUES (559, N'nhan vien', N'HOANG THI XUAN TR')
INSERT [dbo].[phanquyen] ([MaPhanQuyen], [Quyen], [TenTaiKhoan]) VALUES (560, N'nhan vien', N'LE TRIEU M')
INSERT [dbo].[phanquyen] ([MaPhanQuyen], [Quyen], [TenTaiKhoan]) VALUES (561, N'nhan vien', N'NGUYEN DUY D')
INSERT [dbo].[phanquyen] ([MaPhanQuyen], [Quyen], [TenTaiKhoan]) VALUES (562, N'khach hang', N'NGUYEN DUY D')
INSERT [dbo].[phanquyen] ([MaPhanQuyen], [Quyen], [TenTaiKhoan]) VALUES (563, N'khach hang', N'NGUYEN DUY D')
INSERT [dbo].[phanquyen] ([MaPhanQuyen], [Quyen], [TenTaiKhoan]) VALUES (564, N'nhan vien', N'NGUYEN XUAN PHUONG  Đ?n')
INSERT [dbo].[phanquyen] ([MaPhanQuyen], [Quyen], [TenTaiKhoan]) VALUES (565, N'khach hang', N'NGUYEN XUAN PHUONG  Đ?n')
GO
INSERT [dbo].[Phim] ([MaPhim], [NgayBatDau], [NgayKetthuc], [DaoDien], [DienVien], [Gia], [HangPhim], [MoTa], [PhienBan], [QuocGia], [TenPhim], [TheLoai], [ThoiLuong], [TrangThai], [MaRap]) VALUES (1111, CAST(N'2025-01-01' AS Date), CAST(N'2025-03-03' AS Date), N'dao dien mot', N'dienvienmot,dienvien2,dienvien3', 50000, N'abc', N'agswudwguduwuwudwgudwudiqgwcgwiddgxkqwhsjkdewfg', N'2', N'Vien Nam', N'phim 1', N'hoat hinh', 100, 0, 111)
INSERT [dbo].[Phim] ([MaPhim], [NgayBatDau], [NgayKetthuc], [DaoDien], [DienVien], [Gia], [HangPhim], [MoTa], [PhienBan], [QuocGia], [TenPhim], [TheLoai], [ThoiLuong], [TrangThai], [MaRap]) VALUES (1112, CAST(N'2025-01-02' AS Date), CAST(N'2025-02-02' AS Date), N'dao dien hai', N'dien vien a, dien vien b, dien vien c', 50000, N'def', N'èbefgwefwhewuewuiooefhiewfyec', N'1', N'Viet Nam', N'phim 2', N'3D', 120, 0, 111)
INSERT [dbo].[Phim] ([MaPhim], [NgayBatDau], [NgayKetthuc], [DaoDien], [DienVien], [Gia], [HangPhim], [MoTa], [PhienBan], [QuocGia], [TenPhim], [TheLoai], [ThoiLuong], [TrangThai], [MaRap]) VALUES (1113, CAST(N'2025-03-17' AS Date), CAST(N'2025-05-30' AS Date), N'dao dien ba', N'dien vien bon, dien vien nam, dien vien sau', 80000, N'ghi', N'dsjafghweufgsuweygyudsgfgwe', N'0', N'Viet Nam', N'phim 3', N'2D', 129, 1, 111)
INSERT [dbo].[Phim] ([MaPhim], [NgayBatDau], [NgayKetthuc], [DaoDien], [DienVien], [Gia], [HangPhim], [MoTa], [PhienBan], [QuocGia], [TenPhim], [TheLoai], [ThoiLuong], [TrangThai], [MaRap]) VALUES (1114, CAST(N'2025-09-01' AS Date), CAST(N'2025-11-01' AS Date), N'dao dien bon', N'dien vien m', 85000, N'jkl', N'hfgdjdidddksdkdh..', N'5', N'Viet Nam', N'Phim 4', N'den trang', 90, 0, 222)
INSERT [dbo].[Phim] ([MaPhim], [NgayBatDau], [NgayKetthuc], [DaoDien], [DienVien], [Gia], [HangPhim], [MoTa], [PhienBan], [QuocGia], [TenPhim], [TheLoai], [ThoiLuong], [TrangThai], [MaRap]) VALUES (1115, CAST(N'2025-01-06' AS Date), CAST(N'2025-03-04' AS Date), N'dao dien k', N'dien vien r', 20000, N'zxq', N'dsgdshkjdkjkja..', N'4', N'Nga', N'phim 5', N'1D', 199, 1, 123)
INSERT [dbo].[Phim] ([MaPhim], [NgayBatDau], [NgayKetthuc], [DaoDien], [DienVien], [Gia], [HangPhim], [MoTa], [PhienBan], [QuocGia], [TenPhim], [TheLoai], [ThoiLuong], [TrangThai], [MaRap]) VALUES (1116, CAST(N'2014-03-06' AS Date), CAST(N'2014-06-20' AS Date), N'dao dien j', N'dien vien n', 15000, N'wer', N'jhfdhfdfhjfhs', N'3', N'Viet nam', N'Phim 8', N'2D', 100, 0, 145)
INSERT [dbo].[Phim] ([MaPhim], [NgayBatDau], [NgayKetthuc], [DaoDien], [DienVien], [Gia], [HangPhim], [MoTa], [PhienBan], [QuocGia], [TenPhim], [TheLoai], [ThoiLuong], [TrangThai], [MaRap]) VALUES (1117, CAST(N'2025-04-17' AS Date), CAST(N'2025-06-30' AS Date), N'dao dien tam', N'dien vin f. dien virn d, dien virn j', 30000, N'xsyd', N'dfgfdgeyge', N'0', N'Viet Nam ', N'phim 7', N'kinh di', 200, 1, 111)
INSERT [dbo].[Phim] ([MaPhim], [NgayBatDau], [NgayKetthuc], [DaoDien], [DienVien], [Gia], [HangPhim], [MoTa], [PhienBan], [QuocGia], [TenPhim], [TheLoai], [ThoiLuong], [TrangThai], [MaRap]) VALUES (1119, CAST(N'2025-02-01' AS Date), CAST(N'2025-07-07' AS Date), N'dao dien chin', N'dien vien x, dien vien y, dien vien z', 60000, N'fdysfg', N'ewfewger', N'2', N'Viet Nam', N'phim 6', N'3d', 111, 1, 111)
INSERT [dbo].[Phim] ([MaPhim], [NgayBatDau], [NgayKetthuc], [DaoDien], [DienVien], [Gia], [HangPhim], [MoTa], [PhienBan], [QuocGia], [TenPhim], [TheLoai], [ThoiLuong], [TrangThai], [MaRap]) VALUES (1120, CAST(N'2025-05-06' AS Date), CAST(N'2025-09-09' AS Date), N'dao dien muoi', N'dien vin f. dien virn l. dien vien c, dien vien d', 100000, N'dfdg', N'rehryjtttjtyjgh', N'1', N'Viet Nam', N'phim 9', N'4D', 211, 0, 111)
INSERT [dbo].[Phim] ([MaPhim], [NgayBatDau], [NgayKetthuc], [DaoDien], [DienVien], [Gia], [HangPhim], [MoTa], [PhienBan], [QuocGia], [TenPhim], [TheLoai], [ThoiLuong], [TrangThai], [MaRap]) VALUES (1209, CAST(N'2025-04-18' AS Date), CAST(N'2025-09-30' AS Date), N'do dien jk', N'dien viens, dien vien h, dien vien t', 90000, N'oiu', N'ifsfkjfjksfrsfkfnsf', N'3', N'viet nam', N'phim 10', N'2D', 60, 1, 111)
GO
INSERT [dbo].[Phong] ([MaPhong], [GhiChu], [SoGhe], [TenPhong], [TrangThai], [MaXC]) VALUES (1, N'hssyf', 50, N'P01', 1, 1)
INSERT [dbo].[Phong] ([MaPhong], [GhiChu], [SoGhe], [TenPhong], [TrangThai], [MaXC]) VALUES (2, N'byugy', 60, N'P02', 1, 1)
INSERT [dbo].[Phong] ([MaPhong], [GhiChu], [SoGhe], [TenPhong], [TrangThai], [MaXC]) VALUES (3, N'fdfdf', 40, N'P03', 1, 5)
INSERT [dbo].[Phong] ([MaPhong], [GhiChu], [SoGhe], [TenPhong], [TrangThai], [MaXC]) VALUES (4, N'dsdsfdf', 45, N'P08', 0, 7)
INSERT [dbo].[Phong] ([MaPhong], [GhiChu], [SoGhe], [TenPhong], [TrangThai], [MaXC]) VALUES (5, N'fdfere', 70, N'P01', 1, 8)
INSERT [dbo].[Phong] ([MaPhong], [GhiChu], [SoGhe], [TenPhong], [TrangThai], [MaXC]) VALUES (6, N'frwsdsd', 30, N'P03', 0, 3)
INSERT [dbo].[Phong] ([MaPhong], [GhiChu], [SoGhe], [TenPhong], [TrangThai], [MaXC]) VALUES (7, N'cxcddfd', 20, N'P05', 0, 9)
INSERT [dbo].[Phong] ([MaPhong], [GhiChu], [SoGhe], [TenPhong], [TrangThai], [MaXC]) VALUES (8, N'rerere', 50, N'P07', 1, 1)
INSERT [dbo].[Phong] ([MaPhong], [GhiChu], [SoGhe], [TenPhong], [TrangThai], [MaXC]) VALUES (9, N'dfdfde', 55, N'P09', 1, 3)
INSERT [dbo].[Phong] ([MaPhong], [GhiChu], [SoGhe], [TenPhong], [TrangThai], [MaXC]) VALUES (10, N'ddsdd', 53, N'P01', 1, 2)
GO
INSERT [dbo].[rap] ([MaRap], [DiaChi], [TenRap], [TaiKhoanRap]) VALUES (111, N'thai nguyen', N'CGV thai nguyen', N'CGVTN')
INSERT [dbo].[rap] ([MaRap], [DiaChi], [TenRap], [TaiKhoanRap]) VALUES (123, N'bac ninh', N'CGV bac ninh', N'CGV')
INSERT [dbo].[rap] ([MaRap], [DiaChi], [TenRap], [TaiKhoanRap]) VALUES (145, N'bac giang', N'CGV bac giang', N'CGV Bac Giang')
INSERT [dbo].[rap] ([MaRap], [DiaChi], [TenRap], [TaiKhoanRap]) VALUES (222, N'ha noi', N'beta', N'beta viet nam')
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [Email], [LoaiTaiKhoan], [MatKhau], [NgaySinh], [sdt]) VALUES (N'DANG HOANG K', N'danghuyhoangmd345@gmail.com', N'thuong', N'1234', CAST(N'2004-06-04' AS Date), 223232332)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [Email], [LoaiTaiKhoan], [MatKhau], [NgaySinh], [sdt]) VALUES (N'HOAN XUAN TR', N'hoangxuanthaisd123@gmil.com', N'thuong', N'5675', CAST(N'2004-10-17' AS Date), 454557633)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [Email], [LoaiTaiKhoan], [MatKhau], [NgaySinh], [sdt]) VALUES (N'HOANG HUY R', N'doanquochuysf456@gmail.com', N'thuong', N'4435', CAST(N'2003-09-08' AS Date), 227755445)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [Email], [LoaiTaiKhoan], [MatKhau], [NgaySinh], [sdt]) VALUES (N'HOANG THI XUAN TR', N'hoangthixuantrang@gmail.com', N'vip', N'11111', CAST(N'2001-12-29' AS Date), 983443474)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [Email], [LoaiTaiKhoan], [MatKhau], [NgaySinh], [sdt]) VALUES (N'LE TRIEU M', N'letrieuminhty@gmail.com', N'vip', N'88888', CAST(N'2004-09-07' AS Date), 424242422)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [Email], [LoaiTaiKhoan], [MatKhau], [NgaySinh], [sdt]) VALUES (N'NULL\\', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [Email], [LoaiTaiKhoan], [MatKhau], [NgaySinh], [sdt]) VALUES (N'NGUYEN DUY D', N'nguyenduydmd345@gmail.com', N'vip', N'2334455', CAST(N'2003-01-01' AS Date), 433333344)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [Email], [LoaiTaiKhoan], [MatKhau], [NgaySinh], [sdt]) VALUES (N'NGUYEN DUY M ', N'nguyenduymanhsd234@gmail.com', N'vip', N'0909090', CAST(N'2004-05-14' AS Date), 244556655)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [Email], [LoaiTaiKhoan], [MatKhau], [NgaySinh], [sdt]) VALUES (N'NGUYEN VAN A', N'nguyenduymanhsd234@gmail.com', N'vip', N'111100', CAST(N'2004-02-20' AS Date), 33291111)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [Email], [LoaiTaiKhoan], [MatKhau], [NgaySinh], [sdt]) VALUES (N'NGUYEN XUAN PHUONG  Đ?n', N'123@gmail.com', N'thuong', N'12345678', CAST(N'2004-08-25' AS Date), 37811425)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [Email], [LoaiTaiKhoan], [MatKhau], [NgaySinh], [sdt]) VALUES (N'VU DANG M', N'vudangminhfg123@gmail.com', N'thuong', N'78675', CAST(N'2004-12-01' AS Date), 54545354)
GO
INSERT [dbo].[Ve] ([MaVe], [MaDatVe], [MaGhe], [MaXC]) VALUES (123, 9807, 100, 1)
INSERT [dbo].[Ve] ([MaVe], [MaDatVe], [MaGhe], [MaXC]) VALUES (124, 9808, 102, 2)
INSERT [dbo].[Ve] ([MaVe], [MaDatVe], [MaGhe], [MaXC]) VALUES (125, 9809, 103, 3)
INSERT [dbo].[Ve] ([MaVe], [MaDatVe], [MaGhe], [MaXC]) VALUES (126, 9810, 104, 4)
INSERT [dbo].[Ve] ([MaVe], [MaDatVe], [MaGhe], [MaXC]) VALUES (127, 9811, 110, 5)
INSERT [dbo].[Ve] ([MaVe], [MaDatVe], [MaGhe], [MaXC]) VALUES (128, 9812, 109, 6)
INSERT [dbo].[Ve] ([MaVe], [MaDatVe], [MaGhe], [MaXC]) VALUES (129, 9813, 111, 7)
INSERT [dbo].[Ve] ([MaVe], [MaDatVe], [MaGhe], [MaXC]) VALUES (130, 9814, 123, 8)
INSERT [dbo].[Ve] ([MaVe], [MaDatVe], [MaGhe], [MaXC]) VALUES (131, 9815, 145, 9)
INSERT [dbo].[Ve] ([MaVe], [MaDatVe], [MaGhe], [MaXC]) VALUES (132, 9816, 101, 10)
GO
INSERT [dbo].[XuatChieu] ([MaXC], [gio], [ngay], [phut], [MaPhim]) VALUES (1, 9, CAST(N'2025-04-20' AS Date), 0, 1113)
INSERT [dbo].[XuatChieu] ([MaXC], [gio], [ngay], [phut], [MaPhim]) VALUES (2, 10, CAST(N'2025-03-21' AS Date), 14, 1115)
INSERT [dbo].[XuatChieu] ([MaXC], [gio], [ngay], [phut], [MaPhim]) VALUES (3, 2, CAST(N'2025-12-01' AS Date), 30, 1115)
INSERT [dbo].[XuatChieu] ([MaXC], [gio], [ngay], [phut], [MaPhim]) VALUES (4, 1, CAST(N'2025-04-30' AS Date), 47, 1119)
INSERT [dbo].[XuatChieu] ([MaXC], [gio], [ngay], [phut], [MaPhim]) VALUES (5, 4, CAST(N'2025-01-05' AS Date), 10, 1113)
INSERT [dbo].[XuatChieu] ([MaXC], [gio], [ngay], [phut], [MaPhim]) VALUES (6, 5, CAST(N'2025-03-04' AS Date), 39, 1112)
INSERT [dbo].[XuatChieu] ([MaXC], [gio], [ngay], [phut], [MaPhim]) VALUES (7, 6, CAST(N'2025-03-14' AS Date), 21, 1115)
INSERT [dbo].[XuatChieu] ([MaXC], [gio], [ngay], [phut], [MaPhim]) VALUES (8, 7, CAST(N'2025-08-10' AS Date), 50, 1113)
INSERT [dbo].[XuatChieu] ([MaXC], [gio], [ngay], [phut], [MaPhim]) VALUES (9, 8, CAST(N'2025-01-31' AS Date), 35, 1117)
INSERT [dbo].[XuatChieu] ([MaXC], [gio], [ngay], [phut], [MaPhim]) VALUES (10, 3, CAST(N'2025-02-28' AS Date), 40, 1209)
GO
ALTER TABLE [dbo].[Log] ADD  DEFAULT (getdate()) FOR [ThoiGian]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_Phim]
GO
ALTER TABLE [dbo].[DatVe]  WITH CHECK ADD  CONSTRAINT [FK_DatVe_TaiKhoan] FOREIGN KEY([tenkhach])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[DatVe] CHECK CONSTRAINT [FK_DatVe_TaiKhoan]
GO
ALTER TABLE [dbo].[ghe]  WITH CHECK ADD  CONSTRAINT [FK_ghe_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[ghe] CHECK CONSTRAINT [FK_ghe_Phong]
GO
ALTER TABLE [dbo].[khuyenmai]  WITH CHECK ADD  CONSTRAINT [FK_khuyenmai_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[khuyenmai] CHECK CONSTRAINT [FK_khuyenmai_Phim]
GO
ALTER TABLE [dbo].[phanquyen]  WITH CHECK ADD  CONSTRAINT [FK_phanquyen_TaiKhoan] FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[phanquyen] CHECK CONSTRAINT [FK_phanquyen_TaiKhoan]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_XuatChieu] FOREIGN KEY([MaXC])
REFERENCES [dbo].[XuatChieu] ([MaXC])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_XuatChieu]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_DatVe] FOREIGN KEY([MaDatVe])
REFERENCES [dbo].[DatVe] ([MaDatVe])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_DatVe]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_ghe] FOREIGN KEY([MaGhe])
REFERENCES [dbo].[ghe] ([MaGhe])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_ghe]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_XuatChieu] FOREIGN KEY([MaXC])
REFERENCES [dbo].[XuatChieu] ([MaXC])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_XuatChieu]
GO
ALTER TABLE [dbo].[XuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_XuatChieu_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[XuatChieu] CHECK CONSTRAINT [FK_XuatChieu_Phim]
GO
/****** Object:  Trigger [dbo].[trg_CanhBaoHetVe_InsertUpdate]    Script Date: 23/04/2025 4:16:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hoang Thi Xuan Trang
-- Create date: 2025-04-22
-- Description:	Canh bao rap phim het ve
-- =============================================
CREATE TRIGGER [dbo].[trg_CanhBaoHetVe_InsertUpdate]
ON [dbo].[Ve]
AFTER INSERT, UPDATE
AS
BEGIN
    DECLARE @MaXC INT, @MaVe INT;
    DECLARE inserted_cursor CURSOR FOR
        SELECT MaXC, MaVe FROM inserted;

    OPEN inserted_cursor;
    FETCH NEXT FROM inserted_cursor INTO @MaXC, @MaVe;
    WHILE @@FETCH_STATUS = 0
    BEGIN
        DECLARE @MaPhong INT, @TongGhe INT, @SoVeDaDat INT;
        DECLARE @TenPhim NVARCHAR(255), @TenPhong NVARCHAR(100);
        -- Lấy mã phòng từ suất chiếu
        SELECT TOP 1 @MaPhong = MaPhong FROM Phong WHERE MaXC = @MaXC;
        -- Tổng số ghế của phòng
        SELECT @TongGhe = COUNT(*) FROM Ghe WHERE MaPhong = @MaPhong;
        -- Số vé đã đặt cho suất chiếu đó
        SELECT @SoVeDaDat = COUNT(*) FROM Ve WHERE MaXC = @MaXC;
        -- Nếu đủ ghế và chưa ghi log thì ghi log
        IF @SoVeDaDat = @TongGhe AND NOT EXISTS (
            SELECT 1 FROM Log WHERE MaXC = @MaXC
        )
        BEGIN
            SELECT @TenPhim = p.TenPhim
            FROM Phim p
            JOIN XuatChieu xc ON p.MaPhim = xc.MaPhim
            WHERE xc.MaXC = @MaXC;
            SELECT @TenPhong = TenPhong FROM Phong WHERE MaPhong = @MaPhong;
            INSERT INTO Log (MaXC, MaVe, TongSoVe, TenPhim, TenPhong)
            VALUES (@MaXC, @MaVe, @TongGhe, @TenPhim, @TenPhong);
        END

        FETCH NEXT FROM inserted_cursor INTO @MaXC, @MaVe;
    END

    CLOSE inserted_cursor;
    DEALLOCATE inserted_cursor;
END;
GO
ALTER TABLE [dbo].[Ve] ENABLE TRIGGER [trg_CanhBaoHetVe_InsertUpdate]
GO
/****** Object:  Trigger [dbo].[trg_Canhbaotrangthaihetve]    Script Date: 23/04/2025 4:16:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		HoangThiXuanTrang
-- Create date: 2025-04-23
-- Description:	Canhbaotinhtranghetve
-- =============================================
CREATE TRIGGER [dbo].[trg_Canhbaotrangthaihetve]
ON [dbo].[Ve]
AFTER INSERT
AS
BEGIN
    DECLARE @MaXC INT, @TenPhim NVARCHAR(255), @TenPhong NVARCHAR(100)
    DECLARE @SoVeDaBan INT, @TongVeToiDa INT = 50
    DECLARE @TrangThai NVARCHAR(50)

    -- Lấy MaXC từ bản ghi vừa thêm
    SELECT TOP 1 @MaXC = MaXC FROM inserted;

    -- Đếm số vé đã bán cho suất chiếu này
    SELECT @SoVeDaBan = COUNT(*) FROM Ve WHERE MaXC = @MaXC;

    -- Lấy tên phim và tên phòng từ các bảng liên quan
    SELECT 
        @TenPhim = p.TenPhim,
        @TenPhong = f.TenPhong
    FROM XuatChieu xc
    JOIN Phim p ON xc.MaPhim = p.MaPhim
    JOIN Phong f ON xc.MaXC = f.MaXC
    WHERE xc.MaXC = @MaXC;

    -- Xác định trạng thái cảnh báo
    IF @SoVeDaBan >= @TongVeToiDa
        SET @TrangThai = N'Hết vé';
    ELSE IF @SoVeDaBan >= @TongVeToiDa - 5
        SET @TrangThai = N'Gần hết vé';
    ELSE
        SET @TrangThai = N'Còn vé';

    -- Ghi log
    INSERT INTO Log (MaXC, TenPhim, TenPhong, ThoiGian, TongSoVeDaBan, TongSoVeToiDa, TrangThai)
    VALUES (@MaXC, @TenPhim, @TenPhong, GETDATE(), @SoVeDaBan, @TongVeToiDa, @TrangThai);
END
GO
ALTER TABLE [dbo].[Ve] ENABLE TRIGGER [trg_Canhbaotrangthaihetve]
GO
USE [master]
GO
ALTER DATABASE [CGV_hihi] SET  READ_WRITE 
GO
