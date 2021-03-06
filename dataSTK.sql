USE [master]
GO
/****** Object:  Database [db_Money]    Script Date: 08-10-2018 7:12:28 PM ******/
CREATE DATABASE [db_Money]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_Money', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\db_Money.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_Money_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\db_Money_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_Money] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_Money].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_Money] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_Money] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_Money] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_Money] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_Money] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_Money] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_Money] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [db_Money] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_Money] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_Money] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_Money] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_Money] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_Money] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_Money] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_Money] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_Money] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_Money] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_Money] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_Money] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_Money] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_Money] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_Money] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_Money] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_Money] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_Money] SET  MULTI_USER 
GO
ALTER DATABASE [db_Money] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_Money] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_Money] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_Money] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [db_Money]
GO
/****** Object:  Table [dbo].[NganHang]    Script Date: 08-10-2018 7:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NganHang](
	[MaNganHang] [varchar](5) NOT NULL,
	[TenNganHang] [varchar](20) NULL,
 CONSTRAINT [PK_NganHang] PRIMARY KEY CLUSTERED 
(
	[MaNganHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 08-10-2018 7:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [varchar](150) NOT NULL,
	[MK] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[The_TietKiem]    Script Date: 08-10-2018 7:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[The_TietKiem](
	[ID] [int] NOT NULL,
	[MaSo] [varchar](8) NULL,
	[Email] [varchar](150) NULL,
	[MaNganHang] [varchar](5) NULL,
	[NgayGui] [date] NULL,
	[SoTienGui] [float] NULL,
	[LaiSuat] [float] NULL,
	[KhiDenHan] [int] NULL,
	[TraLai] [int] NULL,
	[KyHan] [int] NULL,
	[LaiKhongKyHan] [float] NULL,
	[TongTienGoc] [float] NULL,
	[TatToan] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TheTietKiem]    Script Date: 08-10-2018 7:12:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TheTietKiem](
	[ID] [int] NOT NULL,
	[MaSo] [varchar](8) NULL,
	[Email] [varchar](150) NOT NULL,
	[MaNganHang] [varchar](5) NOT NULL,
	[NgayGui] [date] NULL,
	[SoTienGui] [float] NULL,
	[LaiSuat] [float] NULL,
	[KhiDenHan] [int] NULL,
	[TraLai] [int] NULL,
	[KyHan] [int] NULL,
	[LaiKhongKyHan] [float] NULL,
	[TatToan] [bit] NULL,
 CONSTRAINT [PK_TheTietKiem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'', N'')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'0011', N'SACOMBANK')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'123', N'HUNGHENRY')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'1234', N'VIETBANK')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'BI', N'BIDV')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'FE', N'FE CREADIT')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'HUNG', N'HENRY')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'VCB', N'VIETCOMBANK')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'VTB', N'VIETTINBANK')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'1@gmail.com', N'11111111')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'1111@gmail.com', N'11111111')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'2@gmail.com', N'22222222')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'dev01@gmai.com', N'huhuhuhu')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'dev01@gmail.com', N'huhuhuhu1')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'dev01e@gmail.com', N'12345678')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'dev02@yahoo.com', N'12341234')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'dev021@gmail.com', N'huhuhuhu')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'dev03@outlook.com', N'123123123')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'dev100@gmail.com', N'100200300')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'ewgfuyw@gmail.com', N'11111111')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'hoakt@gmail.com', N'12345678')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'met@yahoo.com', N'11111111')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'ngotrunghung@gmail.com', N'12345678')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'quang01@gmail.com', N'11112222')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'trunghung@gmail.com', N'trunghung@gmail.com')
INSERT [dbo].[TaiKhoan] ([ID], [MK]) VALUES (N'VTL2018@outlook.com', N'Viettablet')
ALTER TABLE [dbo].[TheTietKiem]  WITH CHECK ADD  CONSTRAINT [FK_TheTietKiem_NganHang] FOREIGN KEY([MaNganHang])
REFERENCES [dbo].[NganHang] ([MaNganHang])
GO
ALTER TABLE [dbo].[TheTietKiem] CHECK CONSTRAINT [FK_TheTietKiem_NganHang]
GO
ALTER TABLE [dbo].[TheTietKiem]  WITH CHECK ADD  CONSTRAINT [FK_TheTietKiem_TaiKhoan] FOREIGN KEY([Email])
REFERENCES [dbo].[TaiKhoan] ([ID])
GO
ALTER TABLE [dbo].[TheTietKiem] CHECK CONSTRAINT [FK_TheTietKiem_TaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [db_Money] SET  READ_WRITE 
GO
