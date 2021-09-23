USE [master]
GO
/****** Object:  Database [WorkTesting]    Script Date: 23.09.2021 19:21:12 ******/
CREATE DATABASE [WorkTesting]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WorkTesting', FILENAME = N'C:\Yena\MSSQL14.SQLEXPRESS\MSSQL\DATA\WorkTesting.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WorkTesting_log', FILENAME = N'C:\Yena\MSSQL14.SQLEXPRESS\MSSQL\DATA\WorkTesting_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WorkTesting] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WorkTesting].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WorkTesting] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WorkTesting] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WorkTesting] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WorkTesting] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WorkTesting] SET ARITHABORT OFF 
GO
ALTER DATABASE [WorkTesting] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WorkTesting] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WorkTesting] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WorkTesting] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WorkTesting] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WorkTesting] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WorkTesting] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WorkTesting] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WorkTesting] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WorkTesting] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WorkTesting] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WorkTesting] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WorkTesting] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WorkTesting] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WorkTesting] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WorkTesting] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WorkTesting] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WorkTesting] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WorkTesting] SET  MULTI_USER 
GO
ALTER DATABASE [WorkTesting] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WorkTesting] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WorkTesting] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WorkTesting] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WorkTesting] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WorkTesting] SET QUERY_STORE = OFF
GO
USE [WorkTesting]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23.09.2021 19:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 23.09.2021 19:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 23.09.2021 19:21:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_ProductCategory_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Clothing')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Shoes')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Accessories')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name]) VALUES (1, N'Skirt')
INSERT [dbo].[Product] ([Id], [Name]) VALUES (2, N'Shirt')
INSERT [dbo].[Product] ([Id], [Name]) VALUES (3, N'Loafers')
INSERT [dbo].[Product] ([Id], [Name]) VALUES (4, N'Sneakers')
INSERT [dbo].[Product] ([Id], [Name]) VALUES (5, N'Bag')
INSERT [dbo].[Product] ([Id], [Name]) VALUES (6, N'Earrings')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (1, 1, 1)
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (2, 2, 1)
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (3, 3, 2)
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (6, 4, NULL)
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (7, 5, 3)
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (8, 6, NULL)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Category]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Product]
GO
USE [master]
GO
ALTER DATABASE [WorkTesting] SET  READ_WRITE 
GO
