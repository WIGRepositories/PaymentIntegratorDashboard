/****** Object:  Table [dbo].[Company]    Script Date: 02/24/2018 10:48:06 ******/
DROP TABLE [dbo].[Company]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 02/24/2018 10:49:39 ******/
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[EditHistory]    Script Date: 02/24/2018 10:51:15 ******/
DROP TABLE [dbo].[EditHistory]
GO
/****** Object:  Table [dbo].[EditHistoryDetails]    Script Date: 02/24/2018 10:52:08 ******/
DROP TABLE [dbo].[EditHistoryDetails]
GO
/****** Object:  Table [dbo].[LicenceCatergories]    Script Date: 02/24/2018 10:53:24 ******/
DROP TABLE [dbo].[LicenceCatergories]
GO
/****** Object:  Table [dbo].[LicenceStatus]    Script Date: 02/24/2018 10:54:12 ******/
DROP TABLE [dbo].[LicenceStatus]
GO
/****** Object:  Table [dbo].[LicenseChargesDiscounts]    Script Date: 02/24/2018 10:55:06 ******/
DROP TABLE [dbo].[LicenseChargesDiscounts]
GO
/****** Object:  Table [dbo].[LicenseDetails]    Script Date: 02/24/2018 10:55:56 ******/
DROP TABLE [dbo].[LicenseDetails]
GO
/****** Object:  Table [dbo].[LicenseKeyFile]    Script Date: 02/24/2018 10:59:17 ******/
DROP TABLE [dbo].[LicenseKeyFile]
GO
/****** Object:  Table [dbo].[LicensePayments]    Script Date: 02/24/2018 11:00:22 ******/
DROP TABLE [dbo].[LicensePayments]
GO
/****** Object:  Table [dbo].[LicensePricing]    Script Date: 02/24/2018 11:01:10 ******/
DROP TABLE [dbo].[LicensePricing]
GO
/****** Object:  Table [dbo].[LicenseTypes]    Script Date: 02/24/2018 11:02:07 ******/
DROP TABLE [dbo].[LicenseTypes]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 02/24/2018 11:02:51 ******/
DROP TABLE [dbo].[Registration]
GO
/****** Object:  Table [dbo].[TypeGroups]    Script Date: 02/24/2018 11:03:29 ******/
DROP TABLE [dbo].[TypeGroups]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 02/24/2018 11:04:20 ******/
DROP TABLE [dbo].[Types]
GO
/****** Object:  Table [dbo].[UserLicensePymtTransactions]    Script Date: 02/24/2018 11:05:02 ******/
DROP TABLE [dbo].[UserLicensePymtTransactions]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 02/24/2018 11:05:38 ******/
DROP TABLE [dbo].[UserRoles]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/24/2018 11:06:20 ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[MandatoryUserDocuments]    Script Date: 02/24/2018 16:30:28 ******/
DROP TABLE [dbo].[MandatoryUserDocuments]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 03/03/2018 15:18:29 ******/
DROP TABLE [dbo].[Payment]
GO
/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 03/03/2018 15:19:09 ******/
DROP TABLE [dbo].[PaymentDetails]
GO
/****** Object:  Table [dbo].[UserLicense]    Script Date: 03/03/2018 15:19:55 ******/
DROP TABLE [dbo].[UserLicense]
GO
/****** Object:  Table [dbo].[UserLicensePayments]    Script Date: 03/03/2018 15:20:38 ******/
DROP TABLE [dbo].[UserLicensePayments]
GO
--==================Tables=================================
/****** Object:  Table [dbo].[Company]    Script Date: 02/24/2018 10:48:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Desc] [varchar](50) NULL,
	[Active] [int] NOT NULL,
	[Address] [varchar](500) NOT NULL,
	[ContactNo1] [varchar](50) NOT NULL,
	[ContactNo2] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[EmailId] [varchar](50) NOT NULL,
	[Title] [varchar](50) NULL,
	[Caption] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[ZipCode] [varchar](10) NULL,
	[State] [varchar](50) NULL,
	[FleetSize] [int] NULL,
	[StaffSize] [int] NULL,
	[ShippingAddress] [varchar](500) NULL,
	[Logo] [varchar](max) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 02/24/2018 10:49:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Company] [varchar](100) NULL,
	[AoiId] [int] NULL,
	[MobileNumber] [varchar](13) NULL,
	[Telephone] [varchar](20) NULL,
	[EmailId] [varchar](100) NULL,
	[ReferenceId] [varchar](10) NULL,
	[Address] [varchar](100) NULL,
	[Fax] [varchar](20) NULL,
	[CountryId] [int] NULL,
	[State] [varchar](20) NULL,
	[ZipCode] [varchar](10) NULL,
	[EntryDate] [date] NULL,
	[Description] [varchar](100) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EditHistory]    Script Date: 02/24/2018 10:51:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EditHistory](
	[Field] [varchar](50) NOT NULL,
	[SubItem] [varchar](50) NOT NULL,
	[Comment] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[ChangedBy] [varchar](50) NOT NULL,
	[ChangedType] [varchar](50) NOT NULL,
	[Task] [varchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EditHistoryDetails]    Script Date: 02/24/2018 10:52:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EditHistoryDetails](
	[EditHistoryId] [int] NOT NULL,
	[FromValue] [varchar](100) NULL,
	[ToValue] [varchar](100) NULL,
	[ChangeType] [varchar](50) NOT NULL,
	[Field1] [varchar](50) NULL,
	[Field2] [varchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenceCatergories]    Script Date: 02/24/2018 10:53:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LicenceCatergories](
	[Active] [numeric](18, 0) NULL,
	[Desc] [nchar](10) NULL,
	[Id] [numeric](18, 0) NULL,
	[LicenseCategory] [nchar](10) NULL,
	[TypegripId] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LicenceStatus]    Script Date: 02/24/2018 10:54:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LicenceStatus](
	[Active] [numeric](18, 0) NULL,
	[Desc] [nchar](10) NULL,
	[Id] [numeric](18, 0) NULL,
	[LicenseStatusType] [nchar](10) NULL,
	[TypeGripidId] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LicenseChargesDiscounts]    Script Date: 02/24/2018 10:55:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[LicenseChargesDiscounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseId] [int] NULL,
	[ChargeDiscount] [decimal](18, 0) NULL,
	[ApllicabeAs] [varchar](50) NULL,
	[Value] [varchar](50) NULL,
	[FromDate] [date] NULL,
	[ToDate] [date] NULL,
	[MaximumValue] [varchar](50) NULL,
	[MinimumValue] [varchar](50) NULL,
	[FromValue] [varchar](50) NULL,
	[ToValue] [varchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Description] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseDetails]    Script Date: 02/24/2018 10:55:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[LicenseDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseTypeId] [int] NOT NULL,
	[FeatureTypeId] [int] NOT NULL,
	[FeatureLabel] [varchar](50) NULL,
	[FeatureValue] [varchar](100) NULL,
	[LabelClass] [varchar](50) NULL,
	[Active] [int] NOT NULL,
	[fromDate] [datetime] NULL,
	[toDate] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[LicenseDetails] ADD  CONSTRAINT [DF_LicenseDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Table [dbo].[LicenseKeyFile]    Script Date: 02/24/2018 10:59:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[LicenseKeyFile](
	[Id] [int] NOT NULL,
	[LicenseType] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[desc] [varchar](50) NOT NULL,
	[active] [int] NOT NULL,
	[key] [varchar](50) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicensePayments]    Script Date: 02/24/2018 11:00:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[LicensePayments](
	[expiryOn] [datetime] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[licenseFor] [varchar](50) NOT NULL,
	[licenseId] [int] NOT NULL,
	[licenseType] [varchar](50) NOT NULL,
	[paidon] [datetime] NOT NULL,
	[renewedon] [datetime] NOT NULL,
	[transId] [varchar](50) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicensePricing]    Script Date: 02/24/2018 11:01:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LicensePricing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseId] [int] NOT NULL,
	[RenewalFreqTypeId] [int] NOT NULL,
	[RenewalFreq] [int] NOT NULL,
	[UnitPrice] [decimal](18, 0) NOT NULL,
	[fromdate] [datetime] NULL,
	[todate] [datetime] NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LicenseTypes]    Script Date: 02/24/2018 11:02:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[LicenseTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseType] [varchar](50) NOT NULL,
	[LicenseCode] [varchar](55) NOT NULL,
	[LicenseCatId] [int] NOT NULL,
	[Description] [varchar](500) NULL,
	[Active] [int] NOT NULL,
	[EffectiveFrom] [datetime] NULL,
	[EffectiveTill] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 02/24/2018 11:02:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Registration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[EmailId] [varchar](100) NULL,
	[Company] [varchar](100) NULL,
	[CountryId] [int] NULL,
	[MobileNumber] [varchar](20) NULL,
	[Password] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[StatusId] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ReferenceId] [varchar](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TypeGroups]    Script Date: 02/24/2018 11:03:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TypeGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Types]    Script Date: 02/24/2018 11:04:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Types](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [int] NOT NULL,
	[TypeGroupId] [int] NOT NULL,
	[listkey] [varchar](10) NULL,
	[listvalue] [varchar](20) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLicensePymtTransactions]    Script Date: 02/24/2018 11:05:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserLicensePymtTransactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransId] [varchar](20) NOT NULL,
	[GatewayTransId] [varchar](20) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[TransDate] [datetime] NOT NULL,
	[ULPymtId] [int] NOT NULL,
	[StatusId] [int] NULL,
	[PymtTypeId] [int] NOT NULL,
	[Tax] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[Desc] [varchar](250) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 02/24/2018 11:05:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/24/2018 11:06:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NULL,
	[EmpNo] [varchar](20) NOT NULL,
	[EmailId] [varchar](50) NOT NULL,
	[RoleId] [int] NULL,
	[CompanyId] [int] NOT NULL,
	[Active] [int] NOT NULL,
	[GenderId] [int] NOT NULL,
	[ManagerId] [int] NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NULL,
	[ZipCode] [varchar](10) NULL,
	[ContactNo1] [varchar](20) NULL,
	[ContactNo2] [varchar](20) NULL,
	[Address] [varchar](500) NULL,
	[AltAddress] [varchar](500) NULL,
	[photo] [varchar](max) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MandatoryUserDocuments]    Script Date: 02/24/2018 16:30:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[MandatoryUserDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeId] [int] NOT NULL,
	[DocTypeId] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
	[Active] [int] NOT NULL,
	[FileContent] [varchar](max) NULL,
	[IsMandatory] [int] NOT NULL,
	[VehicleGroupId] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[MandatoryUserDocuments] ADD  DEFAULT ((0)) FOR [IsMandatory]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 03/03/2018 15:18:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Payment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CardCategoryId] [int] NULL,
	[PaymentDate] [date] NULL,
	[PaymentTime] [time](7) NULL,
	[StatusId] [int] NULL,
	[Amount] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 03/03/2018 15:19:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[PaymentDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentId] [int] NULL,
	[CardCategoryId] [int] NULL,
	[Transactiondate] [date] NULL,
	[TransactionTime] [time](7) NULL,
	[StatusId] [int] NULL,
	[GatewayId] [int] NULL,
	[TransactionType] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLicense]    Script Date: 03/03/2018 15:19:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserLicense](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FOId] [int] NULL,
	[LicenseTypeId] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[ExpiryOn] [datetime] NULL,
	[GracePeriod] [int] NULL,
	[ActualExpiry] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[Active] [int] NULL,
	[StatusId] [int] NULL,
	[RenewFreqTypeId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLicensePayments]    Script Date: 03/03/2018 15:20:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserLicensePayments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ULId] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[UnitPrice] [decimal](18, 0) NULL,
	[Units] [decimal](18, 0) NULL,
	[StatusId] [int] NULL,
	[LicensePymtTransId] [int] NULL,
	[IsRenewal] [int] NULL,
	[TransId] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO