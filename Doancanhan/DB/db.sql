USE [master]
GO
/****** Object:  Database [Shoponline]    Script Date: 4/23/2017 5:47:45 PM ******/
CREATE DATABASE [Shoponline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shoponline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Shoponline.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Shoponline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Shoponline_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Shoponline] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shoponline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shoponline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shoponline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shoponline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shoponline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shoponline] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shoponline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shoponline] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Shoponline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shoponline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shoponline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shoponline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shoponline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shoponline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shoponline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shoponline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shoponline] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shoponline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shoponline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shoponline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shoponline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shoponline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shoponline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shoponline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shoponline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shoponline] SET  MULTI_USER 
GO
ALTER DATABASE [Shoponline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shoponline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shoponline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shoponline] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Shoponline]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 4/23/2017 5:47:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[Maloaisanpham] [varchar](20) NULL,
	[Tenloaisanpham] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 4/23/2017 5:47:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[Manhasanxuat] [varchar](20) NULL,
	[Tennhasanxuat] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/23/2017 5:47:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[Masanpham] [varchar](20) NOT NULL,
	[Maloaisanpham] [varchar](20) NULL,
	[Manhasanxuat] [varchar](20) NULL,
	[Tensanpham] [nvarchar](50) NULL,
	[Cauhinh] [text] NULL,
	[Hinhchinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Tinhtrang] [nchar](20) NULL,
	[Gia] [int] NULL,
	[Soluongdaban] [int] NULL,
	[Luotview] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LoaiSanPham] ([Maloaisanpham], [Tenloaisanpham]) VALUES (N'LSP01', N'Cao cấp')
INSERT [dbo].[LoaiSanPham] ([Maloaisanpham], [Tenloaisanpham]) VALUES (N'LSP02', N'Bình thường')
INSERT [dbo].[LoaiSanPham] ([Maloaisanpham], [Tenloaisanpham]) VALUES (N'LSP03', N'Chất lượng')
INSERT [dbo].[NhaSanXuat] ([Manhasanxuat], [Tennhasanxuat]) VALUES (N'NSX01', N'SamSung')
INSERT [dbo].[NhaSanXuat] ([Manhasanxuat], [Tennhasanxuat]) VALUES (N'NSX02', N'Nokia')
INSERT [dbo].[NhaSanXuat] ([Manhasanxuat], [Tennhasanxuat]) VALUES (N'NSX03', N'Apple')
INSERT [dbo].[SanPham] ([Masanpham], [Maloaisanpham], [Manhasanxuat], [Tensanpham], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Tinhtrang], [Gia], [Soluongdaban], [Luotview]) VALUES (N'SP01', N'LSP01', N'NSX01', N'SAMSUNG GALAXY J5 PRIME', NULL, N'1.png', NULL, NULL, NULL, NULL, N'0                   ', 4990000, 0, 0)
INSERT [dbo].[SanPham] ([Masanpham], [Maloaisanpham], [Manhasanxuat], [Tensanpham], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Tinhtrang], [Gia], [Soluongdaban], [Luotview]) VALUES (N'SP02', N'LSP02', N'NSX02', N'SAMSUNG GALAXY J7 PRIME', NULL, N'2.png', NULL, NULL, NULL, NULL, N'0                   ', 5990000, 0, 0)
INSERT [dbo].[SanPham] ([Masanpham], [Maloaisanpham], [Manhasanxuat], [Tensanpham], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Tinhtrang], [Gia], [Soluongdaban], [Luotview]) VALUES (N'SP03', N'LSP03', N'NSX03', N'SAMSUNG GALAXY A5', NULL, N'3.png', NULL, NULL, NULL, NULL, N'0                   ', 6990000, 0, 0)
INSERT [dbo].[SanPham] ([Masanpham], [Maloaisanpham], [Manhasanxuat], [Tensanpham], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Tinhtrang], [Gia], [Soluongdaban], [Luotview]) VALUES (N'SP04', N'LSP04', N'NSX04', N'SAMSUNG GALAXY A7', NULL, N'4.png', NULL, NULL, NULL, NULL, N'0                   ', 7990000, 0, 0)
INSERT [dbo].[SanPham] ([Masanpham], [Maloaisanpham], [Manhasanxuat], [Tensanpham], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Tinhtrang], [Gia], [Soluongdaban], [Luotview]) VALUES (N'SP05', N'LSP05', N'NSX05', N'NOKIA 230', NULL, N'5.png', NULL, NULL, NULL, NULL, N'0                   ', 1390000, 0, 0)
INSERT [dbo].[SanPham] ([Masanpham], [Maloaisanpham], [Manhasanxuat], [Tensanpham], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Tinhtrang], [Gia], [Soluongdaban], [Luotview]) VALUES (N'SP06', N'LSP06', N'NSX06', N'NOKIA LUMIA 1020', NULL, N'6.png', NULL, NULL, NULL, NULL, N'0                   ', 3990000, 0, 0)
INSERT [dbo].[SanPham] ([Masanpham], [Maloaisanpham], [Manhasanxuat], [Tensanpham], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Tinhtrang], [Gia], [Soluongdaban], [Luotview]) VALUES (N'SP07', N'LSP07', N'NSX07', N'NOKIA LUMIA 830', NULL, N'7.png', NULL, NULL, NULL, NULL, N'0                   ', 2990000, 0, 0)
INSERT [dbo].[SanPham] ([Masanpham], [Maloaisanpham], [Manhasanxuat], [Tensanpham], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Tinhtrang], [Gia], [Soluongdaban], [Luotview]) VALUES (N'SP08', N'LSP08', N'NSX08', N'NOKIA LUMIA 930', NULL, N'8.png', NULL, NULL, NULL, NULL, N'0                   ', 4990000, 0, 0)
INSERT [dbo].[SanPham] ([Masanpham], [Maloaisanpham], [Manhasanxuat], [Tensanpham], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Tinhtrang], [Gia], [Soluongdaban], [Luotview]) VALUES (N'SP09', N'LSP09', N'NSX09', N'IPHONE 6 PLUS 64GB', NULL, N'9.png', NULL, NULL, NULL, NULL, N'0                   ', 12990000, 0, 0)
INSERT [dbo].[SanPham] ([Masanpham], [Maloaisanpham], [Manhasanxuat], [Tensanpham], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Tinhtrang], [Gia], [Soluongdaban], [Luotview]) VALUES (N'SP10', N'LSP10', N'NSX10', N'IPHONE 7 32GB', NULL, N'10.png', NULL, NULL, NULL, NULL, N'0                   ', 14890000, 0, 0)
INSERT [dbo].[SanPham] ([Masanpham], [Maloaisanpham], [Manhasanxuat], [Tensanpham], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Tinhtrang], [Gia], [Soluongdaban], [Luotview]) VALUES (N'SP11', N'LSP11', N'NSX11', N'IPHONE 5S PLUS', NULL, N'11.png', NULL, NULL, NULL, NULL, N'0                   ', 3890000, 0, 0)
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Tinhtrang]  DEFAULT ((0)) FOR [Tinhtrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Soluongdaban]  DEFAULT ((0)) FOR [Soluongdaban]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Luotview]  DEFAULT ((0)) FOR [Luotview]
GO
USE [master]
GO
ALTER DATABASE [Shoponline] SET  READ_WRITE 
GO
