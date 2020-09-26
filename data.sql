USE [QuanLiBenhNhanNoiTru_Db]
GO
/****** Object:  Table [dbo].[HoSoChuaDuyet]    Script Date: 9/26/2020 10:22:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoChuaDuyet](
	[ID] [bigint] NOT NULL,
	[MaBn] [nvarchar](50) NULL,
	[TenBN] [nvarchar](25) NULL,
	[Tuoi] [int] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgayVao] [date] NULL,
	[DayNha] [nvarchar](5) NULL,
	[TenKhoa] [nvarchar](25) NULL,
	[TenPhong] [nvarchar](25) NULL,
	[Trangthai] [bit] NULL,
	[BenhAn] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoCu]    Script Date: 9/26/2020 10:22:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoCu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaBn] [nvarchar](50) NULL,
	[TenBN] [nvarchar](25) NULL,
	[Tuoi] [int] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgayVao] [date] NULL,
	[NgayRa] [date] NULL,
	[DayNha] [nvarchar](5) NULL,
	[TenKhoa] [nvarchar](25) NULL,
	[TenPhong] [nvarchar](25) NULL,
	[Trangthai] [bit] NULL,
	[BenhAn] [nvarchar](100) NULL,
 CONSTRAINT [PK_HoSoCu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoMoi]    Script Date: 9/26/2020 10:22:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoMoi](
	[ID] [bigint] NOT NULL,
	[MaBn] [nvarchar](50) NULL,
	[TenBN] [nvarchar](25) NULL,
	[Tuoi] [int] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgayVao] [date] NULL,
	[DayNha] [nvarchar](5) NULL,
	[TenKhoa] [nvarchar](25) NULL,
	[TenPhong] [nvarchar](25) NULL,
	[Trangthai] [bit] NULL,
	[BenhAn] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaDieuTri]    Script Date: 9/26/2020 10:22:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaDieuTri](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
	[DayNha] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhoaDieuTri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBenh]    Script Date: 9/26/2020 10:22:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBenh](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[TenKhoa] [nvarchar](50) NULL,
	[DayNha] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhongBenh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 9/26/2020 10:22:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToaNha]    Script Date: 9/26/2020 10:22:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToaNha](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DayNha] [nvarchar](50) NULL,
 CONSTRAINT [PK_ToaNha] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
