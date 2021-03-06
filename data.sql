USE [QuanLiBenhNhanNoiTru_Db]
GO
/****** Object:  Table [dbo].[HoSoChuaDuyet]    Script Date: 19/10/2020 10:41:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoChuaDuyet](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaBN] [nvarchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[HoSoCu]    Script Date: 19/10/2020 10:41:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoCu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaBN] [nvarchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[HoSoMoi]    Script Date: 19/10/2020 10:41:35 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoMoi](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaBN] [nvarchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[KhoaDieuTri]    Script Date: 19/10/2020 10:41:35 SA ******/
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
/****** Object:  Table [dbo].[PhongBenh]    Script Date: 19/10/2020 10:41:35 SA ******/
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
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 19/10/2020 10:41:35 SA ******/
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
/****** Object:  Table [dbo].[ToaNha]    Script Date: 19/10/2020 10:41:35 SA ******/
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
SET IDENTITY_INSERT [dbo].[HoSoChuaDuyet] ON 

INSERT [dbo].[HoSoChuaDuyet] ([ID], [MaBN], [TenBN], [Tuoi], [NgaySinh], [DiaChi], [NgayVao], [DayNha], [TenKhoa], [TenPhong], [Trangthai], [BenhAn]) VALUES (24, N'1', N'minh', 20, CAST(N'2020-10-14' AS Date), N'a', CAST(N'2020-10-14' AS Date), NULL, NULL, NULL, 1, N'C:\fakepath\120202827_3161532803958566_6892315224342268049_n.jpg')
INSERT [dbo].[HoSoChuaDuyet] ([ID], [MaBN], [TenBN], [Tuoi], [NgaySinh], [DiaChi], [NgayVao], [DayNha], [TenKhoa], [TenPhong], [Trangthai], [BenhAn]) VALUES (10024, N's', N'a', 1, CAST(N'2020-10-13' AS Date), N'1', CAST(N'2020-10-22' AS Date), NULL, NULL, NULL, 1, N'C:\fakepath\Chưa có tên.png')
INSERT [dbo].[HoSoChuaDuyet] ([ID], [MaBN], [TenBN], [Tuoi], [NgaySinh], [DiaChi], [NgayVao], [DayNha], [TenKhoa], [TenPhong], [Trangthai], [BenhAn]) VALUES (10025, N'123', N'123', 1, CAST(N'2020-09-30' AS Date), N'123', CAST(N'2020-10-18' AS Date), NULL, NULL, NULL, 1, N'C:\fakepath\imf yeu cau.png')
INSERT [dbo].[HoSoChuaDuyet] ([ID], [MaBN], [TenBN], [Tuoi], [NgaySinh], [DiaChi], [NgayVao], [DayNha], [TenKhoa], [TenPhong], [Trangthai], [BenhAn]) VALUES (10026, N'qweqw', N'qweqwe', 1, CAST(N'2020-11-07' AS Date), N'1223', CAST(N'2020-10-30' AS Date), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[HoSoChuaDuyet] ([ID], [MaBN], [TenBN], [Tuoi], [NgaySinh], [DiaChi], [NgayVao], [DayNha], [TenKhoa], [TenPhong], [Trangthai], [BenhAn]) VALUES (10027, N'hưng', N'hưng', 1, CAST(N'5445-04-04' AS Date), N'1231', CAST(N'1212-03-12' AS Date), NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[HoSoChuaDuyet] OFF
GO
SET IDENTITY_INSERT [dbo].[HoSoMoi] ON 

INSERT [dbo].[HoSoMoi] ([ID], [MaBN], [TenBN], [Tuoi], [NgaySinh], [DiaChi], [NgayVao], [DayNha], [TenKhoa], [TenPhong], [Trangthai], [BenhAn]) VALUES (1, N'a', N'a', 1, CAST(N'2020-10-16' AS Date), N'1', CAST(N'2020-10-01' AS Date), NULL, NULL, NULL, 1, N'C:\fakepath\full screen video.zip')
INSERT [dbo].[HoSoMoi] ([ID], [MaBN], [TenBN], [Tuoi], [NgaySinh], [DiaChi], [NgayVao], [DayNha], [TenKhoa], [TenPhong], [Trangthai], [BenhAn]) VALUES (2, N'2222', N'a', 2, CAST(N'2020-10-22' AS Date), N'2', CAST(N'2020-10-08' AS Date), NULL, NULL, NULL, 1, N'C:\fakepath\full screen video.zip')
SET IDENTITY_INSERT [dbo].[HoSoMoi] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([ID], [UserName], [Password], [HoTen], [TrangThai]) VALUES (1, N'admin', N'202cb962ac59075b964b07152d234b70', N'Lê Minh Tùng', 1)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
