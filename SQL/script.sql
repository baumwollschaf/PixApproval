USE [master]
GO
/****** Object:  Database [PhotoCredit]    Script Date: 26.06.2022 15:27:21 ******/
CREATE DATABASE [PhotoCredit]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PixAppoval', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PixAppoval.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PixAppoval_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PixAppoval_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PhotoCredit] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhotoCredit].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhotoCredit] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhotoCredit] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhotoCredit] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhotoCredit] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhotoCredit] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhotoCredit] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PhotoCredit] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhotoCredit] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhotoCredit] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhotoCredit] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhotoCredit] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhotoCredit] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhotoCredit] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhotoCredit] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhotoCredit] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PhotoCredit] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhotoCredit] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhotoCredit] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhotoCredit] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhotoCredit] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhotoCredit] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PhotoCredit] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhotoCredit] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PhotoCredit] SET  MULTI_USER 
GO
ALTER DATABASE [PhotoCredit] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhotoCredit] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PhotoCredit] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PhotoCredit] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PhotoCredit] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PhotoCredit] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PhotoCredit] SET QUERY_STORE = OFF
GO
USE [PhotoCredit]
GO
/****** Object:  Table [dbo].[Credit]    Script Date: 26.06.2022 15:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credit](
	[GUID] [uniqueidentifier] NOT NULL,
	[MandantUserGUID] [uniqueidentifier] NOT NULL,
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AnlageDatum] [datetime] NOT NULL,
	[Pic] [varbinary](max) NOT NULL,
	[PicHash] [nvarchar](max) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[Longitude] [decimal](12, 9) NULL,
	[Latitude] [decimal](12, 9) NULL,
	[Done] [bit] NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Approval] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mandant]    Script Date: 26.06.2022 15:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mandant](
	[GUID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[EMail] [nvarchar](max) NOT NULL,
	[Telefon] [nvarchar](max) NULL,
	[Fax] [nvarchar](max) NULL,
	[AnlageDatum] [datetime] NOT NULL,
	[Suspended] [bit] NOT NULL,
	[Strasse] [nvarchar](max) NULL,
	[PLZ] [nvarchar](10) NULL,
	[Ort] [nvarchar](max) NULL,
	[Bundesland] [nvarchar](max) NULL,
	[Land] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Mandant] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MandantUser]    Script Date: 26.06.2022 15:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MandantUser](
	[GUID] [uniqueidentifier] NOT NULL,
	[MandantGUID] [uniqueidentifier] NOT NULL,
	[Vorname] [nvarchar](max) NOT NULL,
	[Nachname] [nvarchar](max) NOT NULL,
	[EMail] [nvarchar](max) NOT NULL,
	[Suspended] [bit] NOT NULL,
	[AnlageDatum] [datetime] NOT NULL,
	[Telefon] [nvarchar](max) NOT NULL,
	[Geburtsdatum] [date] NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemUser]    Script Date: 26.06.2022 15:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemUser](
	[GUID] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[AnlageDatum] [datetime] NOT NULL,
	[EditMandant] [bit] NOT NULL,
	[EditUser] [bit] NOT NULL,
	[EditSystemUser] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_SystemUser_1] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_SystemUserName] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_MandantUser]    Script Date: 26.06.2022 15:27:21 ******/
CREATE NONCLUSTERED INDEX [IX_MandantUser] ON [dbo].[MandantUser]
(
	[MandantGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Credit] ADD  CONSTRAINT [DF_Approval_GUID]  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [dbo].[Credit] ADD  CONSTRAINT [DF_Approval_AnlageDatum]  DEFAULT (getdate()) FOR [AnlageDatum]
GO
ALTER TABLE [dbo].[Credit] ADD  CONSTRAINT [DF_Approval_Done]  DEFAULT ((0)) FOR [Done]
GO
ALTER TABLE [dbo].[Credit] ADD  CONSTRAINT [DF_Approval_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Mandant] ADD  CONSTRAINT [DF_Mandant_GUID]  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [dbo].[Mandant] ADD  CONSTRAINT [DF_Mandant_AnlageDatum]  DEFAULT (getdate()) FOR [AnlageDatum]
GO
ALTER TABLE [dbo].[Mandant] ADD  CONSTRAINT [DF_Mandant_Suspended]  DEFAULT ((0)) FOR [Suspended]
GO
ALTER TABLE [dbo].[Mandant] ADD  CONSTRAINT [DF_Mandant_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[MandantUser] ADD  CONSTRAINT [DF_User_GUID]  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [dbo].[MandantUser] ADD  CONSTRAINT [DF_User_Suspended]  DEFAULT ((0)) FOR [Suspended]
GO
ALTER TABLE [dbo].[MandantUser] ADD  CONSTRAINT [DF_User_AnlageDatum]  DEFAULT (getdate()) FOR [AnlageDatum]
GO
ALTER TABLE [dbo].[MandantUser] ADD  CONSTRAINT [DF_MandantUser_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[SystemUser] ADD  CONSTRAINT [DF_SystemUser_GUID]  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [dbo].[SystemUser] ADD  CONSTRAINT [DF_SystemUser_AnlageDatum]  DEFAULT (getdate()) FOR [AnlageDatum]
GO
ALTER TABLE [dbo].[SystemUser] ADD  CONSTRAINT [DF_SystemUser_EditMandant]  DEFAULT ((1)) FOR [EditMandant]
GO
ALTER TABLE [dbo].[SystemUser] ADD  CONSTRAINT [DF_SystemUser_EditUser]  DEFAULT ((1)) FOR [EditUser]
GO
ALTER TABLE [dbo].[SystemUser] ADD  CONSTRAINT [DF_SystemUser_EditSystemUser]  DEFAULT ((1)) FOR [EditSystemUser]
GO
ALTER TABLE [dbo].[SystemUser] ADD  CONSTRAINT [DF_SystemUser_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Credit]  WITH CHECK ADD  CONSTRAINT [FK_Approval_MandantUser] FOREIGN KEY([MandantUserGUID])
REFERENCES [dbo].[MandantUser] ([GUID])
GO
ALTER TABLE [dbo].[Credit] CHECK CONSTRAINT [FK_Approval_MandantUser]
GO
ALTER TABLE [dbo].[MandantUser]  WITH CHECK ADD  CONSTRAINT [FK_MandantUser_Mandant] FOREIGN KEY([MandantGUID])
REFERENCES [dbo].[Mandant] ([GUID])
GO
ALTER TABLE [dbo].[MandantUser] CHECK CONSTRAINT [FK_MandantUser_Mandant]
GO
USE [master]
GO
ALTER DATABASE [PhotoCredit] SET  READ_WRITE 
GO
