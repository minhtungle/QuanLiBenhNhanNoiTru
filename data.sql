USE [master]
GO
/****** Object:  Database [QuanLiBenhNhanNoiTru_Db]    Script Date: 9/26/2020 12:07:02 PM ******/
CREATE DATABASE [QuanLiBenhNhanNoiTru_Db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLiBenhNhanNoiTru_Db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QuanLiBenhNhanNoiTru_Db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLiBenhNhanNoiTru_Db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QuanLiBenhNhanNoiTru_Db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLiBenhNhanNoiTru_Db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLiBenhNhanNoiTru_Db', N'ON'
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET QUERY_STORE = OFF
GO
USE [QuanLiBenhNhanNoiTru_Db]
GO
/****** Object:  Table [dbo].[HoSoChuaDuyet]    Script Date: 9/26/2020 12:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoChuaDuyet](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
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
	[BenhAn] [nvarchar](100) NULL,
 CONSTRAINT [PK_HoSoChuaDuyet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoCu]    Script Date: 9/26/2020 12:07:02 PM ******/
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
/****** Object:  Table [dbo].[HoSoMoi]    Script Date: 9/26/2020 12:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoMoi](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
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
	[BenhAn] [nvarchar](100) NULL,
 CONSTRAINT [PK_HoSoMoi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaDieuTri]    Script Date: 9/26/2020 12:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaDieuTri](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenKhoa] [nvarchar](25) NULL,
	[DayNha] [nvarchar](25) NULL,
 CONSTRAINT [PK_KhoaDieuTri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBenh]    Script Date: 9/26/2020 12:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBenh](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](25) NULL,
	[TenKhoa] [nvarchar](25) NULL,
	[DayNha] [nvarchar](5) NULL,
 CONSTRAINT [PK_PhongBenh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 9/26/2020 12:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](25) NULL,
	[Password] [nvarchar](100) NULL,
	[HoTen] [nvarchar](25) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToaNha]    Script Date: 9/26/2020 12:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToaNha](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DayNha] [nvarchar](5) NULL,
 CONSTRAINT [PK_ToaNha] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [QuanLiBenhNhanNoiTru_Db] SET  READ_WRITE 
GO
