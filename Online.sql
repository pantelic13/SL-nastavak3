USE [master]
GO
/****** Object:  Database [Online]    Script Date: 28.3.2019. 11:22:59 ******/
CREATE DATABASE [Online]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Online', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Online.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Online_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Online_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Online] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Online].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Online] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Online] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Online] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Online] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Online] SET ARITHABORT OFF 
GO
ALTER DATABASE [Online] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Online] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Online] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Online] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Online] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Online] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Online] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Online] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Online] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Online] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Online] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Online] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Online] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Online] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Online] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Online] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Online] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Online] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Online] SET  MULTI_USER 
GO
ALTER DATABASE [Online] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Online] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Online] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Online] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Online] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Online] SET QUERY_STORE = OFF
GO
USE [Online]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Online]
GO
/****** Object:  Table [dbo].[Klijent]    Script Date: 28.3.2019. 11:22:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klijent](
	[KlijentId] [int] IDENTITY(1,1) NOT NULL,
	[ime] [nvarchar](50) NULL,
	[prezime] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[tip_korisnika] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[KlijentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakazivanje]    Script Date: 28.3.2019. 11:22:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakazivanje](
	[ZakazivanjeId] [int] NOT NULL,
	[Tretmani] [nvarchar](30) NULL,
	[Klijent] [nvarchar](30) NULL,
	[dtstart] [datetime] NULL,
	[dtend] [datetime] NULL,
	[Radnik] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ZakazivanjeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Klijent] ON 

INSERT [dbo].[Klijent] ([KlijentId], [ime], [prezime], [username], [password], [email], [tip_korisnika]) VALUES (1, N'', N'', N'', N'', N'', N'K')
INSERT [dbo].[Klijent] ([KlijentId], [ime], [prezime], [username], [password], [email], [tip_korisnika]) VALUES (2, N'Milica', N'Ivankovic', N'mica', N'aca', N'mica@gmail.com', N'K')
INSERT [dbo].[Klijent] ([KlijentId], [ime], [prezime], [username], [password], [email], [tip_korisnika]) VALUES (3, N'Pera', N'Peric', N'pera', N'pera', N'pera@gmail.com', N'K')
SET IDENTITY_INSERT [dbo].[Klijent] OFF
INSERT [dbo].[Zakazivanje] ([ZakazivanjeId], [Tretmani], [Klijent], [dtstart], [dtend], [Radnik]) VALUES (1, N'Šišanje', N'sandra', CAST(N'2019-03-28T11:00:00.000' AS DateTime), CAST(N'2019-03-28T12:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Zakazivanje] ([ZakazivanjeId], [Tretmani], [Klijent], [dtstart], [dtend], [Radnik]) VALUES (2, N'Feniranje', N'Mila', CAST(N'2019-03-27T12:00:00.000' AS DateTime), CAST(N'2019-03-27T13:00:00.000' AS DateTime), N'Tanja')
INSERT [dbo].[Zakazivanje] ([ZakazivanjeId], [Tretmani], [Klijent], [dtstart], [dtend], [Radnik]) VALUES (3, N'Šišanje', N'Desa', CAST(N'2019-03-29T12:00:00.000' AS DateTime), CAST(N'2019-03-29T13:00:00.000' AS DateTime), N'Zivkica')
INSERT [dbo].[Zakazivanje] ([ZakazivanjeId], [Tretmani], [Klijent], [dtstart], [dtend], [Radnik]) VALUES (4, N'Feniranje', N'sac', CAST(N'2019-04-23T11:00:00.000' AS DateTime), CAST(N'2019-04-23T12:00:00.000' AS DateTime), N'Zivkica')
INSERT [dbo].[Zakazivanje] ([ZakazivanjeId], [Tretmani], [Klijent], [dtstart], [dtend], [Radnik]) VALUES (5, N'Feniranje', N'mica', CAST(N'2019-04-17T11:00:00.000' AS DateTime), CAST(N'2019-04-17T12:00:00.000' AS DateTime), N'Dusica')
USE [master]
GO
ALTER DATABASE [Online] SET  READ_WRITE 
GO
