USE [master]
GO
/****** Object:  Database [Football]    Script Date: 10/03/2022 15:40:54 ******/
CREATE DATABASE [Football]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PROJECT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.EGAMORFT\MSSQL\DATA\PROJECT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PROJECT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.EGAMORFT\MSSQL\DATA\PROJECT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Football] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Football].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Football] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Football] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Football] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Football] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Football] SET ARITHABORT OFF 
GO
ALTER DATABASE [Football] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Football] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Football] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Football] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Football] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Football] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Football] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Football] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Football] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Football] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Football] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Football] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Football] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Football] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Football] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Football] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Football] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Football] SET RECOVERY FULL 
GO
ALTER DATABASE [Football] SET  MULTI_USER 
GO
ALTER DATABASE [Football] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Football] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Football] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Football] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Football] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Football] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Football', N'ON'
GO
ALTER DATABASE [Football] SET QUERY_STORE = OFF
GO
USE [Football]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Full Name] [varchar](50) NULL,
	[Address] [varchar](255) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Role_ID] [varchar](10) NULL,
	[Status_ID] [int] NULL,
	[Create_Date] [date] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Role]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Role](
	[Role_ID] [varchar](10) NOT NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_Account_Role] PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Status]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Status](
	[Status_ID] [int] NOT NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Account_Status] PRIMARY KEY CLUSTERED 
