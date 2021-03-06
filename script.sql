USE [master]
GO
/****** Object:  Database [Video_Rental_Sys]    Script Date: 18-03-2019 9:52:22 ******/
CREATE DATABASE [Video_Rental_Sys]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Video_Rental_Sys_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Video_Rental_Sys.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Video_Rental_Sys_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Video_Rental_Sys.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Video_Rental_Sys] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Video_Rental_Sys].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Video_Rental_Sys] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET ARITHABORT OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Video_Rental_Sys] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Video_Rental_Sys] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Video_Rental_Sys] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Video_Rental_Sys] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Video_Rental_Sys] SET  MULTI_USER 
GO
ALTER DATABASE [Video_Rental_Sys] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Video_Rental_Sys] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Video_Rental_Sys] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Video_Rental_Sys] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Video_Rental_Sys] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Video_Rental_Sys] SET QUERY_STORE = OFF
GO
USE [Video_Rental_Sys]
GO
/****** Object:  Table [dbo].[Customer_Cunt]    Script Date: 18-03-2019 9:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Cunt](
	[CustomerID] [int] NULL,
	[CountNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Record]    Script Date: 18-03-2019 9:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Record](
	[Customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_FirstName] [varchar](50) NULL,
	[Customer_LastName] [varchar](50) NULL,
	[Customer_Mobile] [varchar](50) NULL,
	[Customer_Address] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rental_Record]    Script Date: 18-03-2019 9:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental_Record](
	[Rental_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [varchar](50) NULL,
	[Movie_ID] [varchar](50) NULL,
	[Rental_Date] [varchar](50) NULL,
	[Return_Date] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video_Cunt]    Script Date: 18-03-2019 9:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Cunt](
	[MovieID] [int] NULL,
	[CountNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video_Record]    Script Date: 18-03-2019 9:52:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Record](
	[Video_ID] [int] IDENTITY(1,1) NOT NULL,
	[Video_Title] [varchar](50) NULL,
	[Video_Ratting] [varchar](50) NULL,
	[Video_Year] [int] NULL,
	[Video_Cost] [int] NULL,
	[Video_Copies] [int] NULL,
	[Video_Plot] [varchar](50) NULL,
	[Video_Genre] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Customer_Cunt] ([CustomerID], [CountNo]) VALUES (9, 2)
INSERT [dbo].[Customer_Cunt] ([CustomerID], [CountNo]) VALUES (10, 1)
SET IDENTITY_INSERT [dbo].[Customer_Record] ON 

INSERT [dbo].[Customer_Record] ([Customer_ID], [Customer_FirstName], [Customer_LastName], [Customer_Mobile], [Customer_Address]) VALUES (9, N'Joban', N'dhillon', N'022521545', N'papatoetoe')
INSERT [dbo].[Customer_Record] ([Customer_ID], [Customer_FirstName], [Customer_LastName], [Customer_Mobile], [Customer_Address]) VALUES (10, N'shiam', N'thakur', N'02151414554', N'ACK')
INSERT [dbo].[Customer_Record] ([Customer_ID], [Customer_FirstName], [Customer_LastName], [Customer_Mobile], [Customer_Address]) VALUES (11, N'shubh', N'singh', N'0226229364', N'39 flatbush')
INSERT [dbo].[Customer_Record] ([Customer_ID], [Customer_FirstName], [Customer_LastName], [Customer_Mobile], [Customer_Address]) VALUES (12, N'sam ', N'rajput', N'0223462589', N'35 maurewa ')
INSERT [dbo].[Customer_Record] ([Customer_ID], [Customer_FirstName], [Customer_LastName], [Customer_Mobile], [Customer_Address]) VALUES (13, N'vishal', N'sharma', N'022564598', N'35 helensville')
INSERT [dbo].[Customer_Record] ([Customer_ID], [Customer_FirstName], [Customer_LastName], [Customer_Mobile], [Customer_Address]) VALUES (14, N'shiv', N'Thakur', N'0226229365', N'19 botany downs')
SET IDENTITY_INSERT [dbo].[Customer_Record] OFF
SET IDENTITY_INSERT [dbo].[Rental_Record] ON 

INSERT [dbo].[Rental_Record] ([Rental_ID], [Customer_ID], [Movie_ID], [Rental_Date], [Return_Date]) VALUES (24, N'9', N'15', N'13-03-2019 0:00:00', N'13-03-2019 0:00:00')
INSERT [dbo].[Rental_Record] ([Rental_ID], [Customer_ID], [Movie_ID], [Rental_Date], [Return_Date]) VALUES (25, N'9', N'15', N'13-03-2019 0:00:00', N'Issued On Rent')
INSERT [dbo].[Rental_Record] ([Rental_ID], [Customer_ID], [Movie_ID], [Rental_Date], [Return_Date]) VALUES (26, N'10', N'15', N'13-03-2019 0:00:00', N'Issued On Rent')
SET IDENTITY_INSERT [dbo].[Rental_Record] OFF
INSERT [dbo].[Video_Cunt] ([MovieID], [CountNo]) VALUES (15, 3)
SET IDENTITY_INSERT [dbo].[Video_Record] ON 

INSERT [dbo].[Video_Record] ([Video_ID], [Video_Title], [Video_Ratting], [Video_Year], [Video_Cost], [Video_Copies], [Video_Plot], [Video_Genre]) VALUES (15, N'Bandook', N'2.5', 2015, 5, 3, N'OKKKK', N'jazz')
INSERT [dbo].[Video_Record] ([Video_ID], [Video_Title], [Video_Ratting], [Video_Year], [Video_Cost], [Video_Copies], [Video_Plot], [Video_Genre]) VALUES (16, N'PBX1', N'5.2', 2011, 2, 1, N'qqqqq', N'pop')
INSERT [dbo].[Video_Record] ([Video_ID], [Video_Title], [Video_Ratting], [Video_Year], [Video_Cost], [Video_Copies], [Video_Plot], [Video_Genre]) VALUES (17, N'gun', N'5', 2016, 5, 2, N'famous song', N'pop')
INSERT [dbo].[Video_Record] ([Video_ID], [Video_Title], [Video_Ratting], [Video_Year], [Video_Cost], [Video_Copies], [Video_Plot], [Video_Genre]) VALUES (18, N'gun', N'5', 2016, 5, 6, N'famous song', N'pop')
SET IDENTITY_INSERT [dbo].[Video_Record] OFF
USE [master]
GO
ALTER DATABASE [Video_Rental_Sys] SET  READ_WRITE 
GO
