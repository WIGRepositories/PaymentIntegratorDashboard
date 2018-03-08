USE [PaymentIntegrator]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Country_HasOperations]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF_Country_HasOperations]
END

GO

USE [PaymentIntegrator]
GO

/****** Object:  Table [dbo].[Country]    Script Date: 02/24/2018 11:36:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
DROP TABLE [dbo].[Country]
GO

USE [PaymentIntegrator]
GO

/****** Object:  Table [dbo].[Country]    Script Date: 02/24/2018 11:36:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Latitude] [varchar](15) NULL,
	[Longitude] [varchar](15) NULL,
	[ISOCode] [varchar](5) NULL,
	[HasOperations] [int] NOT NULL,
	[flag] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_HasOperations]  DEFAULT ((0)) FOR [HasOperations]
GO

