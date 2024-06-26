USE [master]
GO
/****** Object:  Database [NTDB]    Script Date: 4/1/2024 6:43:31 PM ******/
CREATE DATABASE [NTDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NTDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\NTDB.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NTDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\NTDB_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NTDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NTDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NTDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NTDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NTDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NTDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NTDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [NTDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [NTDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [NTDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NTDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NTDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NTDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NTDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NTDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NTDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NTDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NTDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NTDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NTDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NTDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NTDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NTDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NTDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NTDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NTDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NTDB] SET  MULTI_USER 
GO
ALTER DATABASE [NTDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NTDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NTDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NTDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [NTDB]
GO
/****** Object:  Table [dbo].[AreaTable]    Script Date: 4/1/2024 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AreaTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AreaName] [varchar](500) NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BTable]    Script Date: 4/1/2024 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UId] [int] NULL,
	[BDate] [varchar](50) NULL,
	[BENTime] [varchar](50) NULL,
	[BEXTime] [varchar](50) NULL,
	[TMinutes] [int] NULL,
	[Status] [int] NULL,
	[PId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NewsTable]    Script Date: 4/1/2024 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NewsTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NewTitle] [varchar](500) NULL,
	[Details] [varchar](max) NULL,
	[NDate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlaceTable]    Script Date: 4/1/2024 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlaceTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlaceName] [varchar](100) NULL,
	[Address] [varchar](500) NULL,
	[Details] [varchar](max) NULL,
	[MapLink] [varchar](max) NULL,
	[Photo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PZoneTable]    Script Date: 4/1/2024 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PZoneTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PZoneID] [int] NULL,
	[PNo] [int] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QATable]    Script Date: 4/1/2024 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QATable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QName] [varchar](max) NULL,
	[ANS] [varchar](max) NULL,
	[UId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 4/1/2024 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserTable1]    Script Date: 4/1/2024 6:43:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTable1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AreaTable] ON 

INSERT [dbo].[AreaTable] ([Id], [AreaName], [Latitude], [Longitude]) VALUES (1, N'Ambazari Garden', N'21.1312993', N'79.0492089')
INSERT [dbo].[AreaTable] ([Id], [AreaName], [Latitude], [Longitude]) VALUES (2, N'Nagpur Central Jail', N'21.1254831', N'79.0714719')
INSERT [dbo].[AreaTable] ([Id], [AreaName], [Latitude], [Longitude]) VALUES (3, N'Radisson Blu Hotel', N'21.1034328', N'79.0589496')
INSERT [dbo].[AreaTable] ([Id], [AreaName], [Latitude], [Longitude]) VALUES (4, N'Shri Laxmi Park Garden', N'21.0829697', N'78.9755644')
INSERT [dbo].[AreaTable] ([Id], [AreaName], [Latitude], [Longitude]) VALUES (5, N'I.C. Chowk, Mangalwari Bazar', N'21.1086215', N'78.9963678')
SET IDENTITY_INSERT [dbo].[AreaTable] OFF
SET IDENTITY_INSERT [dbo].[BTable] ON 

INSERT [dbo].[BTable] ([Id], [UId], [BDate], [BENTime], [BEXTime], [TMinutes], [Status], [PId]) VALUES (1, 1, N'2024-03-03', N'16:00', N'17:30', 90, 1, 3)
INSERT [dbo].[BTable] ([Id], [UId], [BDate], [BENTime], [BEXTime], [TMinutes], [Status], [PId]) VALUES (2, 1, N'2024-04-01', N'17:00', N'18:45', 79, 1, 6)
SET IDENTITY_INSERT [dbo].[BTable] OFF
SET IDENTITY_INSERT [dbo].[NewsTable] ON 

INSERT [dbo].[NewsTable] ([Id], [NewTitle], [Details], [NDate]) VALUES (1, N'20 million more farmers to receive two instalments of PM-KISAN before polls ', N'NEW DELHI: More than 20 million additional farmers will get two instalments of Rs 2,000 each ahead of the forthcoming general elections, following the go-ahead by the Election Commission to the government to resume payments under its minimum income support scheme, Pradhan Mantri Kisan Samman Nidhi (PM-KISAN), to small and marginal landowners who were identified before the polls were announced. 

The government has already paid 27.5 million farmers the first instalment under the Rs 75,000- .. 
', N'2019-03-26')
INSERT [dbo].[NewsTable] ([Id], [NewTitle], [Details], [NDate]) VALUES (2, N'Act against sugar mills selling sugar below MSP: Food ministry  ', N'New Delhi: The food ministry has asked states to ensure that sugar millsNSE -0.08 % are not selling the sweetener at below the minimum selling price (MSP), which has been increased recently to Rs 31 a kilogram from Rs 29. 

In a communication to all the principal secretaries of sugar-producing states, the ministry said mills must follow the SugarNSE 1.58 % Price (Control) Order, 2018, which directs them to sell sugar at the MSP. 

“All mills have to sell sugar at Rs 31 a kg plus GS .. 

', N'2019-03-26')
SET IDENTITY_INSERT [dbo].[NewsTable] OFF
SET IDENTITY_INSERT [dbo].[PlaceTable] ON 

INSERT [dbo].[PlaceTable] ([Id], [PlaceName], [Address], [Details], [MapLink], [Photo]) VALUES (2, N'Shree Ganesh Mandir Tekdi', N'Station Road, Sitabuldi | Opposite to Nagpur Railway Station, Nagpur 440012, India', N'
sd
fs
df
sd
f
sdf
', N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.1021119149686!2d79.08477451422795!3d21.14832988593363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd4c0ea7f44cb75%3A0x7f4096e70285ada9!2sShri+Ganesh+Mandir+Tekdi!5e0!3m2!1sen!2sin!4v1553506005668', N'abc.jpg')
INSERT [dbo].[PlaceTable] ([Id], [PlaceName], [Address], [Details], [MapLink], [Photo]) VALUES (3, N'Nagpur Ramtek Temple', N'Ambala village, Nagpur, India', N'fsd

sdf
sd
f
sd
fs
df
s
df', N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29718.782663021746!2d79.31435790689655!3d21.395895406111805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3d0711d6a13bab90!2sRamtek+Temple!5e0!3m2!1sen!2sin!4v1553506277432', N'ramtake.jpg')
SET IDENTITY_INSERT [dbo].[PlaceTable] OFF
SET IDENTITY_INSERT [dbo].[PZoneTable] ON 

INSERT [dbo].[PZoneTable] ([Id], [PZoneID], [PNo], [Status]) VALUES (1, 1, 1, 1)
INSERT [dbo].[PZoneTable] ([Id], [PZoneID], [PNo], [Status]) VALUES (2, 1, 2, 1)
INSERT [dbo].[PZoneTable] ([Id], [PZoneID], [PNo], [Status]) VALUES (3, 1, 3, 0)
INSERT [dbo].[PZoneTable] ([Id], [PZoneID], [PNo], [Status]) VALUES (4, 1, 4, 1)
INSERT [dbo].[PZoneTable] ([Id], [PZoneID], [PNo], [Status]) VALUES (5, 1, 5, 0)
INSERT [dbo].[PZoneTable] ([Id], [PZoneID], [PNo], [Status]) VALUES (6, 1, 6, 1)
SET IDENTITY_INSERT [dbo].[PZoneTable] OFF
SET IDENTITY_INSERT [dbo].[QATable] ON 

INSERT [dbo].[QATable] ([Id], [QName], [ANS], [UId]) VALUES (1, N'Hello XYZ', N'abcdee', 1)
SET IDENTITY_INSERT [dbo].[QATable] OFF
SET IDENTITY_INSERT [dbo].[UserTable] ON 

INSERT [dbo].[UserTable] ([Id], [UserName], [EmailId], [MobileNo], [Password]) VALUES (1, N'ramesh', N'ramesh@gmail.com', N'9876543211', N'12345')
INSERT [dbo].[UserTable] ([Id], [UserName], [EmailId], [MobileNo], [Password]) VALUES (3, N'Manjiri Kaste', N'manjirikaste@gmail.com', N'123456789', N'123456')
SET IDENTITY_INSERT [dbo].[UserTable] OFF
SET IDENTITY_INSERT [dbo].[UserTable1] ON 

INSERT [dbo].[UserTable1] ([Id], [UserName], [EmailId], [MobileNo], [Password]) VALUES (1, N'Ramesh', N'ramesh@gmail.com', N'9875641231', N'12345')
SET IDENTITY_INSERT [dbo].[UserTable1] OFF
USE [master]
GO
ALTER DATABASE [NTDB] SET  READ_WRITE 
GO
