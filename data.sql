USE [QuanLiBenhNhanNoiTru_Db]
GO
/****** Object:  Table [dbo].[BenhNhan]    Script Date: 9/5/2020 11:30:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenhNhan](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaBn] [nvarchar](50) NULL,
	[TenBN] [nvarchar](50) NULL,
	[Tuoi] [int] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgayVao] [date] NULL,
	[NgayRa] [date] NULL,
	[DayNha] [nvarchar](50) NULL,
	[TenKhoa] [nvarchar](50) NULL,
	[TenPhong] [nvarchar](50) NULL,
 CONSTRAINT [PK_BenhNhan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaDieuTri]    Script Date: 9/5/2020 11:30:52 AM ******/
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
/****** Object:  Table [dbo].[PhongBenh]    Script Date: 9/5/2020 11:30:52 AM ******/
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
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 9/5/2020 11:30:52 AM ******/
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
/****** Object:  Table [dbo].[ToaNha]    Script Date: 9/5/2020 11:30:52 AM ******/
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
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([ID], [UserName], [Password], [HoTen], [TrangThai]) VALUES (1, N'admin', N'202cb962ac59075b964b07152d234b70', N'Minh Tùng', 1)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