(
	[Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_ID] [varchar](10) NOT NULL,
	[Category_Name] [varchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Goal]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goal](
	[Goal_ID] [varchar](10) NOT NULL,
	[Players_ID] [varchar](10) NOT NULL,
	[Time] [time](7) NULL,
	[Scored_Way] [varchar](30) NULL,
	[Matches_ID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Goal] PRIMARY KEY CLUSTERED 
(
	[Goal_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Image_ID] [varchar](10) NOT NULL,
	[Product_ID] [varchar](10) NOT NULL,
	[ImageURL] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[Image_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[League]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[League](
	[League_ID] [varchar](10) NOT NULL,
	[League_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_League] PRIMARY KEY CLUSTERED 
(
	[League_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer] [varchar](50) NULL,
	[Create_Date] [date] NULL,
	[Total_Price] [float] NULL,
	[Note] [varchar](255) NULL,
	[Status_ID] [varchar](10) NULL,
	[Ship_ID] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Status]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Status](
	[Status_ID] [varchar](10) NOT NULL,
	[Status] [varchar](255) NULL,
 CONSTRAINT [PK_Order_Status] PRIMARY KEY CLUSTERED 
(
	[Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Detail_ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_ID] [int] NULL,
	[Product_ID] [varchar](10) NULL,
	[Product_Name] [varchar](255) NULL,
	[Product_Price] [float] NULL,
	[Quantity] [int] NULL,
	[Product_Image] [varchar](255) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Detail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[Players_ID] [varchar](10) NOT NULL,
	[Players_Name] [varchar](30) NOT NULL,
	[Nationality] [varchar](30) NULL,
	[Team_ID] [varchar](10) NOT NULL,
	[DateOfBirth] [date] NULL,
	[Position] [varchar](10) NOT NULL,
	[Others] [varchar](max) NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[Players_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_ID] [varchar](10) NOT NULL,
	[Product_Code] [varchar](50) NULL,
	[Product_Name] [varchar](255) NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
	[Description] [varchar](255) NULL,
	[Image] [varchar](255) NULL,
	[Date] [date] NULL,
	[Status_ID] [varchar](10) NULL,
	[Subcategory_ID] [varchar](10) NULL,
	[Category_ID] [varchar](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Status]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Status](
	[Status_ID] [varchar](10) NOT NULL,
	[Status_Name] [varchar](30) NULL,
 CONSTRAINT [PK_Product_Status] PRIMARY KEY CLUSTERED 
(
	[Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[Matches_ID] [varchar](10) NOT NULL,
	[Home_Goal] [tinyint] NOT NULL,
	[Away_Goal] [tinyint] NOT NULL,
	[Home_ID] [varchar](10) NOT NULL,
	[Away_ID] [varchar](10) NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[Matches_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[Matches_ID] [varchar](10) NOT NULL,
	[League_ID] [varchar](10) NOT NULL,
	[Date] [date] NOT NULL,
	[Home_ID] [varchar](10) NOT NULL,
	[Away_ID] [varchar](10) NOT NULL,
	[Referee_ID] [varchar](10) NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[Matches_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ship]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship](
	[Ship_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[DOB] [date] NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Note] [varchar](255) NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Ship] PRIMARY KEY CLUSTERED 
(
	[Ship_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stats]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stats](
	[Matches_ID] [varchar](10) NOT NULL,
	[Shots] [tinyint] NULL,
	[On_Target] [tinyint] NULL,
	[Possession] [tinyint] NULL,
	[Passes] [smallint] NULL,
	[Fouls] [tinyint] NULL,
	[Corners] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subcategory]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcategory](
	[Subcategory_ID] [varchar](10) NOT NULL,
	[Category_ID] [varchar](10) NOT NULL,
	[Subcategory_Name] [varchar](255) NULL,
 CONSTRAINT [PK_Subcategory] PRIMARY KEY CLUSTERED 
(
	[Subcategory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 10/03/2022 15:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[Team_ID] [varchar](10) NOT NULL,
	[Team_Name] [varchar](30) NOT NULL,
	[Stadium] [varchar](30) NOT NULL,
	[Head_Coach] [varchar](30) NULL,
	[Team_Logo] [varchar](max) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[Team_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Username], [Password], [Full Name], [Address], [Email], [Phone], [Role_ID], [Status_ID], [Create_Date]) VALUES (N'admin', N'admin1', N'ADMIN', N'VietNam', N'admin111@gmail.com', N'0999999111', N'1', 1, CAST(N'2021-10-25' AS Date))
INSERT [dbo].[Account] ([Username], [Password], [Full Name], [Address], [Email], [Phone], [Role_ID], [Status_ID], [Create_Date]) VALUES (N'huytung', N'123456', N'huytung', N'bac ninh', N'htung@gmail.com', N'01234567899', N'3', 1, CAST(N'2021-10-25' AS Date))
INSERT [dbo].[Account] ([Username], [Password], [Full Name], [Address], [Email], [Phone], [Role_ID], [Status_ID], [Create_Date]) VALUES (N'lock', N'123456', N'lock', N'ha noi', N'lock@gmail.com', N'00000000000', N'3', 2, CAST(N'2021-10-25' AS Date))
INSERT [dbo].[Account] ([Username], [Password], [Full Name], [Address], [Email], [Phone], [Role_ID], [Status_ID], [Create_Date]) VALUES (N'tung', N'123456', N'Huy Tung', N'USA', N'huytung@gmail.com', N'0999999999', N'3', 1, CAST(N'2021-10-25' AS Date))
INSERT [dbo].[Account] ([Username], [Password], [Full Name], [Address], [Email], [Phone], [Role_ID], [Status_ID], [Create_Date]) VALUES (N'tung2', N'123', N'tung2', N'USA', N'tungtesttt123@gmail.com', N'01234', N'3', 1, CAST(N'2021-10-27' AS Date))
GO
INSERT [dbo].[Account_Role] ([Role_ID], [Role]) VALUES (N'1', N'Admin')
INSERT [dbo].[Account_Role] ([Role_ID], [Role]) VALUES (N'2', N'Employee')
INSERT [dbo].[Account_Role] ([Role_ID], [Role]) VALUES (N'3', N'Customers')
INSERT [dbo].[Account_Role] ([Role_ID], [Role]) VALUES (N'4', N'VIP')
GO
INSERT [dbo].[Account_Status] ([Status_ID], [Status]) VALUES (1, N'Active')
INSERT [dbo].[Account_Status] ([Status_ID], [Status]) VALUES (2, N'Disable')
GO
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (N'1', N'Manchester United')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (N'2', N'Manchester City')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (N'3', N'Liverpool')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (N'4', N'Chelsea')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (N'5', N'Arsenal')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (N'6', N'Totteham')
GO
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'1', N'218', NULL, NULL, N'1')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'10', N'155', NULL, NULL, N'4')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'100', N'217', NULL, NULL, N'39')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'101', N'216', NULL, NULL, N'39')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'102', N'207', NULL, NULL, N'39')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'103', N'144', NULL, NULL, N'40')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'104', N'154', NULL, NULL, N'40')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'105', N'158', NULL, NULL, N'40')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'106', N'88', NULL, NULL, N'40')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'107', N'28', NULL, NULL, N'41')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'108', N'43', NULL, NULL, N'41')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'109', N'302', NULL, NULL, N'42')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'11', N'151', NULL, NULL, N'4')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'110', N'391', NULL, NULL, N'42')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'111', N'353', NULL, NULL, N'42')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'112', N'353', NULL, NULL, N'42')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'113', N'216', NULL, NULL, N'44')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'114', N'217', NULL, NULL, N'44')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'115', N'210', NULL, NULL, N'44')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'116', N'20', NULL, NULL, N'45')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'117', N'62', NULL, NULL, N'46')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'118', N'54', NULL, NULL, N'46')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'119', N'285', NULL, NULL, N'47')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'12', N'156', NULL, NULL, N'4')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'120', N'174', NULL, NULL, N'47')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'121', N'106', NULL, NULL, N'48')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'122', N'112', NULL, NULL, N'48')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'123', N'103', NULL, NULL, N'48')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'124', N'371', NULL, NULL, N'49')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'125', N'265', NULL, NULL, N'49')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'126', N'258', NULL, NULL, N'49')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'127', N'80', NULL, NULL, N'50')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'128', N'82', NULL, NULL, N'50')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'129', N'194', NULL, NULL, N'50')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'13', N'322', NULL, NULL, N'4')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'130', N'47', NULL, NULL, N'51')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'131', N'56', NULL, NULL, N'51')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'132', N'59', NULL, NULL, N'51')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'133', N'218', NULL, NULL, N'51')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'134', N'217', NULL, NULL, N'51')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'135', N'213', NULL, NULL, N'51')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'136', N'282', NULL, NULL, N'52')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'137', N'353', NULL, NULL, N'52')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'138', N'194', NULL, NULL, N'53')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'139', N'194', NULL, NULL, N'53')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'14', N'104', NULL, NULL, N'5')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'140', N'90', NULL, NULL, N'53')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'141', N'174', NULL, NULL, N'54')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'142', N'373', NULL, NULL, N'54')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'143', N'154', NULL, NULL, N'55')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'144', N'151', NULL, NULL, N'55')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'145', N'32', NULL, NULL, N'56')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'146', N'238', NULL, NULL, N'57')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'147', N'16', NULL, NULL, N'58')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'148', N'22', NULL, NULL, N'58')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'149', N'13', NULL, NULL, N'58')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'15', N'113', NULL, NULL, N'5')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'150', N'338', NULL, NULL, N'58')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'151', N'386', NULL, NULL, N'59')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'152', N'138', NULL, NULL, N'60')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'153', N'80', NULL, NULL, N'60')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'154', N'390', NULL, NULL, N'62')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'155', N'390', NULL, NULL, N'62')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'156', N'278', NULL, NULL, N'62')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'157', N'163', NULL, NULL, N'63')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'158', N'110', NULL, NULL, N'64')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'159', N'107', NULL, NULL, N'64')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'16', N'110', NULL, NULL, N'5')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'160', N'121', NULL, NULL, N'64')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'161', N'314', NULL, NULL, N'64')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'162', N'261', NULL, NULL, N'66')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'163', N'154', NULL, NULL, N'66')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'164', N'216', NULL, NULL, N'67')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'165', N'217', NULL, NULL, N'67')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'166', N'235', NULL, NULL, N'67')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'167', N'232', NULL, NULL, N'67')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'168', N'372', NULL, NULL, N'68')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'169', N'54', NULL, NULL, N'68')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'17', N'87', NULL, NULL, N'6')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'170', N'59', NULL, NULL, N'68')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'171', N'332', NULL, NULL, N'69')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'172', N'41', NULL, NULL, N'69')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'173', N'135', NULL, NULL, N'70')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'174', N'133', NULL, NULL, N'70')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'175', N'195', NULL, NULL, N'70')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'176', N'194', NULL, NULL, N'70')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'18', N'80', NULL, NULL, N'6')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'19', N'74', NULL, NULL, N'6')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'2', N'215', NULL, NULL, N'1')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'20', N'254', NULL, NULL, N'7')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'21', N'254', NULL, NULL, N'7')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'22', N'254', NULL, NULL, N'7')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'23', N'263', NULL, NULL, N'7')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'24', N'253', NULL, NULL, N'7')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'25', N'161', NULL, NULL, N'7')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'26', N'60', NULL, NULL, N'8')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'27', N'52', NULL, NULL, N'8')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'28', N'338', NULL, NULL, N'9')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'29', N'286', NULL, NULL, N'10')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'3', N'217', NULL, NULL, N'1')
GO
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'30', N'280', NULL, NULL, N'10')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'31', N'358', NULL, NULL, N'10')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'32', N'371', NULL, NULL, N'10')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'33', N'367', NULL, NULL, N'10')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'34', N'373', NULL, NULL, N'10')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'35', N'71', NULL, NULL, N'11')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'36', N'80', NULL, NULL, N'11')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'37', N'236', NULL, NULL, N'12')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'38', N'237', NULL, NULL, N'12')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'39', N'240', NULL, NULL, N'12')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'4', N'391', NULL, NULL, N'2')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'40', N'228', NULL, NULL, N'12')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'41', N'168', NULL, NULL, N'13')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'42', N'174', NULL, NULL, N'13')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'43', N'156', NULL, NULL, N'13')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'44', N'158', NULL, NULL, N'13')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'45', N'44', NULL, NULL, N'15')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'46', N'39', NULL, NULL, N'15')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'47', N'218', NULL, NULL, N'16')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'48', N'216', NULL, NULL, N'16')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'49', N'123', NULL, NULL, N'17')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'5', N'353', NULL, NULL, N'2')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'50', N'108', NULL, NULL, N'17')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'51', N'335', NULL, NULL, N'18')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'52', N'97', NULL, NULL, N'19')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'53', N'172', NULL, NULL, N'19')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'54', N'366', NULL, NULL, N'20')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'55', N'373', NULL, NULL, N'20')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'56', N'373', NULL, NULL, N'20')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'57', N'371', NULL, NULL, N'20')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'58', N'188', NULL, NULL, N'20')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'59', N'217', NULL, NULL, N'21')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'6', N'355', NULL, NULL, N'2')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'60', N'117', NULL, NULL, N'21')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'61', N'366', NULL, NULL, N'22')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'62', N'373', NULL, NULL, N'22')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'63', N'136', NULL, NULL, N'22')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'64', N'136', NULL, NULL, N'22')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'65', N'302', NULL, NULL, N'23')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'66', N'194', NULL, NULL, N'23')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'67', N'190', NULL, NULL, N'23')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'68', N'286', NULL, NULL, N'24')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'69', N'285', NULL, NULL, N'24')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'7', N'36', NULL, NULL, N'2')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'70', N'318', NULL, NULL, N'24')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'71', N'314', NULL, NULL, N'24')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'72', N'158', NULL, NULL, N'25')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'73', N'156', NULL, NULL, N'25')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'74', N'40', NULL, NULL, N'26')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'75', N'62', NULL, NULL, N'26')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'76', N'230', NULL, NULL, N'27')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'77', N'239', NULL, NULL, N'27')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'78', N'239', NULL, NULL, N'27')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'79', N'238', NULL, NULL, N'27')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'8', N'44', NULL, NULL, N'2')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'80', N'231', NULL, NULL, N'27')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'81', N'263', NULL, NULL, N'28')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'82', N'338', NULL, NULL, N'29')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'83', N'97', NULL, NULL, N'30')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'84', N'172', NULL, NULL, N'30')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'85', N'123', NULL, NULL, N'31')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'86', N'123', NULL, NULL, N'31')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'87', N'114', NULL, NULL, N'31')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'88', N'390', NULL, NULL, N'32')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'89', N'265', NULL, NULL, N'34')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'9', N'194', NULL, NULL, N'3')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'90', N'265', NULL, NULL, N'34')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'91', N'254', NULL, NULL, N'34')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'92', N'258', NULL, NULL, N'34')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'93', N'274', NULL, NULL, N'34')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'94', N'233', NULL, NULL, N'35')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'95', N'81', NULL, NULL, N'36')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'96', N'22', NULL, NULL, N'37')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'97', N'138', NULL, NULL, N'38')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'98', N'140', NULL, NULL, N'38')
INSERT [dbo].[Goal] ([Goal_ID], [Players_ID], [Time], [Scored_Way], [Matches_ID]) VALUES (N'99', N'140', NULL, NULL, N'38')
GO
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'1', N'1', N'MU-1.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'10', N'6', N'MU-6.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'100', N'54', N'A-10.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'101', N'55', N'A-11.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'11', N'6', N'MU-6.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'12', N'7', N'MU-7.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'13', N'7', N'MU-7.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'14', N'8', N'MU-8.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'15', N'8', N'MU-8.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'16', N'9', N'MU-9.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'17', N'9', N'MU-9.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'18', N'10', N'MU-10.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'19', N'10', N'MU-10.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'2', N'1', N'MU-1.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'20', N'11', N'MU-11.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'21', N'11', N'MU-11.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'22', N'12', N'MC-1.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'23', N'12', N'MC-1.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'24', N'13', N'MC-2.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'25', N'13', N'MC-2.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'26', N'14', N'MC-3.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'27', N'14', N'MC-3.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'28', N'15', N'MC-4.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'29', N'15', N'MC-4.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'3', N'2', N'MU-2.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'30', N'16', N'MC-5.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'31', N'16', N'MC-5.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'32', N'17', N'MC-6.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'33', N'17', N'MC-6.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'34', N'18', N'MC-7.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'35', N'19', N'MC-8.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'36', N'19', N'MC-8.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'37', N'20', N'MC-9.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'38', N'20', N'MC-9.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'39', N'21', N'MC-10.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'4', N'2', N'MU-2.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'40', N'22', N'MC-11.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'41', N'22', N'MC-11.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'42', N'23', N'L-1.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'43', N'23', N'L-1.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'44', N'24', N'L-2.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'45', N'24', N'L-2.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'46', N'25', N'L-3.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'47', N'25', N'L-3.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'48', N'26', N'L-4.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'49', N'26', N'L-4.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'5', N'3', N'MU-3.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'50', N'27', N'L-5.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'51', N'27', N'L-5.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'52', N'28', N'L-6.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'53', N'28', N'L-6.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'54', N'29', N'L-7.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'55', N'29', N'L-7.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'56', N'30', N'L-8.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'57', N'30', N'L-8.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'58', N'31', N'L-9.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'59', N'31', N'L-9.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'6', N'4', N'MU-4.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'60', N'32', N'L-10.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'61', N'32', N'L-10.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'62', N'33', N'L-11.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'63', N'34', N'C-1.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'64', N'34', N'C-1.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'65', N'35', N'C-2.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'66', N'35', N'C-2.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'67', N'36', N'C-3.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'68', N'36', N'C-3.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'69', N'37', N'C-4.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'7', N'4', N'MU-4.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'70', N'37', N'C-4.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'71', N'38', N'C-5.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'72', N'38', N'C-5.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'73', N'39', N'C-6.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'74', N'39', N'C-6.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'75', N'40', N'C-7.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'76', N'40', N'C-7.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'77', N'41', N'C-8.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'78', N'41', N'C-8.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'79', N'42', N'C-9.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'8', N'5', N'MU-5.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'80', N'42', N'C-9.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'81', N'43', N'C-10.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'82', N'43', N'C-10.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'83', N'44', N'C-11.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'84', N'44', N'C-11.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'85', N'45', N'A-1.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'86', N'45', N'A-1.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'87', N'46', N'A-2.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'88', N'47', N'A-3.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'89', N'47', N'A-3.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'9', N'5', N'MU-5.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'90', N'48', N'A-4.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'91', N'49', N'A-5.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'92', N'49', N'A-5.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'93', N'50', N'A-6.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'94', N'51', N'A-7.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'95', N'51', N'A-7.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'96', N'52', N'A-8.1.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'97', N'52', N'A-8.2.jpg')
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'98', N'53', N'A-9.1.jpg')
GO
INSERT [dbo].[Image] ([Image_ID], [Product_ID], [ImageURL]) VALUES (N'99', N'53', N'A-9.2.jpg')
GO
INSERT [dbo].[League] ([League_ID], [League_Name]) VALUES (N'1', N'Premier League')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (1, N'admin', CAST(N'2021-10-25' AS Date), 10000, N'khong co gi', N'1', 2)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (2, N'tung', CAST(N'2021-10-25' AS Date), 89999, N'nothing', N'1', 1)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (31, NULL, CAST(N'2021-10-25' AS Date), 368, NULL, N'1', 7)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (33, NULL, CAST(N'2021-10-25' AS Date), 193, NULL, N'1', 9)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (34, NULL, CAST(N'2021-10-26' AS Date), 84, NULL, N'1', 10)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (35, NULL, CAST(N'2021-10-26' AS Date), 474, NULL, N'1', 11)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (36, NULL, CAST(N'2021-10-26' AS Date), 155, NULL, N'1', 12)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (37, NULL, CAST(N'2021-10-26' AS Date), 79, NULL, N'1', 13)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (40, N'admin', CAST(N'2021-10-26' AS Date), 170, N'kakakakak', N'1', 16)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (42, N'tung', CAST(N'2021-10-26' AS Date), 0, N'ihihihi', N'1', 18)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (43, N'tung2', CAST(N'2021-10-27' AS Date), 278, N'hihihi', N'1', 19)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (44, N'tung2', CAST(N'2021-10-28' AS Date), 263, N'hihi', N'1', 20)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (45, N'admin', CAST(N'2021-10-29' AS Date), 626, N'mua page di moi nguoi', N'1', 21)
INSERT [dbo].[Order] ([Order_ID], [Customer], [Create_Date], [Total_Price], [Note], [Status_ID], [Ship_ID]) VALUES (46, N'admin', CAST(N'2021-10-29' AS Date), 425, N'Ship can than', N'1', 22)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Order_Status] ([Status_ID], [Status]) VALUES (N'1', N'Pending')
INSERT [dbo].[Order_Status] ([Status_ID], [Status]) VALUES (N'2', N'Accept')
INSERT [dbo].[Order_Status] ([Status_ID], [Status]) VALUES (N'3', N'Delivering')
INSERT [dbo].[Order_Status] ([Status_ID], [Status]) VALUES (N'4', N'Success')
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (1, 1, N'1', N'Ronaldo Shirt 7', 114, 1, NULL)
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (2, 2, N'2', N'Bruno Shirt 18', 84, 2, NULL)
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (15, 31, N'1', N'Ronaldo Shirt 7', 114, 2, N'MU-1.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (16, 31, N'16', N'Foden Shirt 47', 70, 2, N'MC-5.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (21, 33, N'1', N'Ronaldo Shirt 7', 114, 1, N'MU-1.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (22, 33, N'11', N'Varane Shirt 19', 79, 1, N'MU-11.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (23, 34, N'38', N'Kante Shirt 7', 84, 1, N'C-5.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (24, 35, N'11', N'Varane Shirt 19', 79, 6, N'MU-11.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (25, 36, N'12', N'Sterling Shirt 7', 85, 1, N'MC-1.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (26, 36, N'16', N'Foden Shirt 47', 70, 1, N'MC-5.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (27, 37, N'11', N'Varane Shirt 19', 79, 1, N'MU-11.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (30, 40, N'13', N'Mahrez Shirt 26', 85, 2, N'MC-2.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (32, 43, N'1', N'Ronaldo Shirt 7', 114, 1, N'MU-1.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (33, 43, N'10', N'Shaw Shirt 23', 79, 1, N'MU-10.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (34, 43, N'13', N'Mahrez Shirt 26', 85, 1, N'MC-2.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (35, 44, N'1', N'Ronaldo Shirt 7', 114, 1, N'MU-1.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (36, 44, N'11', N'Varane Shirt 19', 79, 1, N'MU-11.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (37, 44, N'16', N'Foden Shirt 47', 70, 1, N'MC-5.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (38, 45, N'1', N'Ronaldo Shirt 7', 114, 4, N'MU-1.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (39, 45, N'13', N'Mahrez Shirt 26', 85, 1, N'MC-2.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (40, 45, N'17', N'Gealish Shirt 10', 85, 1, N'MC-6.jpg')
INSERT [dbo].[OrderDetail] ([Detail_ID], [Order_ID], [Product_ID], [Product_Name], [Product_Price], [Quantity], [Product_Image]) VALUES (41, 46, N'12', N'Sterling Shirt 7', 85, 5, N'MC-1.jpg')
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'1', N'Bernd Leno', N'GER', N'1', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'10', N'
Nuno Tavares', N'POR', N'1', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'100', N'Matej Vydra', N'CZE', N'5', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'101', N'Kepa Arrizabalaga', N'ESP', N'6', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'102', N'
Édouard Mendy', N'SEN', N'6', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'103', N'
Antonio Rüdiger', N'GER', N'6', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'104', N'Marcos Alonso', N'ESP', N'6', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'105', N'Andreas Christensen', N'DEN', N'6', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'106', N'Thiago Silva', N'BRA', N'6', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'107', N'Ben Chilwell', N'ENG', N'6', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'108', N'Reece James', N'ENG', N'6', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'109', N'César Azpilicueta', N'ESP', N'6', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'11', N'Ben White', N'ENG', N'1', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'110', N'Trevoh Chalobah', N'ENG', N'6', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'111', N'Jorginho', N'ITA', N'6', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'112', N'N''Golo Kanté', N'FRA', N'6', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'113', N'Christian Pulisic', N'USA', N'6', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'114', N'Mateo Kovacic', N'CRO', N'6', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'115', N'Mason Mount', N'ENG', N'6', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'116', N'Hakim Ziyech', N'MOR', N'6', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'117', N'Kai Havertz', N'GER', N'6', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'118', N'Ruben Loftus-Cheek', N'ENG', N'6', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'119', N'Saúl Ñíguez', N'ESP', N'6', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'12', N'Takehiro Tomiyasu', N'JPN', N'1', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'120', N'Ross Barkley', N'ENG', N'6', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'121', N'Timo Werner', N'GER', N'6', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'122', N'Callum Hudson-Odoi', N'ENG', N'6', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'123', N'Romelu Lukaku', N'BEL', N'6', NULL, N'CF', N'Lukaku.png')
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'124', N'Jack Butland', N'ENG', N'7', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'125', N'Vicente Guaita', N'ESP', N'7', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'126', N'Joel Ward', N'ENG', N'7', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'127', N'Nathaniel Clyne', N'ENG', N'7', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'128', N'Tyrick Mitchell', N'ENG', N'7', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'129', N'Marc Guéhi', N'ENG', N'7', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'13', N'Bukayo Saka', N'ENG', N'1', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'130', N'Joachim Andersen', N'DEN', N'7', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'131', N'Luka Milivojevic', N'SER', N'7', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'132', N'Cheikhou Kouyaté', N'SEN', N'7', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'133', N'Jeffrey Schlupp', N'GHA', N'7', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'134', N'James McArthur', N'SCO', N'7', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'135', N'Michael Olise', N'FRA', N'7', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'136', N'Conor Gallagher', N'ENG', N'7', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'137', N'Jordan Ayew', N'GHA', N'7', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'138', N'Wilfried Zaha', N'COT', N'7', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'139', N'Christian Benteke', N'BEL', N'7', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'14', N'Thomas Partey', N'GHA', N'1', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'140', N'Odsonne Édouard', N'FRA', N'7', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'141', N'Jordan Pickford', N'ENG', N'8', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'142', N'Asmir Begovic', N'B&H', N'8', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'143', N'Mason Holgate', N'ENG', N'8', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'144', N'Michael Keane', N'ENG', N'8', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'145', N'Lucas Digne', N'FRA', N'8', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'146', N'Yerry Mina', N'COL', N'8', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'147', N'Ben Godfrey', N'ENG', N'8', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'148', N'Séamus Coleman', N'IRE', N'8', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'149', N'Allan', N'BRA', N'8', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'15', N'Mohamed Elneny', N'EGY', N'1', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'150', N'Fabian Delph', N'ENG', N'8', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'151', N'Abdoulaye Doucouré', N'FRA', N'8', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'152', N'
André Gomes', N'POR', N'8', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'153', N'Tom Davies', N'ENG', N'8', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'154', N'Andros Townsend', N'ENG', N'8', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'155', N'Richarlison', N'BRA', N'8', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'156', N'Dominic Calvert-Lewin', N'ENG', N'8', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'157', N'Alex Iwobi', N'NIG', N'8', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'158', N'Demarai Gray', N'ENG', N'8', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'159', N'Salomón Rondón', N'VEN', N'8', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'16', N'Emile Smith Rowe', N'ENG', N'1', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'160', N'Illan Meslier', N'FRA', N'9', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'161', N'
Luke Ayling', N'ENG', N'9', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'162', N'Liam Cooper', N'SCO', N'9', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'163', N'Diego Llorente', N'ESP', N'9', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'164', N'Pascal Struijk', N'NET', N'9', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'165', N'Junior Firpo', N'ESP', N'9', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'166', N'Stuart Dallas', N'NIR', N'9', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'167', N'Kalvin Phillips', N'ENG', N'9', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'168', N'Mateusz Klich', N'POL', N'9', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'169', N'Jamie Shackleton', N'ENG', N'9', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'17', N'
Granit Xhaka', N'SWI', N'1', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'170', N'Jack Harrison', N'ENG', N'9', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'171', N'Daniel James', N'WAL', N'9', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'172', N'Patrick Bamford', N'ENG', N'9', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'173', N'Tyler Roberts', N'WAL', N'9', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'174', N'Raphinha', N'BRA', N'9', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'175', N'Rodrigo', N'ESP', N'9', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'176', N'Kasper Schmeichel', N'DEN', N'10', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'177', N'Danny Ward', N'WAL', N'10', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'178', N'James Justin', N'ENG', N'10', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'179', N'Wesley Fofana', N'FRA', N'10', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'18', N'Ainsley Maitland-Niles', N'ENG', N'1', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'180', N'Çaglar Söyüncü', N'TUR', N'10', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'181', N'Jonny Evans', N'NIR', N'10', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'182', N'Daniel Amartey', N'GHA', N'10', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'183', N'Ricardo Pereira', N'POR', N'10', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'184', N'Timothy Castagne', N'BEL', N'10', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'185', N'Luke Thomas', N'ENG', N'10', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'186', N'Ryan Bertrand', N'ENG', N'10', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'187', N'Jannik Vestergaard', N'DEN', N'10', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'188', N'Youri Tielemans', N'BEl', N'10', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'189', N'James Maddison', N'ENG', N'10', NULL, N'MF', NULL)
GO
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'19', N'
Albert Sambi Lokonga', N'BEL', N'1', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'190', N'Marc Albrighton', N'ENG', N'10', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'191', N'Harvey Barnes', N'ENG', N'10', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'192', N'Wilfred Ndidi', N'NIR', N'10', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'193', N'Boubakary Soumaré', N'FRA', N'10', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'194', N'Jamie Vardy', N'ENG', N'10', NULL, N'CF', N'Vardy.png')
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'195', N'Kelechi Iheanacho', N'NIG', N'10', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'196', N'Ayoze Pérez', N'ESP', N'10', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'197', N'Ademola Lookman', N'ENG', N'10', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'198', N'Alisson', N'BRA', N'11', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'199', N'
Adrián', N'ESP', N'11', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'2', N'Aaron Ramsdale', N'ENG', N'1', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'20', N'Martin Ødegaard', N'NOR', N'1', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'200', N'Virgil van Dijk', N'NET', N'11', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'201', N'Joseph Gomez', N'ENG', N'11', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'202', N'Konstantinos Tsimikas', N'GEE', N'11', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'203', N'Andrew Robertson', N'SCO', N'11', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'204', N'Joel Matip', N'CAM', N'11', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'205', N'Trent Alexander-Arnold', N'ENG', N'11', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'206', N'Ibrahima Konaté
', N'FRA', N'11', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'207', N'Fabinho', N'BRA', N'11', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'208', N'Thiago', N'ESP', N'11', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'209', N'James Milner', N'ENG', N'11', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'21', N'Alexandre Lacazette', N'FRA', N'1', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'210', N'Naby Keïta', N'GUI', N'11', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'211', N'Jordan Henderson', N'ENG', N'11', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'212', N'
Alex Oxlade-Chamberlain', N'ENG', N'11', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'213', N'Curtis Jones', N'ENG', N'11', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'214', N'Harvey Elliott', N'ENG', N'11', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'215', N'Roberto Firmino', N'BRA', N'11', NULL, N'CF', N'Firmino.png')
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'216', N'Sadio Mané', N'SEN', N'11', NULL, N'CF', N'Mane.png')
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'217', N'Mohamed Salah', N'EGY', N'11', NULL, N'CF', N'Salah.png')
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'218', N'Diogo Jota', N'POR', N'11', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'219', N'Divock Origi', N'BEL', N'11', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'22', N'Pierre-Emerick Aubameyang', N'GAB', N'1', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'220', N'Takumi Minamino', N'JPN', N'11', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'221', N'Zack Steffen', N'USA', N'12', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'222', N'Ederson', N'BRA', N'12', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'223', N'Kyle Walker', N'ENG', N'12', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'224', N'
Rúben Dias', N'POR', N'12', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'225', N'John Stones', N'ENG', N'12', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'226', N'Nathan Aké', N'NET', N'12', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'227', N'Oleksandr Zinchenko', N'UKR', N'12', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'228', N'Aymeric Laporte', N'ESP', N'12', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'229', N'
João Cancelo', N'POR', N'12', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'23', N'
Nicolas Pépé', N'CDI', N'1', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'230', N'Ilkay Gündogan', N'GER', N'12', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'231', N'Rodri', N'ESP', N'12', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'232', N'Kevin De Bruyne', N'BEL', N'12', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'233', N'Bernardo Silva', N'POR', N'12', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'234', N'Fernandinho', N'BRA', N'12', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'235', N'Phil Foden', N'ENG', N'12', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'236', N'Jack Grealish', N'ENG', N'12', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'237', N'Raheem Sterling', N'ENG', N'12', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'238', N'Gabriel Jesus', N'BRA', N'12', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'239', N'Ferran Torres', N'ESP', N'12', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'24', N'Eddie Nketiah
', N'ENG', N'1', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'240', N'Riyad Mahrez', N'ALG', N'12', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'241', N'David De Gea', N'ESP', N'13', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'242', N'Dean Henderson', N'ENG', N'13', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'243', N'
Victor Lindelöf', N'SWE', N'13', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'244', N'Eric Bailly', N'COT', N'13', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'245', N'Phil Jones', N'ENG', N'13', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'246', N'Harry Maguire', N'ENG', N'13', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'247', N'Luke Shaw', N'ENG', N'13', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'248', N'Alex Telles', N'BRA', N'13', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'249', N'Aaron Wan-Bissaka', N'ENG', N'13', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'25', N'Gabriel Martinelli', N'BRA', N'1', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'250', N'Diogo Dalot', N'POR', N'13', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'251', N'Raphaël Varane', N'FRA', N'13', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'252', N'Paul Pogba', N'FRA', N'13', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'253', N'Fred', N'BRA', N'13', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'254', N'Bruno Fernandes', N'POR', N'13', NULL, N'MF', N'Bruno.png')
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'255', N'Nemanja Matic', N'SER', N'13', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'256', N'Donny van de Beek', N'NET', N'13', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'257', N'Scott McTominay', N'SCO', N'13', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'258', N'Jesse Lingard', N'ENG', N'13', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'259', N'Juan Mata', N'ESP', N'13', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'26', N'
Jed Steer', N'ENG', N'2', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'260', N'Edinson Cavani', N'URU', N'13', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'261', N'Anthony Martial', N'FRA', N'13', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'262', N'Marcus Rashford', N'ENG', N'13', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'263', N'Mason Greenwoord', N'ENG', N'13', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'264', N'Jadon Sancho', N'ENG', N'13', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'265', N'Cristiano Ronaldo', N'POR', N'13', NULL, N'CF', N'CR7.png')
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'266', N'Karl Darlow', N'ENG', N'14', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'267', N'Freddie Woodman', N'ENG', N'14', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'268', N'Ciaran Clark', N'IRE', N'14', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'269', N'Paul Dummett', N'WAL', N'14', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'27', N'Emiliano Martínez', N'ARG', N'2', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'270', N'
Fabian Schär', N'SWI', N'14', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'271', N'Jamaal Lascelles', N'ENG', N'14', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'272', N'Jamal Lewis', N'NIR', N'14', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'273', N'Federico Fernández', N'ARG', N'14', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'274', N'Javier Manquillo', N'ESP', N'14', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'275', N'Jonjo Shelvey', N'ENG', N'14', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'276', N'Matt Ritchie', N'SCO', N'14', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'277', N'Isaac Hayden', N'ENG', N'14', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'278', N'Jeff Hendrick', N'IRE', N'14', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'279', N'Ryan Fraser', N'SCO', N'14', NULL, N'MF', NULL)
GO
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'28', N'
Matthew Cash', N'ENG', N'2', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'280', N'Jacob Murphy', N'ENG', N'14', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'281', N'Miguel Almirón', N'PAR', N'14', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'282', N'Sean Longstaff', N'ENG', N'14', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'283', N'Joseph Willlock', N'ENG', N'14', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'284', N'Joelinton', N'BRA', N'14', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'285', N'Allan Saint-Maximin', N'FRA', N'14', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'286', N'Callum Wilson', N'ENG', N'14', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'287', N'Tim Krul', N'NET', N'15', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'288', N'Max Aarons', N'ENG', N'15', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'289', N'Grant Hanley', N'SCO', N'15', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'29', N'
Ezri Konsa', N'ENG', N'2', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'290', N'Ben Gibson', N'ENG', N'15', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'291', N'Dimitris Giannoulis', N'GEE', N'15', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'292', N'Brandon Williams', N'ENG', N'15', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'293', N'Ozan Kabak', N'TUR', N'15', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'294', N'Lukas Rupp', N'GER', N'15', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'295', N'Kieran Dowell', N'ENG', N'15', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'296', N'Todd Cantwell', N'ENG', N'15', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'297', N'Kenny McLean', N'SCO', N'15', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'298', N'Milot Rashica', N'KOS', N'15', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'299', N'Billy Gilmour', N'SCO', N'15', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'3', N'Kieran Tierney', N'SCO', N'1', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'30', N'Tyrone Mings', N'ENG', N'2', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'300', N'Pierre Lees-Melou', N'FRA', N'15', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'301', N'Mathias Normann', N'NOR', N'15', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'302', N'Teemu Pukki', N'FIN', N'15', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'303', N'Adam Idah', N'IRE', N'15', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'304', N'Johnua Sargent', N'USA', N'15', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'305', N'Alex McCarthy', N'ENG', N'16', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'306', N'Fraser Forster', N'ENG', N'16', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'307', N'Kyle Walker-Peters', N'ENG', N'16', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'308', N'Jack Stephens', N'ENG', N'16', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'309', N'Mohammed Salisu', N'GHA', N'16', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'31', N'
Matt Targett', N'ENG', N'2', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'310', N'Jan Bednarek', N'POL', N'16', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'311', N'Romain Perraud', N'FRA', N'16', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'312', N'Valentino Livramento', N'ENG', N'16', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'313', N'Oriol Romeu', N'ESP', N'16', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'314', N'James Ward-Prowse', N'ENG', N'16', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'315', N'Nathan Redmond', N'ENG', N'16', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'316', N'Moussa Djenepo', N'MAL', N'16', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'317', N'Ibrahima Diallo', N'FRA', N'16', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'318', N'Mohamed Elyounoussi', N'NOR', N'16', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'319', N'Che Adams', N'SCO', N'16', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'32', N'
Kortney Hause', N'ENG', N'2', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'320', N'Shane Long', N'IRE', N'16', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'321', N'Theo Walcott', N'ENG', N'16', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'322', N'Adam Armstrong', N'ENG', N'16', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'323', N'Hugo Lloris', N'FRA', N'17', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'324', N'Matt Doherty', N'IRE', N'17', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'325', N'Sergio Reguilón', N'ESP', N'17', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'326', N'Davinson Sánchez', N'COL', N'17', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'327', N'Joe Rodon', N'WAL', N'17', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'328', N'Japhet Tanganga', N'ENG', N'17', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'329', N'Ben Davies', N'WAL', N'17', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'33', N'
Ashley Young', N'ENG', N'2', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'330', N'Eric Dier', N'ENG', N'17', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'331', N'Cristian Romero', N'ARG', N'17', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'332', N'Pierre-Emile Højbjerg', N'DEN', N'17', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'333', N'Harry Winks', N'ENG', N'17', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'334', N'Giovani Lo Celso', N'ARG', N'17', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'335', N'Dele Alli', N'ENG', N'17', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'336', N'Tanguy Ndombele', N'FRA', N'17', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'337', N'Oliver Skipp', N'ENG', N'17', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'338', N'Son Heung-Min', N'KOR', N'17', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'339', N'Harry Kane', N'ENG', N'17', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'34', N'Axel Tuanzebe', N'ENG', N'2', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'340', N'Steven Bergwijn', N'NET', N'17', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'341', N'Lucas Moura', N'BRA', N'17', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'342', N'Ben Foster', N'ENG', N'18', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'343', N'Deniel Backmann', N'AUS', N'18', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'344', N'Jeremy Ngakia', N'ENG', N'18', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'345', N'William Troost-Ekong', N'NIG', N'18', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'346', N'Craig Cathcart', N'NIR', N'18', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'347', N'Danny Rose', N'ENG', N'18', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'348', N'Tom Cleverley', N'ENG', N'18', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'349', N'Ken Sema', N'SWE', N'18', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'35', N'
Douglas Luiz', N'BRA', N'2', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'350', N'Peter Etebo', N'NIG', N'18', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'351', N'Juraj Kacka', N'SLO', N'18', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'352', N'Moussa Sissoko', N'FRA', N'18', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'353', N'Ismaila Sarr', N'SEN', N'18', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'354', N'Joshua King', N'NOR', N'18', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'355', N'Cucho Hernández', N'COL', N'18', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'356', N'Lukasz Fabianski', N'POL', N'19', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'357', N'Alphonse Areola', N'FRA', N'19', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'358', N'Aaron Cresswell', N'ENG', N'19', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'359', N'Vladimir Coufal', N'CZE', N'19', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'36', N'John McGinn', N'SCO', N'2', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'360', N'Angelo Ogbonna', N'ITA', N'19', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'361', N'Issa Diop', N'FRA', N'19', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'362', N'Craig Dawson', N'ENG', N'19', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'363', N'Kurt Zouma', N'FRA', N'19', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'364', N'Manuel Lanzini', N'ARG', N'19', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'365', N'Mark Noble', N'ENG', N'19', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'366', N'Pablo Fornals', N'ESP', N'19', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'367', N'Tomas Soucek', N'CZE', N'19', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'368', N'Declan Rice', N'ENG', N'19', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'369', N'Nikalo Vlasic', N'CRO', N'19', NULL, N'MF', NULL)
GO
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'37', N'Trézéguet', N'EGY', N'2', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'370', N'Andriy Yarmolenko', N'UKR', N'19', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'371', N'Saïd Benrahma', N'ALG', N'19', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'372', N'Jarrod Bowen', N'ENG', N'19', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'373', N'Michail Antonio', N'JAM', N'19', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'374', N'
José Sá', N'POR', N'20', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'375', N'Marçal', N'BRA', N'20', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'376', N'Willy Boly', N'COT', N'20', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'377', N'Conor Coady', N'ENG', N'20', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'378', N'Nélson Semedo', N'POR', N'20', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'379', N'Maximilian Kilman', N'ENG', N'20', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'38', N'Marvelous Nakamba', N'ZIM', N'2', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'380', N'Rúben Neves', N'POR', N'20', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'381', N'Daniel Podence', N'POR', N'20', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'382', N'Romain Saïss', N'MOR', N'20', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'383', N'
João Moutinho', N'POR', N'20', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'384', N'Leander Dendoncker', N'BEL', N'20', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'385', N'Pedro Neto', N'POR', N'20', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'386', N'
Raúl Jiménez', N'MEX', N'20', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'387', N'
Fábio Silva', N'POR', N'20', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'388', N'
Adama Traoré', N'ESP', N'20', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'389', N'Trincão', N'POR', N'20', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'39', N'Anwar El Ghazi', N'NET', N'2', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'390', N'Hwang Hee-Chan', N'KOR', N'20', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'391', N'Emmanuel Dennis', N'NIG', N'18', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'4', N'Gabriel Magalhães', N'BRA', N'1', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'40', N'
Emiliano Buendía', N'ARG', N'2', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'41', N'Ollie Watkins', N'ENG', N'2', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'42', N'Bertrand Traoré', N'BUR', N'2', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'43', N'
Leon Bailey', N'JAM', N'2', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'44', N'
Danny Ings', N'ENG', N'2', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'45', N'
David Raya', N'ESP', N'3', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'46', N'
Rico Henry', N'ENG', N'3', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'47', N'Ethan Pinnock', N'JAM', N'3', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'48', N'
Pontus Jansson', N'SWE', N'3', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'49', N'Kristoffer Ajer', N'NOR', N'3', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'5', N'Rob Holding', N'ENG', N'1', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'50', N'
Mads Roerslev', N'DEN', N'3', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'51', N'
Zanka', N'DEN', N'3', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'52', N'Christian Nørgaard', N'DEN', N'3', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'53', N'
Mathias Jensen', N'DEN', N'3', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'54', N'Bryan Mbeumo', N'FRA', N'3', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'55', N'Shandon Baptiste', N'GRE', N'3', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'56', N'
Vitaly Janelt', N'GER', N'3', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'57', N'Mads Bidstrup', N'DEN', N'3', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'58', N'
Frank Onyeka', N'NIG', N'3', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'59', N'Yoane Wissa', N'DRC', N'3', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'6', N'
Cédric Soares', N'POR', N'1', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'60', N'
Sergi Canós', N'ESP', N'3', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'61', N'
Marcus Forss', N'FIN', N'3', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'62', N'
Ivan Toney', N'ENG', N'3', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'63', N'
Saman Ghoddos', N'IRA', N'3', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'64', N'
Jason Steele', N'ENG', N'4', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'65', N'
Robert Sánchez', N'ESP', N'4', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'66', N'Tariq Lamptey', N'ENG', N'4', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'67', N'Adam Webster', N'ENG', N'4', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'68', N'
Lewis Dunk', N'ENG', N'4', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'69', N'Dan Burn', N'ENG', N'4', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'7', N'Calum Chambers', N'ENG', N'1', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'70', N'
Joël Veltman', N'NET', N'4', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'71', N'
Shane Duffy', N'IRE', N'4', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'72', N'
Marc Cucurella', N'ESP', N'4', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'73', N'Yves Bissouma', N'MAL', N'4', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'74', N'Alexis Mac Allister', N'ARG', N'4', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'75', N'Pascal Groß', N'GER', N'4', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'76', N'Adam Lallana', N'ENG', N'4', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'77', N'Jakub Moder', N'POL', N'4', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'78', N'Solly March', N'ENG', N'4', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'79', N'Enock Mwepu', N'ZAM', N'4', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'8', N'
Pablo Marí', N'ESP', N'1', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'80', N'Neal Maupay', N'FRA', N'4', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'81', N'Leandro Trossard', N'BEL', N'4', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'82', N'Danny Welbeck', N'ENG', N'4', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'83', N'Nick Pope', N'ENG', N'5', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'84', N'Wayne Hennessey', N'WAL', N'5', NULL, N'GK', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'85', N'Matthew Lowton', N'ENG', N'5', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'86', N'Charlie Taylor', N'ENG', N'5', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'87', N'James Tarkowski', N'ENG', N'5', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'88', N'Ben Mee', N'ENG', N'5', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'89', N'Erik Pieters', N'NET', N'5', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'9', N'Sead Kolasinac', N'B&H', N'1', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'90', N'Maxwel Cornet', N'COT', N'5', NULL, N'DF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'91', N'Jack Cork', N'ENG', N'5', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'92', N'
Jóhann Gudmundsson', N'ICE', N'5', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'93', N'John Brownhill', N'ENG ', N'5', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'94', N'Dwight McNeil', N'ENG', N'5', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'95', N'Ashley Westwood', N'ENG', N'5', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'96', N'Aaron Lennon', N'ENG', N'5', NULL, N'MF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'97', N'Chris Wood', N'NZ', N'5', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'98', N'Ashley Barnes', N'ENG', N'5', NULL, N'CF', NULL)
INSERT [dbo].[Players] ([Players_ID], [Players_Name], [Nationality], [Team_ID], [DateOfBirth], [Position], [Others]) VALUES (N'99', N'Jay Rodriguez', N'ENG', N'5', NULL, N'CF', NULL)
GO
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'1', N'MU-1', N'Ronaldo Shirt 7', 10, 114, N'Manchester United Home Authentic Shirt 2021-22 with Ronaldo 7 printing', N'MU-1.jpg', NULL, N'1', N'1', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'10', N'MU-10', N'Shaw Shirt 23', 10, 79, N'Manchester United Third Authentic Shirt 2021-22 with Shaw 23 printing', N'MU-10.jpg', NULL, N'1', N'10', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'11', N'MU-11', N'Varane Shirt 19', 10, 79, N'Manchester United Cup Home Shirt 2021-22 with R.Varane 19 printing', N'MU-11.jpg', NULL, N'1', N'11', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'12', N'MC-1', N'Sterling Shirt 7', 10, 85, N'Manchester City Home Shirt 21/22 With Raheem Sterling Printing', N'MC-1.jpg', NULL, N'1', N'12', N'2')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'13', N'MC-2', N'Mahrez Shirt 26', 10, 85, N'Manchester City Home Shirt 21/22 With Riyad Mahrez Printing', N'MC-2.jpg', NULL, N'1', N'13', N'2')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'14', N'MC-3', N'De Bruyne Shirt 17', 10, 85, N'Manchester City Home Shirt 21/22 With Kevin De Bruyne Printing', N'MC-3.jpg', NULL, N'1', N'14', N'2')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'15', N'MC-4', N'Gündogan Shirt 8', 10, 85, N'Manchester City Home Shirt 21/22 With Ilkay Gündogan Printing', N'MC-4.jpg', NULL, N'1', N'15', N'2')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'16', N'MC-5', N'Foden Shirt 47', 10, 70, N'Manchester City Home Shirt 21/22 With Phil Foden Printing', N'MC-5.jpg', NULL, N'1', N'16', N'2')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'17', N'MC-6', N'Gealish Shirt 10', 10, 85, N'Manchester City Home Shirt 21/22 With Jack Grealish Printing', N'MC-6.jpg', NULL, N'1', N'17', N'2')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'18', N'MC-7', N'Walker Shirt 2', 10, 85, N'Manchester City Home Shirt 21/22 With Kyle Walker Printing', N'MC-7.jpg', NULL, N'1', N'18', N'2')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'19', N'MC-8', N'Dias Shirt 3', 10, 85, N'Manchester City Home Shirt 21/22 With Rúben Dias Printing', N'MC-8.jpg', NULL, N'1', N'19', N'2')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'2', N'MU-2', N'Bruno Shirt 18', 10, 114, N'Manchester United Home Authentic Shirt 2021-22 with B.Fernandes 18 printing', N'MU-2.jpg', NULL, N'1', N'2', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'20', N'MC-9', N'Cancelo Shirt 27', 10, 85, N'Manchester City Home Shirt 21/22 With João Cancelo Printing', N'MC-9.jpg', NULL, N'1', N'20', N'2')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'21', N'MC-10', N'Stones Shirt 5', 10, 85, N'Manchester City Home Shirt 21/22 With John Stones Printing', N'MC-10.jpg', NULL, N'1', N'21', N'2')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'22', N'MC-11', N'Ederson Shirt 31', 10, 85, N'Manchester City Goalkeeper Shirt 2021-22-Long Sleeve with Ederson M. 31 printing', N'MC-11.jpg', NULL, N'1', N'22', N'2')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'2222222', N'TEST ROI 1', N'TEST PRODUCT', 1111111, 111111, N'hihi', N'test1.jpg', CAST(N'2021-10-29' AS Date), N'1', N'2', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'23', N'L-1', N'Alison Shirt 1', 10, 69.95, N'LFC Nike Mens Home Stadium Goalkeeper Jersey 21/22', N'LIV-1.jpg', NULL, N'1', N'23', N'3')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'24', N'L-2', N'Fabinho Shirt 3', 10, 84.95, N'LFC Nike Mens Home Stadium Jersey 21/22', N'LIV-2.jpg', NULL, N'1', N'24', N'3')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'25', N'L-3', N'Virgil Shirt 4', 10, 84.95, N'LFC Nike Mens Home Stadium Jersey 21/22', N'LIV-3.jpg', NULL, N'1', N'25', N'3')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'26', N'L-4', N'Thiago Shirt 6', 10, 84.95, N'LFC Nike Mens Home Stadium Jersey 21/22', N'LIV-4.jpg', NULL, N'1', N'26', N'3')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'27', N'L-5', N'Firmino Shirt 9', 10, 59.95, N'LFC Nike Infant Third Kit 21/22', N'LIV-5.jpg', NULL, N'1', N'27', N'3')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'28', N'L-6', N'Mané Shirt 10', 10, 84.95, N'LFC Nike Mens Home Stadium Jersey 21/22', N'LIV-6.jpg', NULL, N'1', N'28', N'3')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'29', N'L-7', N'Salah Shirt 11', 10, 44.95, N'LFC Nike Infant Third Kit 21/22', N'LIV-7.jpg', NULL, N'1', N'29', N'3')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'3', N'MU-3', N'Sancho Shirt 25', 10, 114, N'Manchester United Home Authentic Shirt 2021-22 with Sancho 25 printing', N'MU-3.jpg', NULL, N'1', N'3', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'30', N'L-8', N'Henderson Shirt 14', 10, 84.95, N'LFC Nike Mens Home Stadium Jersey 21/22', N'LIV-8.jpg', NULL, N'1', N'30', N'3')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'31', N'L-9', N'Jota Shirt 20', 10, 69.95, N'LFC Nike Mens Home Stadium Jersey 21/22', N'LIV-9.jpg', NULL, N'1', N'31', N'3')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'32', N'L-10', N'Robertson Shirt 26', 10, 84.95, N'LFC Nike Mens Home Stadium Jersey 21/22', N'LIV-10.jpg', NULL, N'1', N'32', N'3')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'33', N'L-11', N'Trent Shirt 66', 10, 59.95, N'LFC Nike Infant Third Kit 21/22', N'LIV-11.jpg', NULL, N'1', N'33', N'3')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'3333333', N'TEST ROI', N'TEST-TIEP 1', 1111111, 1111, N'1234', N'test1.jpg', CAST(N'2021-10-29' AS Date), N'1', N'11', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'34', N'C-1', N'Rudiger Shirt 2', 10, 84, N'Chelsea Cup Away Stadium Shirt 2021-22 with Rüdiger 2 printing', N'C-1.jpg', NULL, N'1', N'34', N'4')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'35', N'C-2', N'Alonson Shirt 3', 10, 84, N'Chelsea Cup Home Stadium Shirt 2021-22 with Marcos A. 3 printing', N'C-2.jpg', NULL, N'1', N'35', N'4')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'36', N'C-3', N'Jorginho Shirt 5', 10, 64, N'Chelsea Home Stadium Kit 2021-22 - Little Kids with Jorginho 5 printing', N'C-3.jpg', NULL, N'1', N'36', N'4')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'37', N'C-4', N'Silva Shirt 6', 10, 119, N'Chelsea Home Vapor Match Shirt 2021-22 with T. Silva 6 printing', N'C-4.jpg', NULL, N'1', N'37', N'4')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'38', N'C-5', N'Kante Shirt 7', 10, 84, N'Chelsea Home Stadium Shirt 2021-22 with Kanté 7 printing', N'C-5.jpg', NULL, N'1', N'38', N'4')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'39', N'C-6', N'Lukaku Shirt 9', 10, 84, N'Chelsea Cup Home Stadium Shirt 2021-22 with Lukaku 9 printing', N'C-6.jpg', NULL, N'1', N'39', N'4')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'4', N'MU-4', N'Pogba Shirt 6', 10, 114, N'Manchester United Home Authentic Shirt 2021-22 with Pogba 6 printing', N'MU-4.jpg', NULL, N'1', N'4', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'40', N'C-7', N'Pulisic Shirt 10 ', 10, 84, N'Chelsea Home Stadium Shirt 2021-22 with Pulisic 10 printing', N'C-7.jpg', NULL, N'1', N'40', N'4')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'41', N'C-8', N'Werner Shirt 11', 10, 69, N'Chelsea Cup Home Stadium Shirt 2021-22 - Kids with Werner 11 printing', N'C-8.jpg', NULL, N'1', N'41', N'4')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'42', N'C-9', N'Mendy Shirt 16', 10, 69, N'Chelsea Goalkeeper Stadium Shirt 2021-22 - Kids with Mendy 16 printing', N'C-9.jpg', NULL, N'1', N'42', N'4')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'43', N'C-10', N'Mount Shirt 19', 10, 84, N'Chelsea Home Stadium Shirt 2021-22 with Mount 19 printing', N'C-10.jpg', NULL, N'1', N'43', N'4')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'44', N'C-11', N'Harvert Shirt 29', 10, 84, N'Chelsea Cup Home Stadium Shirt 2021-22 with Havertz 29 printing', N'C-11.jpg', NULL, N'1', N'44', N'4')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'44444', N'TEST-4', N'TEST PRODUCT4', 1111111, 1111, N'hihi', N'test1.jpg', CAST(N'2021-10-29' AS Date), N'1', N'4', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'45', N'A-1', N'Tierney Shirt 3', 10, 120, N'Arsenal Third Shirt 2021-22 with Tierney 3 printing', N'A-1.jpg', NULL, N'1', N'45', N'5')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'46', N'A-2', N'White Shirt 4', 10, 120, N'Arsenal Adult 21/22 Authentic Home Shirt', N'A-2.jpg', NULL, N'1', N'46', N'5')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'47', N'A-3', N'Partey Shirt 5', 10, 120, N'Arsenal Away Shirt 2021-22 with Thomas 5 printing', N'A-3.jpg', NULL, N'1', N'47', N'5')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'48', N'A-4', N'Gabriel Shirt 6', 10, 120, N'Arsenal Adult 21/22 Authentic Home Shirt', N'A-4.jpg', NULL, N'1', N'48', N'5')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'49', N'A-5', N'Saka Shirt 7', 10, 120, N'Arsenal Home Shirt 2021-22 with Saka 7 printing', N'A-5.jpg', NULL, N'1', N'49', N'5')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'5', N'MU-5', N'Rashford Shirt 10', 10, 114, N'Manchester United Home Authentic Shirt 2021-22 with Rashford 10 printing', N'MU-5.jpg', NULL, N'1', N'5', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'50', N'A-6', N'Ødegaard Shirt 8', 10, 120, N'Arsenal Adult 21/22 Authentic Home Shirt', N'A-6.jpg', NULL, N'1', N'50', N'5')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'51', N'A-7', N'Lacazette Shirt 9', 10, 120, N'Arsenal Adult 21/22 Authentic Home Shirt', N'A-7.jpg', NULL, N'1', N'51', N'5')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'52', N'A-8', N'Rowe Shirt 10 ', 10, 120, N'Arsenal Home Shirt 2021-22 with Smith Rowe 10 printing', N'A-8.jpg', NULL, N'1', N'52', N'5')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'53', N'A-9', N'Aubameyang Shirt 14', 10, 120, N'Arsenal Away Shirt 2021-22 with Aubameyang 14 printing', N'A-9.jpg', NULL, N'1', N'53', N'5')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'54', N'A-10', N'Tomiyasu Shirt 18', 10, 120, N'Arsenal Adult 21/22 Authentic Home Shirt', N'A-10.jpg', NULL, N'1', N'54', N'5')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'55', N'A-11', N'Xhaka Shirt 34', 10, 120, N'Arsenal Adult 21/22 Authentic Home Shirt', N'A-11.jpg', NULL, N'1', N'55', N'5')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'555', N'hihih', N'TEST PRODUCT999', 11, 999, N'hihihi', N'test.jpg', CAST(N'2021-10-29' AS Date), N'1', N'3', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'6', N'MU-6', N'Greenwood Shirt 11', 10, 114, N'Manchester United Third Authentic Shirt 2021-22 with Greenwood 11 printing', N'MU-6.jpg', NULL, N'1', N'6', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'7', N'MU-7', N'De Gea Shirt 1', 10, 84, N'Manchester United Home Goalkeeper Shirt 2021-22 with De Gea 1 printing', N'MU-7.jpg', NULL, N'1', N'7', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'8', N'MU-8', N'Maguire Shirt 5', 10, 114, N'Manchester United Cup Third Authentic Shirt 2021-22 with Maguire 5 printing', N'MU-8.jpg', NULL, N'1', N'8', N'1')
INSERT [dbo].[Product] ([Product_ID], [Product_Code], [Product_Name], [Quantity], [Price], [Description], [Image], [Date], [Status_ID], [Subcategory_ID], [Category_ID]) VALUES (N'9', N'MU-9', N'Lingard Shirt 14', 10, 79, N'Manchester United Home Shirt 2021-22 with Lingard 14 printing', N'MU-9.jpg', NULL, N'1', N'9', N'1')
GO
INSERT [dbo].[Product_Status] ([Status_ID], [Status_Name]) VALUES (N'1', N'Available')
INSERT [dbo].[Product_Status] ([Status_ID], [Status_Name]) VALUES (N'2', N'On Sale')
INSERT [dbo].[Product_Status] ([Status_ID], [Status_Name]) VALUES (N'3', N'Free Ship')
INSERT [dbo].[Product_Status] ([Status_ID], [Status_Name]) VALUES (N'4', N'Sold')
INSERT [dbo].[Product_Status] ([Status_ID], [Status_Name]) VALUES (N'5', N'Out of stock')
GO
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'1', 0, 3, N'15', N'11', CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'10', 2, 4, N'15', N'19', CAST(N'2021-08-15' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'11', 2, 0, N'4', N'18', CAST(N'2021-08-21' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'12', 5, 0, N'12', N'15', CAST(N'2021-08-21' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'13', 2, 2, N'9', N'8', CAST(N'2021-08-21' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'14', 0, 0, N'7', N'3', CAST(N'2021-08-21' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'15', 2, 0, N'2', N'14', CAST(N'2021-08-21' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'16', 2, 0, N'11', N'5', CAST(N'2021-08-21' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'17', 0, 2, N'1', N'6', CAST(N'2021-08-22' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'18', 0, 1, N'20', N'17', CAST(N'2021-08-22' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'19', 1, 1, N'16', N'13', CAST(N'2021-08-22' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'2', 3, 2, N'18', N'2', CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'20', 4, 1, N'19', N'10', CAST(N'2021-08-24' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'21', 1, 1, N'11', N'6', CAST(N'2021-08-28' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'22', 2, 2, N'19', N'7', CAST(N'2021-08-28' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'23', 1, 2, N'15', N'10', CAST(N'2021-08-28' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'24', 2, 2, N'14', N'16', CAST(N'2021-08-28' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'25', 0, 2, N'4', N'8', CAST(N'2021-08-28' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'26', 1, 1, N'2', N'3', CAST(N'2021-08-28' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'27', 5, 0, N'12', N'1', CAST(N'2021-08-28' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'28', 0, 1, N'20', N'13', CAST(N'2021-08-29' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'29', 1, 0, N'17', N'18', CAST(N'2021-08-29' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'3', 1, 0, N'10', N'20', CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'30', 1, 1, N'5', N'9', CAST(N'2021-08-29' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'31', 3, 0, N'6', N'2', CAST(N'2021-09-11' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'32', 0, 2, N'18', N'20', CAST(N'2021-09-11' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'33', 0, 0, N'16', N'19', CAST(N'2021-09-11' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'34', 4, 1, N'13', N'14', CAST(N'2021-09-11' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'35', 0, 1, N'10', N'12', CAST(N'2021-09-11' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'36', 0, 1, N'3', N'4', CAST(N'2021-09-11' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'37', 1, 0, N'1', N'15', CAST(N'2021-09-11' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'38', 3, 0, N'7', N'17', CAST(N'2021-09-11' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'39', 0, 3, N'9', N'11', CAST(N'2021-09-12' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'4', 3, 1, N'8', N'16', CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'40', 3, 1, N'8', N'5', CAST(N'2021-09-14' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'41', 3, 0, N'2', N'8', CAST(N'2021-09-18' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'42', 1, 3, N'15', N'18', CAST(N'2021-09-18' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'43', 0, 0, N'12', N'16', CAST(N'2021-09-18' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'44', 3, 0, N'11', N'7', CAST(N'2021-09-18' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'45', 0, 1, N'5', N'1', CAST(N'2021-09-18' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'46', 0, 2, N'20', N'3', CAST(N'2021-09-18' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'47', 1, 1, N'14', N'9', CAST(N'2021-09-18' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'48', 0, 3, N'17', N'6', CAST(N'2021-09-19' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'49', 1, 2, N'19', N'13', CAST(N'2021-09-19' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'5', 3, 0, N'6', N'7', CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'50', 2, 1, N'4', N'10', CAST(N'2021-09-19' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'51', 3, 3, N'3', N'11', CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'52', 1, 1, N'18', N'14', CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'53', 2, 2, N'10', N'5', CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'54', 1, 2, N'9', N'19', CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'55', 2, 0, N'8', N'15', CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'56', 0, 1, N'13', N'2', CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'57', 0, 1, N'6', N'12', CAST(N'2021-09-25' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'58', 3, 1, N'1', N'17', CAST(N'2021-09-26' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'59', 0, 1, N'16', N'20', CAST(N'2021-09-26' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'6', 1, 2, N'5', N'4', CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'60', 1, 1, N'7', N'4', CAST(N'2021-09-28' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'61', 0, 0, N'4', N'1', CAST(N'2021-10-02' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'62', 2, 1, N'20', N'14', CAST(N'2021-10-02' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'63', 1, 0, N'9', N'18', CAST(N'2021-10-02' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'64', 3, 1, N'6', N'16', CAST(N'2021-10-02' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'65', 0, 0, N'5', N'15', CAST(N'2021-10-02' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'66', 1, 1, N'13', N'8', CAST(N'2021-10-02' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'67', 2, 2, N'11', N'12', CAST(N'2021-10-03' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'68', 1, 2, N'19', N'3', CAST(N'2021-10-03' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'69', 2, 1, N'17', N'2', CAST(N'2021-10-03' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'7', 5, 1, N'13', N'9', CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'70', 2, 2, N'7', N'10', CAST(N'2021-10-03' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'8', 2, 0, N'3', N'1', CAST(N'2021-08-14' AS Date))
INSERT [dbo].[Result] ([Matches_ID], [Home_Goal], [Away_Goal], [Home_ID], [Away_ID], [date]) VALUES (N'9', 1, 0, N'17', N'12', CAST(N'2021-08-15' AS Date))
GO
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'1', N'1', CAST(N'2021-08-14' AS Date), N'15', N'11', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'10', N'1', CAST(N'2021-08-15' AS Date), N'15', N'19', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'11', N'1', CAST(N'2021-08-21' AS Date), N'4', N'18', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'12', N'1', CAST(N'2021-08-21' AS Date), N'12', N'15', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'13', N'1', CAST(N'2021-08-21' AS Date), N'9', N'8', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'14', N'1', CAST(N'2021-08-21' AS Date), N'7', N'3', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'15', N'1', CAST(N'2021-08-21' AS Date), N'2', N'14', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'16', N'1', CAST(N'2021-08-21' AS Date), N'11', N'5', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'17', N'1', CAST(N'2021-08-22' AS Date), N'1', N'6', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'18', N'1', CAST(N'2021-08-22' AS Date), N'20', N'17', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'19', N'1', CAST(N'2021-08-22' AS Date), N'16', N'13', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'2', N'1', CAST(N'2021-08-14' AS Date), N'18', N'2', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'20', N'1', CAST(N'2021-08-24' AS Date), N'19', N'10', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'21', N'1', CAST(N'2021-08-28' AS Date), N'11', N'6', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'22', N'1', CAST(N'2021-08-28' AS Date), N'19', N'7', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'23', N'1', CAST(N'2021-08-28' AS Date), N'15', N'10', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'24', N'1', CAST(N'2021-08-28' AS Date), N'14', N'16', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'25', N'1', CAST(N'2021-08-28' AS Date), N'4', N'8', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'26', N'1', CAST(N'2021-08-28' AS Date), N'2', N'3', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'27', N'1', CAST(N'2021-08-28' AS Date), N'12', N'1', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'28', N'1', CAST(N'2021-08-29' AS Date), N'20', N'13', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'29', N'1', CAST(N'2021-08-29' AS Date), N'17', N'18', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'3', N'1', CAST(N'2021-08-14' AS Date), N'10', N'20', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'30', N'1', CAST(N'2021-08-29' AS Date), N'5', N'9', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'31', N'1', CAST(N'2021-09-11' AS Date), N'6', N'2', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'32', N'1', CAST(N'2021-09-11' AS Date), N'18', N'20', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'33', N'1', CAST(N'2021-09-11' AS Date), N'16', N'19', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'34', N'1', CAST(N'2021-09-11' AS Date), N'13', N'14', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'35', N'1', CAST(N'2021-09-11' AS Date), N'10', N'12', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'36', N'1', CAST(N'2021-09-11' AS Date), N'3', N'4', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'37', N'1', CAST(N'2021-09-11' AS Date), N'1', N'15', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'38', N'1', CAST(N'2021-09-11' AS Date), N'7', N'17', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'39', N'1', CAST(N'2021-09-12' AS Date), N'9', N'11', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'4', N'1', CAST(N'2021-08-14' AS Date), N'8', N'16', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'40', N'1', CAST(N'2021-09-14' AS Date), N'8', N'5', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'41', N'1', CAST(N'2021-09-18' AS Date), N'2', N'8', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'42', N'1', CAST(N'2021-09-18' AS Date), N'15', N'18', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'43', N'1', CAST(N'2021-09-18' AS Date), N'12', N'16', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'44', N'1', CAST(N'2021-09-18' AS Date), N'11', N'7', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'45', N'1', CAST(N'2021-09-18' AS Date), N'5', N'1', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'46', N'1', CAST(N'2021-09-18' AS Date), N'20', N'3', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'47', N'1', CAST(N'2021-09-18' AS Date), N'14', N'9', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'48', N'1', CAST(N'2021-09-19' AS Date), N'17', N'6', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'49', N'1', CAST(N'2021-09-19' AS Date), N'19', N'13', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'5', N'1', CAST(N'2021-08-14' AS Date), N'6', N'7', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'50', N'1', CAST(N'2021-09-19' AS Date), N'4', N'10', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'51', N'1', CAST(N'2021-09-25' AS Date), N'3', N'11', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'52', N'1', CAST(N'2021-09-25' AS Date), N'18', N'14', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'53', N'1', CAST(N'2021-09-25' AS Date), N'10', N'5', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'54', N'1', CAST(N'2021-09-25' AS Date), N'9', N'19', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'55', N'1', CAST(N'2021-09-25' AS Date), N'8', N'15', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'56', N'1', CAST(N'2021-09-25' AS Date), N'13', N'2', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'57', N'1', CAST(N'2021-09-25' AS Date), N'6', N'12', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'58', N'1', CAST(N'2021-09-26' AS Date), N'1', N'17', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'59', N'1', CAST(N'2021-09-26' AS Date), N'16', N'20', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'6', N'1', CAST(N'2021-08-14' AS Date), N'5', N'4', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'60', N'1', CAST(N'2021-09-28' AS Date), N'7', N'4', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'61', N'1', CAST(N'2021-10-02' AS Date), N'4', N'1', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'62', N'1', CAST(N'2021-10-02' AS Date), N'20', N'14', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'63', N'1', CAST(N'2021-10-02' AS Date), N'9', N'18', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'64', N'1', CAST(N'2021-10-02' AS Date), N'6', N'16', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'65', N'1', CAST(N'2021-10-02' AS Date), N'5', N'15', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'66', N'1', CAST(N'2021-10-02' AS Date), N'13', N'8', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'67', N'1', CAST(N'2021-10-03' AS Date), N'11', N'12', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'68', N'1', CAST(N'2021-10-03' AS Date), N'19', N'3', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'69', N'1', CAST(N'2021-10-03' AS Date), N'17', N'2', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'7', N'1', CAST(N'2021-08-14' AS Date), N'13', N'9', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'70', N'1', CAST(N'2021-10-03' AS Date), N'7', N'10', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'8', N'1', CAST(N'2021-08-14' AS Date), N'3', N'1', NULL)
INSERT [dbo].[Schedule] ([Matches_ID], [League_ID], [Date], [Home_ID], [Away_ID], [Referee_ID]) VALUES (N'9', N'1', CAST(N'2021-08-15' AS Date), N'17', N'12', NULL)
GO
SET IDENTITY_INSERT [dbo].[Ship] ON 

INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (1, N'Tung', CAST(N'2001-02-02' AS Date), N'tung@gmail.com', N'0999999', N'Ha Noi', N'Nothing', NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (2, N'admin', CAST(N'2001-03-03' AS Date), N'admin@gmail.com', N'0888888', N'Bac Ninh', N'Hihi nhe tay', NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (14, N'Huy Tung', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (15, N'Huy Tung', CAST(N'2001-11-30' AS Date), N'tung@gmail.com', N'0123456789', N'Ha Noi', N'hihiihih', NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (16, N'admin', CAST(N'2001-11-30' AS Date), N'tung1@gmail.com', N'0123456789', N'Ha Noi', N'kakakakak', NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (17, N'', CAST(N'2001-11-30' AS Date), N'tung@gmail.com', N'0123456789', N'Ha Noi', N'ihihihi', NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (18, N'tung', CAST(N'2001-11-30' AS Date), N'tung@gmail.com', N'0123456789', N'Ha Noi', N'ihihihi', NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (19, N'tung2', CAST(N'2001-11-30' AS Date), N'tung2@gmail.com', N'0123456788', N'Ha Noi', N'hihihi', NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (20, N'tung2', CAST(N'2001-11-30' AS Date), N'tung@gmail.com', N'0123456789', N'Ha Noi', N'hihi', NULL)
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (21, N'admin', CAST(N'2001-11-30' AS Date), N'tung@gmail.com', N'0123456789', N'Ha Noi', N'mua page di moi nguoi', CAST(N'2021-10-29' AS Date))
INSERT [dbo].[Ship] ([Ship_ID], [Name], [DOB], [Email], [Phone], [Address], [Note], [Date]) VALUES (22, N'admin', CAST(N'2001-11-30' AS Date), N'tung@gmail.com', N'0123456789', N'Ha Noi', N'Ship can than', CAST(N'2021-10-29' AS Date))
SET IDENTITY_INSERT [dbo].[Ship] OFF
GO
INSERT [dbo].[Stats] ([Matches_ID], [Shots], [On_Target], [Possession], [Passes], [Fouls], [Corners]) VALUES (N'1', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'1', N'1', N'Cristiano Ronaldo')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'10', N'1', N'Luke Shaw')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'11', N'1', N'Raphael Varane')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'12', N'2', N'Raheem Sterling')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'13', N'2', N'Riyad Mahrez')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'14', N'2', N'Kevin De Bruyne')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'15', N'2', N'Ilkay Gündogan')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'16', N'2', N'Phil Foden')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'17', N'2', N'Jack Grealish')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'18', N'2', N'Kyle Walker')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'19', N'2', N'Rúben Dias')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'2', N'1', N'Bruno Fernandes')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'20', N'2', N'João Cancelo')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'21', N'2', N'John Stones')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'22', N'2', N'Ederson Moraes')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'23', N'3', N'Alisson Becker')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'24', N'3', N'Fabinho')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'25', N'3', N'Virgil van Dijk')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'26', N'3', N'Thiago Alcântara')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'27', N'3', N'Roberto Firmino')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'28', N'3', N'Sadio Mané')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'29', N'3', N'Mohamed Salah')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'3', N'1', N'Jadon Sancho')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'30', N'3', N'Jordan Henderson')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'31', N'3', N'Diogo Jota')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'32', N'3', N'Andrew Robertson')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'33', N'3', N'Trent Alexander-Arnold')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'34', N'4', N'Antonio Rüdiger')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'35', N'4', N'Marcos Alonso')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'36', N'4', N'Jorginho')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'37', N'4', N'Thiago Silva')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'38', N'4', N'N''Golo Kanté')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'39', N'4', N'Romelu Lukaku')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'4', N'1', N'Paul Pogba')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'40', N'4', N'Christian Pulisic')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'41', N'4', N'Timo Werner')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'42', N'4', N'Édouard Mendy')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'43', N'4', N'Mason Mount')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'44', N'4', N'Kai Havertz')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'45', N'5', N'Kieran Tierney')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'46', N'5', N'Ben White')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'47', N'5', N'Thomas Partey')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'48', N'5', N'Gabriel')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'49', N'5', N'Bukayo Saka')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'5', N'1', N'Marcus Rashford')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'50', N'5', N'Martin Odegaard')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'51', N'5', N'Alexandre Lacazette')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'52', N'5', N'Emile Smith Rowe')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'53', N'5', N'Pierre-Emerick Aubameyang')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'54', N'5', N'Takehiro Tomiyasu')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'55', N'5', N'Granit Xhaka')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'6', N'1', N'Mason Greenwood')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'7', N'1', N'David de Gea')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'8', N'1', N'Harry Maguire')
INSERT [dbo].[Subcategory] ([Subcategory_ID], [Category_ID], [Subcategory_Name]) VALUES (N'9', N'1', N'Jesse Lingard')
GO
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'1', N'Arsenal', N'Emirates Stadium', N'Mikel Arteta', N'Team1.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'10', N'Leicester City', N'King Power Stadium', N'Brendan Rodgers', N'Team10.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'11', N'Liverpool', N'Anfield', N'Jürgen Klopp', N'Team11.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'12', N'Manchester City', N'Etihad Stadium', N'Josep Guardiola', N'Team12.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'13', N'Manchester United', N'Old Trafford', N'Ole Gunnar Solskjær', N'Team13.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'14', N'Newcastle United', N'St. James'' Park', N'Steve Bruce', N'Team14.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'15', N'Norwich City', N'Carrow Road', N'Daniel Farke', N'Team15.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'16', N'Southampton', N'St. Mary''s Stadium', N'Ralph Hasenhüttl', N'Team16.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'17', N'Tottenham Hotspur', N'Tottenham Hotspur Stadium', N'Nuno Espírito Santo', N'Team17.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'18', N'Watford', N'Vicarage Road', N'Muñoz Llompart', N'Team18.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'19', N'West Ham United', N'London Stadium', N'David Moyes', N'Team19.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'2', N'Aston Villa', N'Villa Park', N'Dean Smith', N'Team2.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'20', N'Wolverhampton', N'Molineux Stadium', N'Bruno Lage', N'Team20.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'3', N'Brentford', N'Brentford Stadium', N'Thomas Frank', N'Team3.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'4', N'Brighton', N'Amex Stadium', N'Graham Potter', N'Team4.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'5', N'Burnley', N'Turf Moor', N'Sean Dyche', N'Team5.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'6', N'Chelsea', N'Stamford Bridge', N'Thomas Tuchel', N'Team6.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'7', N'Crystal Plalace', N'Selhurst Park', N'Patrick Vieira', N'Team7.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'8', N'Everton', N'Goodison Park', N'Rafael Benítez', N'Team8.png')
INSERT [dbo].[Team] ([Team_ID], [Team_Name], [Stadium], [Head_Coach], [Team_Logo]) VALUES (N'9', N'Leeds United', N'Elland Road', N'Marcelo Bielsa', N'Team9.png')
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_Create_Date]  DEFAULT (getdate()) FOR [Create_Date]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_Create_Date]  DEFAULT (getdate()) FOR [Create_Date]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Ship] ADD  CONSTRAINT [DF_Ship_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Account_Role] FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Account_Role] ([Role_ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Account_Role]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Account_Status] FOREIGN KEY([Status_ID])
REFERENCES [dbo].[Account_Status] ([Status_ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Account_Status]
GO
ALTER TABLE [dbo].[Goal]  WITH CHECK ADD  CONSTRAINT [FK_Goal_Players] FOREIGN KEY([Players_ID])
REFERENCES [dbo].[Players] ([Players_ID])
GO
ALTER TABLE [dbo].[Goal] CHECK CONSTRAINT [FK_Goal_Players]
GO
ALTER TABLE [dbo].[Goal]  WITH CHECK ADD  CONSTRAINT [FK_Goal_Result] FOREIGN KEY([Matches_ID])
REFERENCES [dbo].[Result] ([Matches_ID])
GO
ALTER TABLE [dbo].[Goal] CHECK CONSTRAINT [FK_Goal_Result]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([Customer])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Order_Status] FOREIGN KEY([Status_ID])
REFERENCES [dbo].[Order_Status] ([Status_ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Order_Status]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Ship] FOREIGN KEY([Ship_ID])
REFERENCES [dbo].[Ship] ([Ship_ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Ship]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Order] ([Order_ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Players]  WITH CHECK ADD  CONSTRAINT [FK_Players_Team] FOREIGN KEY([Team_ID])
REFERENCES [dbo].[Team] ([Team_ID])
GO
ALTER TABLE [dbo].[Players] CHECK CONSTRAINT [FK_Players_Team]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([Category_ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Product_Status] FOREIGN KEY([Status_ID])
REFERENCES [dbo].[Product_Status] ([Status_ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Product_Status]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Subcategory] FOREIGN KEY([Subcategory_ID])
REFERENCES [dbo].[Subcategory] ([Subcategory_ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Subcategory]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Schedule] FOREIGN KEY([Matches_ID])
REFERENCES [dbo].[Schedule] ([Matches_ID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Schedule]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_League] FOREIGN KEY([League_ID])
REFERENCES [dbo].[League] ([League_ID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_League]
GO
ALTER TABLE [dbo].[Stats]  WITH CHECK ADD  CONSTRAINT [FK_Stats_Result] FOREIGN KEY([Matches_ID])
REFERENCES [dbo].[Result] ([Matches_ID])
GO
ALTER TABLE [dbo].[Stats] CHECK CONSTRAINT [FK_Stats_Result]
GO
ALTER TABLE [dbo].[Subcategory]  WITH CHECK ADD  CONSTRAINT [FK_Subcategory_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([Category_ID])
GO
ALTER TABLE [dbo].[Subcategory] CHECK CONSTRAINT [FK_Subcategory_Category]
GO
USE [master]
GO
ALTER DATABASE [Football] SET  READ_WRITE 
GO
