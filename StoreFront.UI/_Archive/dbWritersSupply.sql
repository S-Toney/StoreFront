IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductWritingTypes]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductWritingTypes] DROP CONSTRAINT IF EXISTS [FK_ProductWritingTypes_WritingTypes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductWritingTypes]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductWritingTypes] DROP CONSTRAINT IF EXISTS [FK_ProductWritingTypes_Products]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Manufacturers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Category]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Availability]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [FK_Orders_Products]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [FK_Orders_AspNetUsers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [FK_Employees_Employees]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [FK_Employees_Departments]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP INDEX IF EXISTS [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP INDEX IF EXISTS [IX_UserId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP INDEX IF EXISTS [IX_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP INDEX IF EXISTS [IX_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP INDEX IF EXISTS [IX_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP INDEX IF EXISTS [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[WritingTypes]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[WritingTypes]
GO
/****** Object:  Table [dbo].[ProductWritingTypes]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[ProductWritingTypes]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[Products]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[Orders]
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[Manufacturers]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[Departments]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[Categories]
GO
/****** Object:  Table [dbo].[Availability]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[Availability]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP TABLE IF EXISTS [dbo].[__MigrationHistory]
GO
/****** Object:  Database [WritersSupply]    Script Date: 1/8/2021 2:15:01 PM ******/
DROP DATABASE IF EXISTS [WritersSupply]
GO
/****** Object:  Database [WritersSupply]    Script Date: 1/8/2021 2:15:01 PM ******/
CREATE DATABASE [WritersSupply]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WritersSupply', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\WritersSupply.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WritersSupply_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\WritersSupply_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WritersSupply] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WritersSupply].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WritersSupply] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WritersSupply] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WritersSupply] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WritersSupply] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WritersSupply] SET ARITHABORT OFF 
GO
ALTER DATABASE [WritersSupply] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WritersSupply] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WritersSupply] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WritersSupply] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WritersSupply] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WritersSupply] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WritersSupply] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WritersSupply] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WritersSupply] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WritersSupply] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WritersSupply] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WritersSupply] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WritersSupply] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WritersSupply] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WritersSupply] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WritersSupply] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WritersSupply] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WritersSupply] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WritersSupply] SET  MULTI_USER 
GO
ALTER DATABASE [WritersSupply] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WritersSupply] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WritersSupply] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WritersSupply] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WritersSupply] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WritersSupply] SET QUERY_STORE = OFF
GO
USE [WritersSupply]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Availability]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Availability](
	[AvailabilityID] [int] NOT NULL,
	[Status] [varchar](12) NOT NULL,
 CONSTRAINT [PK_Availability] PRIMARY KEY CLUSTERED 
(
	[AvailabilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DeptID] [int] IDENTITY(1,1) NOT NULL,
	[DaptName] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[DirectReportID] [int] NOT NULL,
	[EmpFName] [varchar](50) NOT NULL,
	[EmpLName] [varchar](50) NOT NULL,
	[EmpAddress] [varchar](50) NULL,
	[EmpCity] [varchar](50) NULL,
	[EmpState] [char](2) NULL,
	[EmpCountry] [char](2) NULL,
	[DeptID] [int] NOT NULL,
	[EmpZipCode] [varchar](5) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturers](
	[ManufacturerID] [int] NOT NULL,
	[ManufacturerName] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Manufacturers] PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[C First Name] [varchar](50) NULL,
	[C Last Name] [varchar](50) NULL,
	[C Address] [varchar](50) NULL,
	[C City] [varchar](50) NULL,
	[C State] [char](2) NULL,
	[C Country] [char](2) NULL,
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NULL,
	[Total] [money] NULL,
	[Product ID] [int] NULL,
	[C Zip Code] [varchar](5) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[ManufacturerID] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Availability] [int] NOT NULL,
	[Description] [varchar](500) NULL,
	[Image] [varchar](200) NULL,
	[Size] [varchar](20) NULL,
	[CategoryID] [int] NOT NULL,
	[OS] [varchar](20) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductWritingTypes]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductWritingTypes](
	[PWTypeID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[WTypeId] [int] NOT NULL,
 CONSTRAINT [PK_ProductWritingTypes] PRIMARY KEY CLUSTERED 
(
	[PWTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WritingTypes]    Script Date: 1/8/2021 2:15:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WritingTypes](
	[WTypeID] [int] NOT NULL,
	[WTypeName] [varchar](12) NOT NULL,
 CONSTRAINT [PK_WritingTypes] PRIMARY KEY CLUSTERED 
(
	[WTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202012080401531_InitialCreate', N'IdentitySample.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C468EFC2DBB63746C6174CDB8BBC0DD812BB2D8C446925CA6B23D82FDB877C527E214589BAF0A64BB7DCDD5E2CB09816C953C5E221592C16FDBFDFFF3BFDE1250CAC679CA47E44CEECA3C9A16D61E2469E4F5667764697DF7DB27FF8FECF7F9A5E7AE18BF57359EF84D58396243DB39F288D4F1D27759F7088D249E8BB4994464B3A71A3D0415EE41C1F1EFEC3393A723040D8806559D32F19A17E88F31FF073161117C73443C14DE4E120E5DFA1649EA35AB728C4698C5C7C665F7B18DAD2D7390AE3004F8A06B6751EF8089499E360695B889088220AAA9E3EA6784E9388ACE6317C40C1C36B8CA1DE120529E65D38ADABF7EDCDE131EB8D53372CA1DC2CA5513810F0E8849BC7919BAF6564BB321F18F0323716EB756EC4DA7E5FA2000C200B3C9D0509AB7C66DF5422CED3F816D349D97052405E2500F76B947C9B34110FACDEED0E2A3A1D4F0ED97F07D62C0B6896E03382339AA0E0C0BACF1681EFFE0BBF3E44DF30393B395A2C4F3E7DF888BC938F7FC7271F9A3D85BE423DE1037CBA4FA21827A01B5E56FDB72D476CE7C80DAB668D368555804B30336CEB06BD7CC664459F60CE1C7FB2AD2BFF057BE5174EAE47E2C344824634C9E0E76D16046811E0AADC6995C9FEDF22F5F8C3C751A4DEA2677F950FBD241F264E02F3EA0B0EF2D2F4C98F8BE9258CF7575EED2A8942F65BE45751FA751E6589CB3A1319AB3CA06485A9A8DDD4A9C9DB8BD20C6A7C5A97A8FB4F6DA6A94A6F6D55D6A17566422962DBB3A1D4F76DE5F666DC791CC3E0E5D4621669239C76BF9A480007D69C4609865944E8E4F1BAE6CF515FFE10E8D71F7939BC0C911F8CB01EF69002DEC8D24F425CF5F2C708D887C8609DEF519AC272E0FD13A54F2DAAC33F47507D8EDD2C613CA340B4379776FF14117C9B850B46FEEDC91A6D681E7E8DAE900B73EE92B0561BE37D8EDC6F51462F897781287EA46E09C87E3EF8617F8051D439775D9CA6574066ECCD2270B64BC06B424F8E07C3B1256AD7FEC82C407EA87748A4C5F46B59B5764AF43514C7C4504DE79CB4A9FA395AF9A49FAA6555B3AA458D4E5579B5A1AA32B07E9AF29A6645F30A9D7A16B54673F7F2111ADFDFCB61F7DFE1DB6CF336AD050D33E65EC94F98E0049631EF1E518A13528F409F756317CE423E7C4CE89BEF4DB9A49F51908D2D6AADD9902F02E3CF861C76FF6743AE267C7EF63DE695F43805959501BE577DFD01AB7BCE499A6D7B3A08DDDCB6F0EDAC01A6E9729EA691EBE7B34013FFE2D10B517FF0E1ACEE5046D11B391C021D03A2FB6CCB832FD0375B26D51DB9C001A6D83A778BF8E00CA52EF254334287BC018A953BAA46B13A2C222AF7374526301D27AC116287A01466AA4FA83A2D7CE2FA310A3AAD24B5ECB985B1BE5732E4920B1C63C204765AA28F707D14842950C99106A5CB4253A7C1B876221ABC56D39877B9B0F5B82BC189AD70B2C37736F092FB6F6F42CC768B6D819CED26E9A38031A2B70B82F2B34A5F02C807977D23A87462321094BB545B21A868B11D105434C9BB23687144ED3BFED27975DFE8291E94B7BFADB79A6B07DC14ECB167D42C7C4F6843A1054E547A5E2C58217EA19AC319E8C9CF67297775658AE4D707988A219BDADFD5FAA14E3B884CA236C09A681DA0FC2E50015226D400E5CA585EAB76DC8B18005BC6DD5A61F9DA2FC13638A06237EF441B15CD37A732397B9D3EAA9E556C5048DEEBB0D0C0D110425EBCC48EF7308A292EAB1AA68F2F3CC41B6E748C0F468B813A3C578391CACE8C6EA5929ADD56D23964435CB28DAC24B94F062B959D19DD4A9CA3DD46D2380503DC828D4C246EE1234DB632D251ED3655D9D429B2A5F887A96348AB9ADEA038F6C9AA9166C5BF58F322C76AF6DD7C78E6515860386EAA4940AAB4AD24D128412B2C958268D0F4CA4F527A81285A2016E79979A1524DBBB71A96FF526473FB5407B1DC07CADAECDFE2DA2EDEE00BDBADEA8F70982BE864C89C9A3C92AEA180BEB9C532DF5080124DF07E16055948CC3E96B9757185D76C5F7C5111A68EA4BFE2432906533C5DD1FABDC6469D17E38D53E5C5AC3F56660893C54B1FB46973935F6A4629C3544D1453E86A6763677267868E97EC2C0E1FAE4E84B7995D3C43A509C03F0DC468243928608DB2FEA8621E4A13532CE98F28259B3421A5A2015A36534A04259B056BE1192CAAAFD15F829A44D244574BFB236BD2499AD09AE235B0353ACB65FD513519274D604D717FEC3AFD445E47F778FF321E6136D9C08A83EE663B9801E36D16C57136C0C67D7E13A8F1792016BFB157C0F8F7BD2494F1B4B709A18A10C76684326098D71FE1325C5C7E5A6FF0CD98C20DB7B0C4B7DDF09BF186D1F64DC9A19CF7E42A95F4EADC279DEFA6FCACD5FDB646397C15556CAB34236CEFAF29C5E1845598CC7F0966818FD9625E56B841C45FE29416591DF6F1E1D1B1F436677FDEC93869EA059AB3AAE9B18C38665B48D022CF28719F50A2A64B6CF096A4065522D1D7C4C32F67F67FF256A7795083FD2BFF7C605DA78FC4FF2583828724C3D66F6AFAE738B9F5EDA7AD3D7D09D1DFAAD7FFFE5A343DB0EE129831A7D6A164CB7546587C1F31489BA2E906DAACFD6AE2FD4E28E1358216559A10EB3F3E58F874948707A5967F09D1CB5F87AAA67D5CB011A2E601C15878A398D0F440601D2CE3E3000F7ED2FC71C0B0CEEA1F0BACA39AF1A1804F8683C9CF04FA2F4365CB1D6E359A63D13696A4DCCE9D69D61BE55CEE7A6F52B2B1379AE86AC6F500B80DB2AAD760C63B4B481E6D77D4E41B8F86BD4B6ABF7992F1BEE415D7191FBB4D27DE660671CBFDD01F2A71780F52DD34A93BBB4F0FDE36D74CA1DC3DCFB11C9604BC6764E3095DBB4FF5DD36D94C61DE3D27DBA084DE3DE3DAAEF6CF1D33ADF716BAF3F45C35D3C87025A38B0577A5DF16817338E12F222041E15116AF26F5F95E266135598C02EB2A66A1E6443359B0327114B94A8D76B1C3FACA37FCD6CEF23AED620DE9996DB2F9FADF2A9BD769976D487ADC45E2B036ED5097CCDDB18EB56543BDA74461A1271D79E95D3E6BEBFDFA7BCA0B1EC528C2EC31DC11BF9F34E0514C32E6D41990F6AB5EF7C2DED9F8838BB07FA7FEAA86607F7E916057D835AB3AD76419959BB7A45159458AD0DC608A3CD852CF13EA2F914BA198C598F367DF79DC8EDD742CB0774DEE321A6714BA8CC3452004BC9813D0263FCF6D16759EDEC5F95F3019A30BA0A6CF62F377E4C7CC0FBC4AEF2B4D4CC800C1BC0B1ED1656349596477F55A21DD46A42710375FE5143DE0300E002CBD2373F48CD7D10DE8F719AF90FB5A47004D20DD03219A7D7AE1A35582C29463D4EDE12770D80B5FBEFF3FD27BEF5B77540000, N'6.1.0-30225')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'a357212a-e75b-453b-b326-29179a3c3dc7', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Customer')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'00dded8c-fb8b-48af-944c-98d7fae80da8', N'a357212a-e75b-453b-b326-29179a3c3dc7')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'00dded8c-fb8b-48af-944c-98d7fae80da8', N's.l.toney@outlook.com', 0, N'AEBiwyFx4F27GflN/RuHAHf5SBlGlBxCXoJlpn2wVB6M1CDg42d86G2lTHewreLlEw==', N'bf104d79-d986-42cb-aa3b-7bf01656a18e', NULL, 0, 0, NULL, 1, 0, N's.l.toney@outlook.com')
GO
INSERT [dbo].[Availability] ([AvailabilityID], [Status]) VALUES (0, N'Out of Stock')
INSERT [dbo].[Availability] ([AvailabilityID], [Status]) VALUES (1, N'In Stock')
INSERT [dbo].[Availability] ([AvailabilityID], [Status]) VALUES (3, N'Backordered')
INSERT [dbo].[Availability] ([AvailabilityID], [Status]) VALUES (4, N'Discontinued')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Tablets')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Accessories')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Stationary')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Pens')
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DeptID], [DaptName]) VALUES (1, N'Customer Service')
INSERT [dbo].[Departments] ([DeptID], [DaptName]) VALUES (2, N'Management')
INSERT [dbo].[Departments] ([DeptID], [DaptName]) VALUES (3, N'Sales')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [DirectReportID], [EmpFName], [EmpLName], [EmpAddress], [EmpCity], [EmpState], [EmpCountry], [DeptID], [EmpZipCode]) VALUES (2, 6, N'This', N'Guy', N'123 Over Here Rd.', N'City', N'ST', N'US', 1, NULL)
INSERT [dbo].[Employees] ([EmployeeID], [DirectReportID], [EmpFName], [EmpLName], [EmpAddress], [EmpCity], [EmpState], [EmpCountry], [DeptID], [EmpZipCode]) VALUES (6, 6, N'That', N'Girl', N'456 Right There Ln.', N'City', N'ST', N'US', 2, NULL)
INSERT [dbo].[Employees] ([EmployeeID], [DirectReportID], [EmpFName], [EmpLName], [EmpAddress], [EmpCity], [EmpState], [EmpCountry], [DeptID], [EmpZipCode]) VALUES (7, 6, N'Another', N'Chick', N'789 Up There Hill', N'City', N'ST', N'US', 3, NULL)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (1, N'reMarkable')
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (2, N'Samsung')
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (3, N'KuRoKo')
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (4, N'Finite')
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (5, N'Etsy')
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (6, N'Apple')
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (7, N'Microsoft')
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (8, N'Omoton')
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (9, N'Asvine')
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (10, N'Scriveiner')
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (11, N'Schmidt')
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (12, N'Office Depot')
INSERT [dbo].[Manufacturers] ([ManufacturerID], [ManufacturerName]) VALUES (13, N'Rocketbook')
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([C First Name], [C Last Name], [C Address], [C City], [C State], [C Country], [OrderID], [UserID], [Total], [Product ID], [C Zip Code]) VALUES (N'S. Tessa', N'Toney', N'4849 NW Rochester Rd', N'Topeka', N'KS', NULL, 2, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (1, N'reMarkable', 1, 455.0000, 3, N'reMarkable is an E Ink writer tablet used for writing, sketching, and note-taking geared toward a paper-like writing experience intended for students, academics, and professionals. The remarkable blends the reading experience of an electronic paper display with the writing experience of a high end tablet computer through its low lag Linux operating system and is solidly built.', N'b078485e-ec3f-45a8-bf54-c69a3c8f759e.jpg', N'10', 1, N'Linux')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (2, N'Galaxy Tab S6 Lite', 2, 279.0000, 1, N'Samsung Galaxy Tab S6 Lite tablet was launched in April 2020. The tablet comes with a 10.40-inch touchscreen display with a resolution of 2000x1200 pixels. Samsung Galaxy Tab S6 Lite is powered by a 1.7GHz octa-core processor. It comes with 4GB of RAM. The Samsung Galaxy Tab S6 Lite runs Android 10 and is powered by a 7040mAh non-removable battery. SPen included.', N'5dde458b-e8ea-44e0-ba8a-49a12d495b02.jpg', N'10', 1, N'Android')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (3, N'Premium PU Leather Case Cover', 3, 16.9900, 1, N'Specifically designed for Remarkable Digital Paper - not compatible with Remarkable 2 2020. Premium PU Leather case cover with a Velcro hand strap providing a firm grip, corner protection, fully comprehensive screen protection, & pen holder. This case can be used by right or left handed individuals.', N'37488758-a7c2-4909-b21f-3c2886b7950b.jpg', N'0.1', 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (8, N'Keyboard Case for Samsung Galaxy', 4, 30.9900, 1, N'This case comes with a detachable Bluetooth keyboard that seamlessly connects with the tablet for quicker & more comfortable typing. A spring mechanism underneath each key ensures a tactile response with every stroke, helping you to type faster and with fewer errors. Smart slim design adds maximum protection with minimal bulk (0.38 in). All features of the tablet are accessible even with the case on.', N'dda17f05-20f8-48e4-9eea-e1a0db9221ee.jpg', N'11.4', 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (10, N'Auther Letterhead', 5, 3.0000, 1, N'Design your own Author Letterhead: Create ultra-professional queries to Editors and Agents by using an elegant letterhead you’ve designed or customize one of our pre-designed templates to perfectly represent your writing. Available in print and Instant Download.', N'100de6e6-0f0b-4e1c-b195-a1e540480122.jpg', NULL, 3, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (11, N'Apple iPad 8th Gen', 6, 319.9900, 1, N'The new iPad combines tremendous capability with unmatched ease of use and versatility. With the powerful A12 Bionic chip, support for Apple Pencil and the Smart Keyboard, and the amazing new things you can do with iPadOS 14, now there’s even more to love about iPad. Edit a document while researching something on the web and making a FaceTime call to a colleague at the same time. Attach a full-size Smart Keyboard for comfortable typing.', N'38414afa-a462-470f-9bf9-8ad26e332e02.jpg', N'10.2', 1, N'iPadOS14')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (12, N'Surface Pro 6', 7, 695.0000, 1, N'Professional. Student. Creator. Whatever you do, let next-generation Surface Pro 6, featuring the latest 8th Generation Intel Core processor and all-day battery life, help you take your ideas to the next level. Wherever you are, new Surface Pro 6 makes it easy to work and play virtually anywhere, with laptop-to-tablet versatility that adapts to you.', N'62e65b21-815a-423d-9c09-44c68ac0a318.jpg', N'12.3', 1, N'Windows 10 Home')
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (13, N'Screen Protector', 8, 14.9900, 1, N'Compatible with Microsoft Surface Pro 7 / Surface Pro 6 / Surface Pro (5th Gen) / Surface Pro 4 tablet [12.3 Inch], the super smooth glass surface compatible with your Surface Pencil perfectly, you can barely feel the existence of screen protector when writing.', N'31cf5ee5-8cc6-4a66-9dc5-09b0829a022d.jpg', N'12.3', 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (14, N'Official Surface Pen', 7, 94.9500, 1, N'The Surface Pen is a natural writing and drawing tool, with precision ink on one end and a natural-feeling rubber eraser on the other. Effortlessly express the finest sketches and lines with Surface Pen. Rest your hand on the screen of your Surface device just as you would writing on a notebook.', N'5a73a15d-0ba8-41ec-a284-bd3d1ec863c5.jpg', NULL, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (15, N'Matte Black Forest Fountain Pen', 9, 14.9800, 1, N'This fresh, elegant, reliable fountain pen is a true marriage of the sophistication of finer days with the latest technology of modern times. Hand assembled and checked for flawless quality, it gives high precision and exceptional writing comfort for every occasion, coupled with a gorgeous design. With this pen in your possession, clients, colleagues, and friends will know you for your taste, class, and sophistication.', N'c3d14d5c-c313-4bb5-bee5-24626fdec38f.jpg', NULL, 4, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (16, N'Fountain Pen Ink Cartridges', 9, 10.9900, 1, N'30 pack of 3.4 mm bore diameter black ink cartridges (compatible with Forest Fountain Pen). With no break in ink flow, enjoy a smooth and optimal writing experience as your fountain pen glides elegantly across paper. The ink has been carefully manufactured using only natural dyes giving the composition a neutral, natural, and non-toxic PH that takes only a few seconds to dry ensuring your important writing moments are not ruined by smudges or smears.', N'41fc12ca-3a89-4e27-bf34-b73276b0a3e4.jpg', NULL, 4, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (17, N'Midnight Blue Rollerball Scriveiner', 10, 27.9900, 1, N'Midnight Blue lacquer finished in silver chrome. Premium quality and understated luxury from a boutique British brand. We use the Schmidt liquid ink system from Germany which allows your pen to glide smoothly across any type of paper. This combines the ink feel of a fountain pen with the convenience of a ballpoint. Perfectly weighted and balanced for your writing comfort – this is a luxury pen designed for those who love to write every day.', N'47aed14d-331e-4572-a622-77b448ffa04d.jpg', NULL, 4, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (18, N'Medium Rollerball Ink Refill - 6 Pack', 11, 7.5000, 1, N'Medium Tip - Blue Ink - Standard size ceramic tip roller ball refill by Schmidt. These fit 98% of all rollerball pens that accept a standard size refill. Length: 4 5/16 inch (11cm), Diameter - .245 inch (0.62cm)', N'ec89dd5c-a5ef-434b-8228-2d82104791f2.jpg', NULL, 4, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (19, N'Perforated Writing Pads, Legal', 12, 11.8900, 0, N'Jot down notes, to-do lists, homework and more on Office Depot Brand perforated writing pads. Pads are ruled with 50 sheets to a pad and come in packs of 12 so you will always have enough note paper. 16-lb paper provides durability for everyday writing tasks. Durable binding is double stitched to ensure long-lasting use and minimize wear and tear. Product contains 13% total recycled content, including 13% postconsumer content, helping you save resources and reduce waste.', N'c01cacd8-6bf6-4da7-9439-4c9a0948d12f.jpg', NULL, 3, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (20, N'Rocketbook Fusion - Executive Size', 13, 27.9900, 1, NULL, N'f9c86440-4b4a-40b0-b022-31106c3e3e86.jpg', N'6 x 8.9', 3, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ManufacturerID], [Price], [Availability], [Description], [Image], [Size], [CategoryID], [OS]) VALUES (21, N'Rocketbook Core - Letter Size', 13, 34.0000, 0, NULL, N'ce09c2e5-5260-4a1c-a192-ee92192b4226.jpg', N'8.5 x 11', 3, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[ProductWritingTypes] ([PWTypeID], [ProductID], [WTypeId]) VALUES (1, 1, 1)
INSERT [dbo].[ProductWritingTypes] ([PWTypeID], [ProductID], [WTypeId]) VALUES (2, 2, 2)
INSERT [dbo].[ProductWritingTypes] ([PWTypeID], [ProductID], [WTypeId]) VALUES (3, 2, 3)
INSERT [dbo].[ProductWritingTypes] ([PWTypeID], [ProductID], [WTypeId]) VALUES (4, 2, 1)
GO
INSERT [dbo].[WritingTypes] ([WTypeID], [WTypeName]) VALUES (1, N'Handwriting')
INSERT [dbo].[WritingTypes] ([WTypeID], [WTypeName]) VALUES (2, N'Typing')
INSERT [dbo].[WritingTypes] ([WTypeID], [WTypeName]) VALUES (3, N'VoiceToText')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/8/2021 2:15:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/8/2021 2:15:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/8/2021 2:15:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 1/8/2021 2:15:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/8/2021 2:15:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/8/2021 2:15:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DeptID])
REFERENCES [dbo].[Departments] ([DeptID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([DirectReportID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products] FOREIGN KEY([Product ID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Availability] FOREIGN KEY([Availability])
REFERENCES [dbo].[Availability] ([AvailabilityID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Availability]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Manufacturers] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturers] ([ManufacturerID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Manufacturers]
GO
ALTER TABLE [dbo].[ProductWritingTypes]  WITH CHECK ADD  CONSTRAINT [FK_ProductWritingTypes_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ProductWritingTypes] CHECK CONSTRAINT [FK_ProductWritingTypes_Products]
GO
ALTER TABLE [dbo].[ProductWritingTypes]  WITH CHECK ADD  CONSTRAINT [FK_ProductWritingTypes_WritingTypes] FOREIGN KEY([WTypeId])
REFERENCES [dbo].[WritingTypes] ([WTypeID])
GO
ALTER TABLE [dbo].[ProductWritingTypes] CHECK CONSTRAINT [FK_ProductWritingTypes_WritingTypes]
GO
ALTER DATABASE [WritersSupply] SET  READ_WRITE 
GO
