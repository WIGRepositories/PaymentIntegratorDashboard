/****** Object:  StoredProcedure [dbo].[GetCompany]    Script Date: 02/24/2018 11:09:40 ******/
DROP PROCEDURE [dbo].[GetCompany]
GO
/****** Object:  StoredProcedure [dbo].[GetConfigurationData]    Script Date: 02/24/2018 11:11:12 ******/
DROP PROCEDURE [dbo].[GetConfigurationData]
GO
/****** Object:  StoredProcedure [dbo].[GetCustomers]    Script Date: 02/24/2018 11:12:03 ******/
DROP PROCEDURE [dbo].[GetCustomers]
GO
/****** Object:  StoredProcedure [dbo].[GetLicenceCatergories]    Script Date: 02/24/2018 11:12:51 ******/
DROP PROCEDURE [dbo].[GetLicenceCatergories]
GO
/****** Object:  StoredProcedure [dbo].[GetLicenceStatus]    Script Date: 02/24/2018 11:13:36 ******/
DROP PROCEDURE [dbo].[GetLicenceStatus]
GO
/****** Object:  StoredProcedure [dbo].[GetLicensechargesdiscounts]    Script Date: 02/24/2018 11:14:19 ******/
DROP PROCEDURE [dbo].[GetLicensechargesdiscounts]
GO
/****** Object:  StoredProcedure [dbo].[GetLicenseConfigDetails]    Script Date: 02/24/2018 11:14:56 ******/
DROP PROCEDURE [dbo].[GetLicenseConfigDetails]
GO
/****** Object:  StoredProcedure [dbo].[GetLicenseDetails]    Script Date: 02/24/2018 11:15:34 ******/
DROP PROCEDURE [dbo].[GetLicenseDetails]
GO
/****** Object:  StoredProcedure [dbo].[GetLicensePageDetails]    Script Date: 02/24/2018 11:16:28 ******/
DROP PROCEDURE [dbo].[GetLicensePageDetails]
GO
/****** Object:  StoredProcedure [dbo].[getLicensePayments]    Script Date: 02/24/2018 11:17:22 ******/
DROP PROCEDURE [dbo].[getLicensePayments]
GO
/****** Object:  StoredProcedure [dbo].[GetLicensePricing]    Script Date: 02/24/2018 11:18:00 ******/
DROP PROCEDURE [dbo].[GetLicensePricing]
GO
/****** Object:  StoredProcedure [dbo].[GetLicenseTypes]    Script Date: 02/24/2018 11:18:35 ******/
DROP PROCEDURE [dbo].[GetLicenseTypes]
GO
/****** Object:  StoredProcedure [dbo].[GetRegistrations]    Script Date: 02/24/2018 11:19:11 ******/
DROP PROCEDURE [dbo].[GetRegistrations]
GO
/****** Object:  StoredProcedure [dbo].[getTypeGroups]    Script Date: 02/24/2018 11:19:51 ******/
DROP PROCEDURE [dbo].[getTypeGroups]
GO
/****** Object:  StoredProcedure [dbo].[getTypes]    Script Date: 02/24/2018 11:20:26 ******/
DROP PROCEDURE [dbo].[getTypes]
GO
/****** Object:  StoredProcedure [dbo].[GetTypesByGroupId]    Script Date: 02/24/2018 11:21:04 ******/
DROP PROCEDURE [dbo].[GetTypesByGroupId]
GO
/****** Object:  StoredProcedure [dbo].[GetTypesByPaging]    Script Date: 02/24/2018 11:21:42 ******/
DROP PROCEDURE [dbo].[GetTypesByPaging]
GO
/****** Object:  StoredProcedure [dbo].[GetUserRoles]    Script Date: 02/24/2018 11:22:23 ******/
DROP PROCEDURE [dbo].[GetUserRoles]
GO
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 02/24/2018 11:23:14 ******/
DROP PROCEDURE [dbo].[GetUsers]
GO
/****** Object:  StoredProcedure [dbo].[InsEditHistory]    Script Date: 02/24/2018 11:23:55 ******/
DROP PROCEDURE [dbo].[InsEditHistory]
GO
/****** Object:  StoredProcedure [dbo].[InsEditHistoryDetails]    Script Date: 02/24/2018 11:24:54 ******/
DROP PROCEDURE [dbo].[InsEditHistoryDetails]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelCompany]    Script Date: 02/24/2018 11:25:33 ******/
DROP PROCEDURE [dbo].[InsUpdDelCompany]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelCustomers]    Script Date: 02/24/2018 11:26:12 ******/
DROP PROCEDURE [dbo].[InsUpdDelCustomers]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelLicenceCatergories]    Script Date: 02/24/2018 11:27:02 ******/
DROP PROCEDURE [dbo].[InsUpdDelLicenceCatergories]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelLicenceStatus]    Script Date: 02/24/2018 11:28:19 ******/
DROP PROCEDURE [dbo].[InsUpdDelLicenceStatus]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelLicenseDetails]    Script Date: 02/24/2018 11:29:01 ******/
DROP PROCEDURE [dbo].[InsUpdDelLicenseDetails]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelLicensePayments]    Script Date: 02/24/2018 11:29:40 ******/
DROP PROCEDURE [dbo].[InsUpdDelLicensePayments]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelLicensePricing]    Script Date: 02/24/2018 11:30:17 ******/
DROP PROCEDURE [dbo].[InsUpdDelLicensePricing]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRegistrations]    Script Date: 02/24/2018 11:30:53 ******/
DROP PROCEDURE [dbo].[InsUpdDelRegistrations]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDeltypes]    Script Date: 02/24/2018 11:31:28 ******/
DROP PROCEDURE [dbo].[InsUpdDeltypes]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUserRoles]    Script Date: 02/24/2018 11:32:09 ******/
DROP PROCEDURE [dbo].[InsUpdDelUserRoles]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUsers]    Script Date: 02/24/2018 11:32:49 ******/
DROP PROCEDURE [dbo].[InsUpdDelUsers]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdLicenseTypes]    Script Date: 02/24/2018 11:33:27 ******/
DROP PROCEDURE [dbo].[InsUpdLicenseTypes]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdTypeGroups]    Script Date: 02/24/2018 11:34:48 ******/
DROP PROCEDURE [dbo].[InsUpdTypeGroups]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdTypes]    Script Date: 02/24/2018 11:35:25 ******/
DROP PROCEDURE [dbo].[InsUpdTypes]
GO
/****** Object:  StoredProcedure [dbo].[GetMandatoryUserDocs]    Script Date: 02/24/2018 16:31:48 ******/
DROP PROCEDURE [dbo].[GetMandatoryUserDocs]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelMandatoryUserDocs]    Script Date: 02/24/2018 16:32:37 ******/
DROP PROCEDURE [dbo].[InsUpdDelMandatoryUserDocs]
GO
/****** Object:  StoredProcedure [dbo].[GetUserLicense]    Script Date: 03/03/2018 15:26:15 ******/
DROP PROCEDURE [dbo].[GetUserLicense]
GO
/****** Object:  StoredProcedure [dbo].[GetUserLicensePayments]    Script Date: 03/03/2018 15:27:22 ******/
DROP PROCEDURE [dbo].[GetUserLicensePayments]
GO
/****** Object:  StoredProcedure [dbo].[GetUserLicensePymtTransactions]    Script Date: 03/03/2018 15:28:19 ******/
DROP PROCEDURE [dbo].[GetUserLicensePymtTransactions]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUserLicense]    Script Date: 03/03/2018 15:31:36 ******/
DROP PROCEDURE [dbo].[InsUpdDelUserLicense]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUserLicenseConfirmDetails]    Script Date: 03/03/2018 15:32:21 ******/
DROP PROCEDURE [dbo].[InsUpdDelUserLicenseConfirmDetails]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUserLicenseDetails]    Script Date: 03/03/2018 15:34:08 ******/
DROP PROCEDURE [dbo].[InsUpdDelUserLicenseDetails]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUserLicensePayments]    Script Date: 03/03/2018 15:35:06 ******/
DROP PROCEDURE [dbo].[InsUpdDelUserLicensePayments]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUserLicensePymtTransactions]    Script Date: 03/03/2018 15:36:07 ******/
DROP PROCEDURE [dbo].[InsUpdDelUserLicensePymtTransactions]
GO
/****** Object:  StoredProcedure [dbo].[PSGetPaymentdetails]    Script Date: 03/03/2018 15:37:28 ******/
DROP PROCEDURE [dbo].[PSGetPaymentdetails]
GO
/****** Object:  StoredProcedure [dbo].[PSGetPayments]    Script Date: 03/03/2018 15:38:44 ******/
DROP PROCEDURE [dbo].[PSGetPayments]
GO
/****** Object:  StoredProcedure [dbo].[PSInsUpdDelPaymentDetails]    Script Date: 03/03/2018 15:39:24 ******/
DROP PROCEDURE [dbo].[PSInsUpdDelPaymentDetails]
GO
/****** Object:  StoredProcedure [dbo].[PSInsUpdPayments]    Script Date: 03/03/2018 15:40:07 ******/
DROP PROCEDURE [dbo].[PSInsUpdPayments]
GO
/****** Object:  StoredProcedure [dbo].[ValReferenceId]    Script Date: 03/03/2018 15:40:47 ******/
DROP PROCEDURE [dbo].[ValReferenceId]
GO






--==========================SP=================================
/****** Object:  StoredProcedure [dbo].[GetCompany]    Script Date: 02/24/2018 11:10:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetCompany]
as
begin
select 
[Name], 
[Desc], 
[Active], 
[ContactNo1], 
[ContactNo2], 
[Fax], 
[EmailId], 

[Title], 
[Caption], 
[Country], 
[ZipCode], 
[State], 
[StaffSize], 
[ShippingAddress], 
[Logo]

from Company
end

GO
/****** Object:  StoredProcedure [dbo].[GetConfigurationData]    Script Date: 02/24/2018 11:11:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GetConfigurationData] 
	@includeStatus int = 0
,@includeCategories int = 0
,@includeLicenseCategories int = 0
,@includeVehicleGroup int = 0
,@includeGender int = 0
,@includeFrequency int = 0
,@includePricingType int = 0
,@includeTransactionType int = 0
,@includeApplicability int = 0
,@includeFeeCategory int = 0
,@includeTransChargeType int = 0
,@includeVehicleType int = 0
,@includeVehicleModel int = 0
,@includeVehicleMake int = 0
,@includeDocumentType int = 0
,@includePaymentType int = 0
,@includeMiscellaneousTypes int = 0
,@includeCardCategories int = 0
,@includeCardTypes int = 0
,@includeVehicleLayoutType int = 0
,@includeLicenseFeatures int = 0
,@includeCardModels int = 0
,@includeCards int = 0
,@includeTransactions int = 0
,@includeCountry int = 0
,@includeActiveCountry int = 0
,@includeFleetOwner int = 0
,@includeUserType int =0
,@includeAuthType int =0
,@includeState int=0
,@includePackageTypeName int=0
,@includePackageNames int=0
,@includeFeatureName int=0
AS
BEGIN
	if @includeStatus  = 1
	  SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  1

 
	if @includeCategories  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  2
  
	if @includeLicenseCategories  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  3
  
	if @includeVehicleGroup  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  4

	if @includeGender  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  5

	if @includeFrequency  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  6



	if @includePricingType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  7

	if @includeTransactionType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  8
  
	if @includeApplicability  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  9
  
	if @includeFeeCategory  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  10
  
	if @includeTransChargeType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  11
  
	if @includeVehicleType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  12
  
	if @includeVehicleModel  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  13
  
	if @includeVehicleMake  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  14
  
	if @includeDocumentType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  15
  
	if @includePaymentType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  16
  
	if @includeMiscellaneousTypes  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  17
  
	if @includeCardCategories  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  18
  
	if @includeCardTypes  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  19
  
	if @includeVehicleLayoutType  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  20
  
	if @includeLicenseFeatures  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  21
  
	if @includeCardModels  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  22
  
	if @includeCards  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  23
  
	if @includeTransactions  = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  24
  
	if @includeCountry  = 1
	SELECT [Id]
      ,[Name]
      ,[Latitude]
      ,[Longitude]
      ,[ISOCode]
      ,[HasOperations]
  FROM [dbo].[Country]

	if @includeActiveCountry  = 1
	SELECT [Id]
      ,[Name]
      ,[Latitude]
      ,[Longitude]
      ,[ISOCode]
      ,[HasOperations]
  FROM [dbo].[Country] where HasOperations = 1
  
	if @includeFleetOwner  = 1
	select u.FirstName+' '+u.LastName as Name,
	c.Name as CompanyName
	,FO.FleetOwnerCode
	,FO.CompanyId
	,FO.Id
	,FO.UserId
	 from FleetOwner FO
	inner join Users u on  u.Id =  FO.UserId
	inner join Company c on c.Id =  FO.companyId
    --where (FO.company[TypeGroupId] =  @cmpId or @cmp[TypeGroupId] = -1)
	order by u.FirstName,u.LastName

if @includeUserType = 1
SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] = 25	
  
  if @includeAuthType = 1
SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] = 27
  
  if @includeState  = 1
SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] = 28
  	If @includePackageTypeName=1
  	SELECT [Id]
      ,[PackageId]
      ,[Name]
      
  FROM [dbo].[PackagesTypes]
  
  if @includePackageNames =1
  SELECT [Id]
      ,[VehicleGroupId]
      ,[Name]
      
  FROM [dbo].[Packages]
  
  if @includeFeatureName = 1
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Active]
      ,[TypeGroupId]
      ,[listkey]
      ,[listvalue]
  FROM [dbo].[Types] where [TypeGroupId] =  2


END


GO
/****** Object:  StoredProcedure [dbo].[GetCustomers]    Script Date: 02/24/2018 11:12:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetCustomers]
as 
begin
select  [FirstName]+' '+[LastName] as Name,
	   [Company],
	   [MobileNumber],
	   [Telephone],
	   [EmailId],
	   [Address],
	   [AoiId],
	   [Fax],
	   d.Name as [CountryId],
	   [State],
	   [ZipCode],
	   [EntryDate],
	   c.[Description]
From Customers c
inner join Country d on d.Id = c.CountryId
inner join Types t on t.Id = c.AoiId 
end



GO
/****** Object:  StoredProcedure [dbo].[GetLicenceCatergories]    Script Date: 02/24/2018 11:12:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetLicenceCatergories]
AS
BEGIN
	
SELECT t.Id, t.Name, t.[Description],t.Active, tg.name as TypeGroup, TypeGroupId, listkey, listvalue
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	 
	  where (TypeGroupId = 3)


SELECT t.Id, t.Name, t.[Description],t.Active, tg.name as TypeGroup, TypeGroupId, listkey, listvalue
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	 
	  where (TypeGroupId = 7)
  
  
SELECT t.Id, t.Name, t.[Description],t.Active, tg.name as TypeGroup, TypeGroupId, listkey, listvalue
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	 
	  where (TypeGroupId = 9)
  
  
  SELECT [Id]
      ,[ItemName]
      ,[Code]
      ,[Description]
      ,[CategoryId]
      ,[SubCategoryId]      
      ,[ItemImage]
  FROM [dbo].[InventoryItem] I
  where I.SubCategoryId = 1
  
  
end


GO
/****** Object:  StoredProcedure [dbo].[GetLicenceStatus]    Script Date: 02/24/2018 11:13:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetLicenceStatus]
AS
BEGIN
	
select * from LicenceStatus
end


GO
/****** Object:  StoredProcedure [dbo].[GetLicensechargesdiscounts]    Script Date: 02/24/2018 11:14:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetLicensechargesdiscounts]
as
begin
SELECT [Id]
      ,[LicenseId]
      ,[ChargeDiscount]
      ,[ApllicabeAs]
      ,[Value]
      ,[FromDate]
      ,[ToDate]
      ,[MaximumValue]
      ,[MinimumValue]
      ,[FromValue]
      ,[ToValue]
      ,[Code]
      ,[Description]
  FROM [dbo].[LicenseChargesDiscounts]
  
  end
GO
/****** Object:  StoredProcedure [dbo].[GetLicenseConfigDetails]    Script Date: 02/24/2018 11:14:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[GetLicenseConfigDetails]
@ltypeId int = -1
as 
begin 

SELECT [Id]
      ,[LicenseType]
      ,[LicenseCode]
      ,[LicenseCatId]
      ,[Description]
      ,[Active]
      ,[EffectiveFrom]
      ,[EffectiveTill]
  FROM [dbo].[LicenseTypes]
  where Id = @ltypeId

 

SELECT ld.[Id]
      ,[LicenseTypeId]
      ,t.name [FeatureName]
      ,t.id FeatureTypeId
      ,t.TypeGroupId
      ,[FeatureLabel]
      ,[FeatureValue]
      ,[LabelClass]
      ,ld.[Active]
      ,[fromDate]
      ,[toDate]
      --,[LicenseTypeGroupId]
      ,case when ld.id IS null then 0 else 1 end assigned
  FROM Types t
  left outer join [dbo].[LicenseDetails] ld on t.id = ld.featuretypeid
  and ([LicenseTypeId] = @ltypeId)
  where t.typegroupId = 9 
   
  SELECT [Id]
      ,[LicenseId]
      ,[RenewalFreqTypeId]
      ,[RenewalFreq]
      ,[UnitPrice]
      ,[fromdate]
      ,[todate]
      ,[Active]
  FROM [dbo].[LicensePricing]
  where LicenseId = @ltypeId

 
  SELECT I.[Id]
  ,[ItemName]
  ,[Code]
      ,[LicenseTypeId]
      ,[BTPOSTypeId]
      ,[NoOfUnits]
      ,[Label]
      ,[LableClass]
      ,[fromdate]
      ,[todate]
      ,[Active]
       ,case when b.id IS null then 0 else 1 end assigned
  FROM [dbo].[InventoryItem] I
  left outer join [dbo].[LicenseBTPOS] b on b.btpostypeid = I.Id
  and licensetypeid = @ltypeId
  where I.SubCategoryId = 1
  
  
end


GO
/****** Object:  StoredProcedure [dbo].[GetLicenseDetails]    Script Date: 02/24/2018 11:15:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[GetLicenseDetails]
@ltypeId int = -1
as begin 
SELECT ld.[Id]
      ,[LicenseTypeId]
      ,t.name [FeatureName]
      ,t.id FeatureTypeId
      ,[FeatureLabel]
      ,[FeatureValue]
      ,[LabelClass]
      ,ld.[Active]
      ,[fromDate]
      ,[toDate]
  FROM [dbo].[LicenseDetails] ld
  inner join Types t on t.id = ld.featuretypeid
  where ([LicenseTypeId] = @ltypeId or @ltypeId = -1)
end


GO
/****** Object:  StoredProcedure [dbo].[GetLicensePageDetails]    Script Date: 02/24/2018 11:16:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[GetLicensePageDetails]
(@catId int = -1)
as
begin

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [Id]
      ,[LicenseCatId]
      ,[LicenseType]
      ,[Description]
      ,[Active]
  FROM [dbo].[LicenseTypes]
  where (LicenseCatId = @catId or @catId = -1)
  
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 ld.[Id]
      ,[LicenseTypeId]
      ,t.Id FeatureTypeId
      ,t.name [FeatureName]
      ,[FeatureLabel]
      ,[FeatureValue]
      ,[LabelClass]
      ,ld.[Active]
      ,[fromDate]
      ,[toDate]
  FROM [dbo].[LicenseDetails]ld
  inner join Types t on t.id = ld.featuretypeid
  
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 lp.[Id]
      ,[LicenseId]
      ,t.name [RenewalFreqType]
      ,t.id [RenewalFreqTypeId]
      ,[RenewalFreq]
      ,[UnitPrice]
      ,[fromdate]
      ,[todate]
      ,lp.[Active]
  FROM [dbo].[LicensePricing] lp
  inner join Types t on t.id = lp.renewalFreqTypeId
  
  end


GO
/****** Object:  StoredProcedure [dbo].[getLicensePayments]    Script Date: 02/24/2018 11:17:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[getLicensePayments]
as
begin
SELECT 
us.FirstName + '' + us.LastName as UName
,'LC001' as licenseCode
,lt.LicenseType
,[StartDate]
,[ExpiryOn]
,r.Name as RenewFreq
,lc.Name as LicenseCat
,u.[Id]
,u.[UserId]           
,[FOId]      
,[LicenseTypeId]            
      ,[GracePeriod]
      ,[ActualExpiry]
      ,[LastUpdatedOn]
      ,[RenewFreqTypeId]

      ,u.[Active]
      ,u.[StatusId]
     ,f.FleetOwnerCode
   --  ,uld.Tax
   --  ,uld.Discount
     --,ulp.UnitPrice
  FROM [dbo].[UserLicense]u
  inner join Users us on us.Id=u.UserId
  inner join FleetOwner f on f.Id=u.FOId
  inner join Types r on r.Id = RenewFreqTypeId
  inner join LicenseTypes lt on lt.Id = LicenseTypeId
  inner join Types lc on lc.Id = lt.LicenseCatId
  --inner join UserLicensePayments ulp on ulp.Id = u.Id
  --inner join ULPymtTransDetails uld on uld.Id = u.id
end


GO
/****** Object:  StoredProcedure [dbo].[GetLicensePricing]    Script Date: 02/24/2018 11:18:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[GetLicensePricing]
(@categoryid int = -1)
as 
begin 

SELECT lp.[Id]
      ,[LicenseId]
	  ,LicenseType
      ,[RenewalFreqTypeId]
      ,[RenewalFreq]
      ,[UnitPrice]
      ,[fromdate]
      ,[todate]
      ,t.Name as licensefreq
      , case when t.id = 15 then 'Every' +str(lp.renewalfreq)+ ' Week(s)'
		 when t.id = 16 then 'Every' +str(lp.renewalfreq)+ ' Month(s)'
		 when t.id = 17 then 'Every' +str(lp.renewalfreq)+ ' Quarter(s)'
		 when t.id = 18 then 'Every' +str(lp.renewalfreq)+ ' Half Year(s)'
        else 'Every'+str(lp.renewalfreq)+' year(s)'
       end as freq
  FROM [dbo].[LicensePricing] lp
inner join types t on t.id = lp.renewalfreqtypeid
 inner join licensetypes lt on lt.id = lp.licenseid
 where (lt.LicenseCatId = @categoryid or @categoryid = -1)


end


/****** Object:  StoredProcedure [dbo].[InsUpdDelLicensePricing]    Script Date: 07/18/2016 16:48:16 ******/
SET ANSI_NULLS ON


GO
/****** Object:  StoredProcedure [dbo].[GetLicenseTypes]    Script Date: 02/24/2018 11:18:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[GetLicenseTypes]
(@licenseCategoryId int =-1)
AS
BEGIN
	SELECT lt.[Id]
      ,[LicenseCatId]
      ,[LicenseType]
      ,lt.[Description]
      ,t.Name as licenseCategory
	  ,lt.[Active]
  FROM [dbo].[LicenseTypes] lt
inner join Types t on t.Id = licensecatid
  where ([LicenseCatId] = @licenseCategoryId or @licenseCategoryId = -1)
END


GO
/****** Object:  StoredProcedure [dbo].[GetRegistrations]    Script Date: 02/24/2018 11:19:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetRegistrations]
as
begin
select [Id],
       [Name],
	   [EmailId],
	   [Company],
	   [CountryId],
	   [MobileNumber],
	   [Password],
	   [Address],
	   [StatusId],
	   [CreatedOn],
	   [CreatedBy],
	   [ReferenceId]	   
From registration
end
GO
/****** Object:  StoredProcedure [dbo].[getTypeGroups]    Script Date: 02/24/2018 11:19:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[getTypeGroups]
as
begin
select * from TypeGroups
end


GO
/****** Object:  StoredProcedure [dbo].[getTypes]    Script Date: 02/24/2018 11:20:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[getTypes]

as
begin
SELECT t.Id, t.Name, t.[Description],t.Active, tg.name as TypeGroup, TypeGroupId, listkey, listvalue
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	

END


GO
/****** Object:  StoredProcedure [dbo].[GetTypesByGroupId]    Script Date: 02/24/2018 11:21:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTypesByGroupId]
@typegrpid int = -1
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT t.Id, t.Name, t.[Description],t.Active, tg.name as TypeGroup, TypeGroupId, listkey, listvalue
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	 
	  where (TypeGroupId = @typegrpid or @typegrpid = -1)
END


GO
/****** Object:  StoredProcedure [dbo].[GetTypesByPaging]    Script Date: 02/24/2018 11:21:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GetTypesByPaging] 
(@typegrpid int = -1,
@curpage int=-1,
@maxrows int=-1
)
AS
begin

-- Determine the first record and last record 
DECLARE @FirstRec int, @LastRec int,@totalpages int, @totalrec int

SELECT @FirstRec = (@curpage - 1) * @maxrows
SELECT @LastRec = (@curpage * @maxrows + 1);

WITH TempResult as
(
SELECT ROW_NUMBER()  OVER(ORDER BY t.id asc) as RowNum,t.Id, t.Name, t.[Description],t.Active, tg.name as TypeGroup, TypeGroupId, listkey, listvalue
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	 
	  where (TypeGroupId = @typegrpid or @typegrpid = -1)
)
SELECT top (@LastRec-1) *
FROM TempResult
WHERE RowNum > @FirstRec 
AND RowNum < @LastRec

select @totalrec =  COUNT(*)
from (SELECT ROW_NUMBER()  OVER(ORDER BY t.id asc) as RowNum,t.Id, t.Name, t.[Description]
,t.Active, tg.name as TypeGroup, TypeGroupId, listkey, listvalue
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	 
	  where (TypeGroupId = @typegrpid or @typegrpid = -1)) as temp
	if((@totalrec%@maxrows)=0)
	select @totalpages=(@totalrec/@maxrows);
	else 
	select @totalpages=(@totalrec/@maxrows)+1;
	  
select @totalpages as totalpages, @totalrec as recordcount  

end




GO
/****** Object:  StoredProcedure [dbo].[GetUserRoles]    Script Date: 02/24/2018 11:22:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetUserRoles]
as 
begin
select U.[FirstName]+' '+U.[LastName] as UserName,
        U.[EmailId],
        U.[ContactNo1],
        U.[Photo],
        U.[Address]
      from Users U inner join UserRoles Ur on U.Id = Ur.UserId
        
end
GO
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 02/24/2018 11:23:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetUsers]
as
begin
select [FirstName]+' '+[LastName] as FullName,
		[EmailId],
		[RoleId],
		[GenderId],
		[ContactNo1],
		[Address],
		[photo]
from Users		
end 

GO
/****** Object:  StoredProcedure [dbo].[InsEditHistory]    Script Date: 02/24/2018 11:23:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[InsEditHistory]
(@Task varchar(50) =null,@Field varchar(50) =null
           ,@SubItem varchar(50) =null
           ,@Comment varchar(50) =null
           ,@Date datetime =null
           ,@ChangedBy varchar(50) =null
           ,@ChangedType varchar(50) =null           
           ,@edithistoryid int = -1 OUTPUT)
as
begin


INSERT INTO [dbo].[EditHistory]
           ([Field]
           ,[SubItem]
           ,[Comment]
           ,[Date]
           ,[ChangedBy]
           ,[ChangedType]
           ,[Task])
     VALUES
           (@Field
           ,@SubItem
           ,@Comment
           ,@Date
           ,@ChangedBy
           ,@ChangedType
           ,@Task)

 select @edithistoryid = SCOPE_IDENTITY()

end

GO
/****** Object:  StoredProcedure [dbo].[InsEditHistoryDetails]    Script Date: 02/24/2018 11:24:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsEditHistoryDetails]
(@EditHistoryId  int
         ,@FromValue varchar(50) = null
           ,@ToValue varchar(50)= null
           ,@ChangeType varchar(50)= null
           ,@Field1 varchar(50) = null
           ,@Field2 varchar(50) = null)
AS
BEGIN
	INSERT INTO [dbo].[EditHistoryDetails]
           ([EditHistoryId]
           ,[FromValue]
           ,[ToValue]
           ,[ChangeType]
           ,[Field1]
           ,[Field2])
     VALUES
           (@EditHistoryId
           ,@FromValue
           ,@ToValue
           ,@ChangeType
           ,@Field1
           ,@Field2)

END

GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelCompany]    Script Date: 02/24/2018 11:25:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[InsUpdDelCompany]
@Id int, @Name varchar(50), @Desc varchar(50), @Address varchar(500), @Active int, @ContactNo1 varchar(50),@ContactNo2 varchar(50), @Fax varchar(50), @EmailId varchar(50), @Title varchar(50), @Caption varchar(50), @Country varchar(50), @ZipCode varchar(50), @State varchar(50),@FleetSize int, @StaffSize int, @ShippingAddress varchar(50), @Logo varchar(Max), @flag varchar
as
begin

if @flag = 'I'
begin
insert into Company( Name, [Desc], Active, [Address], ContactNo1, ContactNo2, Fax, EmailId, Title, Caption, Country, ZipCode, [State],FleetSize, StaffSize, ShippingAddress, Logo)
values ( @Name, @Desc, @Active, @Address, @ContactNo1, @ContactNo2, @Fax, @EmailId, @Title, @Caption, @Country, @ZipCode, @State, @FleetSize, @StaffSize, @ShippingAddress, @Logo )
end

if @flag = 'U'
begin
update Company set
Name = @Name, 
[Desc] = @Desc, 
Active = @Active, 
[Address] = @Address,
ContactNo1 = @ContactNo1, 
ContactNo2 = @ContactNo2, 
Fax = @Fax, 
EmailId = @EmailId, 
Title = @Title,
 Caption = @Caption, 
Country = @Country, 
ZipCode = @ZipCode, 
[State] = @State, 
FleetSize = @FleetSize,
StaffSize = @StaffSize, 
ShippingAddress = @ShippingAddress,
 Logo = @Logo 
 where Id = @Id
end

if @flag = 'D'
begin
delete from Comany 
where Id = @Id
end
 
 end

GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelCustomers]    Script Date: 02/24/2018 11:26:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[InsUpdDelCustomers]
@Id int, @FirstName varchar(50), @LastName varchar(50), @Company varchar(100), @AoiId int, @MobileNumber varchar(13), @Telephone varchar(20), @EmailId varchar(100),@ReferenceId varchar(10), @Address varchar(100), @Fax varchar(20), @CountryId int, @State varchar(20), @ZipCode varchar(10), @EntryDate date, @Description varchar(100), @flag varchar 
as
 begin 
 
 if @flag = 'I'
 begin
 insert into Customers (FirstName, LastName,Company, MobileNumber, Telephone, EmailId, ReferenceId, AoiId, [Address], Fax, CountryId, [State], ZipCode, EntryDate, [Description] )
 values (@FirstName, @LastName, @Company,  @MobileNumber, @Telephone, @EmailId, @ReferenceId, @AoiId, @Address, @Fax, @CountryId, @State, @ZipCode, @EntryDate, @Description)
 end
 
 if @flag = 'U'
 begin
 update Customers set
 FirstName = @FirstName,
 LastName = @LastName,
 Company = @Company,
 MobileNumber = @MobileNumber,
 Telephone = @Telephone,
 ReferenceId = @ReferenceId,
 AoiId = @AoiId,
 EmailId = @EmailId,
 [Address] = @Address,
 Fax = @Fax,
 CountryId = @CountryId,
 [State] = @State,
 ZipCode = @ZipCode,
 EntryDate = @EntryDate,
 [Description] = @Description
 where Id = @Id
 end
 
 if @flag = 'D'
 delete from Customers 
 where Id = @Id
 end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelLicenceCatergories]    Script Date: 02/24/2018 11:27:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE[dbo].[InsUpdDelLicenceCatergories](@Active NUMERIC(10),
              
           @Desc Varchar(30),
           
           @Id numeric(10),
           @LicenseCategory varchar(30),
           @TypeGripId varchar(50))
AS
BEGIN
	

INSERT INTO 
[LicenceCatergories] VALUES
           (@Active,
              
          
           @Desc,
           @Id,
           @LicenseCategory,
           @TypeGripId )
   
	END


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelLicenceStatus]    Script Date: 02/24/2018 11:28:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE[dbo].[InsUpdDelLicenceStatus](@Active NUMERIC(10),
              
           @Desc Varchar(30),
           
           @Id numeric(10),
           @LicenseStatusType varchar(30),
           @TypeGripId varchar(50))
AS
BEGIN
	

INSERT INTO 
[LicenceStatus] VALUES
           (@Active,
           @Desc,
           @Id,
           @LicenseStatusType,
           @TypeGripId )
   
	END


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelLicenseDetails]    Script Date: 02/24/2018 11:29:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[InsUpdDelLicenseDetails](
@Id int = -1,
@LicenseTypeId int,
@FeatureTypeId int,
@FeatureLabel varchar(30),
@FeatureValue varchar(250),
@LabelClass varchar(50) = null,
@fromdate datetime = null,
@todate datetime = null,
@insupddelflag char
)
as
begin
declare @dt datetime
set @dt = GETDATE()

declare @edithistoryid int
declare @oldFeatureTypeId int
declare @oldFeatureLabel varchar(30)
declare @oldFeatureValue varchar(10)
declare @oldLabelClass varchar(50)
declare @oldfromDate datetime
declare @oldtoDate datetime
if @insupddelflag = 'I'
begin
INSERT INTO [dbo].[LicenseDetails]
           ([LicenseTypeId]
           ,[FeatureTypeId]
           ,[FeatureLabel]
           ,[FeatureValue]
           ,[LabelClass]           
           ,[fromDate]
           ,[toDate])
     VALUES
           (@LicenseTypeId
           ,@FeatureTypeId
           ,@FeatureLabel
           ,@FeatureValue
           ,@LabelClass           
           ,@fromDate
           ,@toDate
          )
           exec InsEditHistory 'LicenseDetails','Name', @LicenseTypeId,'LicenseDetails Creation',@dt,'Admin','Insertion',@edithistoryid = @edithistoryid output
		              
			exec InsEditHistoryDetails @edithistoryid,null,@LicenseTypeId,'Insertion','LicenseTypeId',null			
			exec InsEditHistoryDetails @edithistoryid,null,@FeatureTypeId,'Insertion','FeatureTypeId',null
			
            exec InsEditHistoryDetails @edithistoryid,null,@FeatureLabel,'Insertion','FeatureLabel',null
  
            exec InsEditHistoryDetails @edithistoryid,null,@FeatureValue,'Insertion','FeatureValue',null			
			exec InsEditHistoryDetails @edithistoryid,null,@LabelClass,'Insertion','LabelClass',null
			
            exec InsEditHistoryDetails @edithistoryid,null,@fromDate,'Insertion','fromDate',null
            exec InsEditHistoryDetails @edithistoryid,null,@toDate,'Insertion','toDate',null
          
          
          end
else
if @insupddelflag = 'U'
begin

UPDATE [dbo].[LicenseDetails]
   SET [FeatureLabel] = @FeatureLabel
      ,[FeatureValue] = @FeatureValue
      ,[LabelClass] = @LabelClass
      ,[fromDate] = @fromDate
      ,[toDate] = @toDate
 WHERE [LicenseTypeId] = @LicenseTypeId and [FeatureTypeId] = @FeatureTypeId
 
 
   exec InsEditHistory 'LicenseDetails','Name', @FeatureTypeId,'LicenseDetails updation',@dt,'Admin','Modification',@edithistoryid = @edithistoryid output           

      if @FeatureTypeId <> @FeatureTypeId
    exec InsEditHistoryDetails @edithistoryid,@oldFeatureTypeId,@FeatureTypeId,'Modication','FeatureTypeId',null		

      if @FeatureLabel <> @FeatureLabel
    exec InsEditHistoryDetails @edithistoryid,@oldFeatureLabel,@FeatureLabel,'Modication','@FeatureLabel',null		

      if @FeatureValue <> @FeatureValue
    exec InsEditHistoryDetails @edithistoryid,@oldFeatureValue,@FeatureValue,'Modication','@FeatureValue',null	
 
       if @LabelClass <> @LabelClass
    exec InsEditHistoryDetails @edithistoryid,@oldLabelClass,@LabelClass,'Modication','@LabelClass',null		

      if @fromDate <> @fromDate
    exec InsEditHistoryDetails @edithistoryid,@oldfromDate,@fromDate,'Modication','@fromDate',null		

      if @oldtoDate <> @oldtoDate
    exec InsEditHistoryDetails @edithistoryid,@oldtoDate,@oldtoDate,'Modication','@oldtoDate',null		
 
 
 
 	
end
else
if @insupddelflag = 'D'
begin
DELETE FROM [dbo].[LicenseDetails]
      WHERE [LicenseTypeId] = @LicenseTypeId and [FeatureTypeId] = @FeatureTypeId
end
end


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelLicensePayments]    Script Date: 02/24/2018 11:29:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[InsUpdDelLicensePayments](@expiryOn datetime,@Id int,@licenseFor varchar(50),@licenseId int,@licenseType varchar(50),@paidon datetime,@renewedon datetime,@transId varchar (50))
as
begin
insert into LicensePayments (expiryOn,licenseFor,licenseId,licenseType,paidon,renewedon,transId) values(@expiryOn,@licenseFor,@licenseId,@licenseType,@paidon,@renewedon,@transId)
end


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelLicensePricing]    Script Date: 02/24/2018 11:30:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[InsUpdDelLicensePricing](
@Id int = -1,
@LicenseId int,
@RenewalFreqTypeId int,
@RenewalFreq int,
@UnitPrice decimal(18,0),
@fromdate datetime = null,
@todate datetime = null,
@insupddelflag char
)
as
begin

if @insupddelflag = 'I'
begin
INSERT INTO [dbo].[LicensePricing]
           ([LicenseId]
           ,[RenewalFreqTypeId]
           ,[RenewalFreq]
           ,[UnitPrice]
           ,[fromdate]
           ,[todate])
     VALUES
           (@LicenseId
           ,@RenewalFreqTypeId
           ,@RenewalFreq
           ,@UnitPrice
           ,@fromdate
           ,@todate
          )
          end
else
if @insupddelflag = 'U'
begin

UPDATE [dbo].[LicensePricing]
   SET [RenewalFreqTypeId] = @RenewalFreqTypeId
      ,[RenewalFreq] = @RenewalFreq
      ,[UnitPrice] = @UnitPrice
      ,[fromdate] = @fromdate
      ,[todate] = @todate
      --,[Active] = @Active
 WHERE licenseId = @LicenseId
end
else
if @insupddelflag = 'D'
begin
DELETE FROM [dbo].[LicensePricing]
      WHERE licenseId = @LicenseId

end
end


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRegistrations]    Script Date: 02/24/2018 11:30:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[InsUpdDelRegistrations]
@Id int, @Name varchar(50), @EmailId varchar(100), 
@Company varchar(100), @CountryId int, @MobileNumber varchar(20), 
@Password varchar(50), @Address varchar(50), @StatusId int=null, 
@CreatedOn datetime=null, @CreatedBy varchar(50)=null, @flag varchar
as
begin
declare @Dt datetime ,@m varchar(5)
set @Dt = GETDATE()
select @m = 'PI'+replace(CONVERT(VARCHAR(1), GETDATE(), 114),':','')+ CONVERT(VARCHAR(3),DATEPART(millisecond,GETDATE()))
if @flag = 'I'
begin
insert into registration ( Name, EmailId, Company, CountryId, MobileNumber, [Password], [Address], StatusId, CreatedOn, CreatedBy ,ReferenceId) 
values ( @Name, @EmailId, @Company, @CountryId, @MobileNumber, @Password, @Address, @StatusId, @Dt, @CreatedBy,@m)
end

if @flag = 'U'
begin
update registration set
Name = @Name, 
EmailId = @EmailId, 
Company = @Company, 
CountryId = @CountryId, 
MobileNumber = @MobileNumber, 
[Password] = @Password, 
[Address] = @Address, 
StatusId = @StatusId, 
CreatedOn = @Dt, 
CreatedBy = @CreatedBy
where Id = @Id
end

if @flag = 'D'
begin
delete from registration
where Id = @Id
end

SELECT 
       [Name]
      ,[EmailId]
      ,[Company]   
      ,[MobileNumber]     
      ,[Address]
      ,[CountryId] 
      ,[ReferenceId]
    
  FROM [dbo].[Registration] where MobileNumber  = @MobileNumber

end

GO
/****** Object:  StoredProcedure [dbo].[InsUpdDeltypes]    Script Date: 02/24/2018 11:31:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[InsUpdDeltypes]
@flag varchar,@id int=-1,@name varchar(50),@description varchar(50),@active int
,@typegroupid varchar(50),@listkey varchar(50),@listvalue varchar(50)
as
begin
if @flag ='I'
begin
Insert into Paysmart.dbo.types
([name],[description],[active],[typegroupid],[listkey],[listvalue])
values
(@name,@description,@active,@typegroupid,@listkey,@listvalue)
end
if @flag ='U'
begin
Update  Paysmart.dbo.types
set [name]=@name,
[description]=@description,
[active]=@active,
[typegroupid]=@typegroupid,
[listkey]=@listkey,
[listvalue]=@listvalue
where id=@id
end
if @flag ='D'
begin
delete from Paysmart.dbo.types
where id=@id
end
end


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUserRoles]    Script Date: 02/24/2018 11:32:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE  procedure [dbo].[InsUpdDelUserRoles](
@Id int,
@roleid int,
@UserId int,
@CompanyId int ,
@flag varchar
)
as
begin

declare @cnt int

select @cnt = count(*) from UserRoles where [UserId] = @UserId and [roleid] = @roleid

if @flag = 'I'
begin
if @cnt = 0
INSERT INTO [UserRoles]
           ([UserId]
           ,[RoleId]
           ,[CompanyId])
     VALUES
           (@UserId
           ,@RoleId
           ,@CompanyId)
    end
 else
   if @flag = 'U'
 begin
UPDATE [UserRoles]
  SET [UserId] = @UserId
     ,[RoleId] = @RoleId
     ,[CompanyId] = @CompanyId
  WHERE Id = @Id
 end
 else

if @flag = 'D'
 begin
delete from [UserRoles] where [UserId] = @UserId and RoleId = @roleid and CompanyId  = @CompanyId

end

end

GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUsers]    Script Date: 02/24/2018 11:32:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[InsUpdDelUsers]
@Id int, @FirstName varchar(50),@LastName varchar(50), @MiddleName varchar(50), @EmpNo varchar(20), @EmailId varchar(50), @RoleId int, @CompanyId int, @Active int, @GenderId int, @ManagerId int, @CountryId int, @StateId int, @ZipCode varchar(10), @ContactNo1 varchar(20), @ContactNo2 varchar(20), @Address varchar(500), @AltAddress varchar(500), @photo varchar(max), @flag varchar 
as 
begin
 if @flag = 'I'
 begin
 insert into Users ( FirstName, LastName, MiddleName, EmpNo, EmailId, RoleId, CompanyId, Active, GenderId, ManagerId, CountryId, StateId, ZipCode, ContactNo1, ContactNo2, [Address], AltAddress, photo ) 
 values ( @FirstName, @LastName, @MiddleName, @EmpNo, @EmailId, @RoleId, @CompanyId, @Active, @GenderId, @ManagerId, @CountryId, @StateId, @ZipCode, @ContactNo1, @ContactNo2, @Address, @AltAddress, @photo )
 end 
 
 if @flag = 'U'
 begin
 update Users set
 FirstName = @FirstName, 
 LastName = @LastName,
 MiddleName = @MiddleName,
 EmpNo = @EmpNo,
 EmailId = @EmailId,
 RoleId = @RoleId,
 CompanyId = @CompanyId,
 Active = @Active,
 GenderId = @GenderId,
 ManagerId = @ManagerId,
 CountryId = @CountryId,
 StateId = @StateId,
 ZipCode = @ZipCode,
 ContactNo1 = @ContactNo1,
 ContactNo2 = @ContactNo2,
 [Address] = @Address,
 AltAddress = @AltAddress,
 photo = @photo
where Id = @Id
end
if @flag ='D'
begin
delete from Users 
where Id = @Id
end

 end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdLicenseTypes]    Script Date: 02/24/2018 11:33:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsUpdLicenseTypes] 
(@Id int = -1
,@LicenseCatId int
,@LicenseType varchar(50)
,@Description varchar(500) = null
,@Active int = 1)	
AS
BEGIN
declare @dt datetime
set @dt = GETDATE()


declare @edithistoryid int
declare @oldLicenseType varchar(50)
declare @oldDescription varchar(500)
declare @oldActive int

declare @lcCode varchar(15)
 
set @lcCode = 'LC'+replace(CONVERT(VARCHAR(20), GETDATE(), 108),':','')

select @oldLicenseType = LicenseType, @oldActive = Active, @oldDescription = Description from LicenseTypes where Id = @Id

if @@rowcount = 0
begin
INSERT INTO [dbo].[LicenseTypes]
           ([LicenseCatId]
           ,[LicenseType]
           ,[Description]
           ,[Active]
           ,LicenseCode)
     VALUES
           (@LicenseCatId
           ,@LicenseType
           ,@Description
           ,@Active
           ,@lcCode)
           
           exec InsEditHistory 'LicenseTypes','Name', @LicenseType,'LicenseTypes Creation',@dt,'Admin','Insertion',@edithistoryid = @edithistoryid output
		              
			exec InsEditHistoryDetails @edithistoryid,null,@LicenseType,'Insertion','LicenseType',null			
			exec InsEditHistoryDetails @edithistoryid,null,@Active,'Insertion','Active',null
			exec InsEditHistoryDetails @edithistoryid,null,@Description,'Insertion','Description',null
end
else
begin
	UPDATE [dbo].[LicenseTypes]
   SET [LicenseCatId] = @LicenseCatId
      ,[LicenseType] = @LicenseType
      ,[Description] = @Description
      ,[Active] = @Active
	WHERE Id = @Id
	end
exec InsEditHistory 'LicenseTypes','Name', @LicenseType,'LicenseTypes updation',@dt,'Admin','Modification',@edithistoryid = @edithistoryid output           

if @oldLicenseType <> @LicenseType
exec InsEditHistoryDetails @edithistoryid,@oldLicenseType,@LicenseType,'Modication','LicenseType',null		

if @oldDescription<> @Description
exec InsEditHistoryDetails @edithistoryid,@oldDescription,@Description,'Modication','Description',null		

if @oldActive <> @Active
exec InsEditHistoryDetails @edithistoryid,@oldActive,@Active,'Modication','Active',null			
	




END


/****** Object:  StoredProcedure [dbo].[InsUpdDelFleetRoutes]    Script Date: 07/18/2016 15:58:19 ******/
SET ANSI_NULLS ON


GO
/****** Object:  StoredProcedure [dbo].[InsUpdTypeGroups]    Script Date: 02/24/2018 11:34:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[InsUpdTypeGroups](@Id int,@Name varchar(50)
,@Description varchar(50) = null,@Active int, @insupdflag varchar(1))
as
begin
declare @dt datetime
set @dt = GETDATE()
declare @cnt int
declare @edithistoryid int
declare @oldname varchar(50)
declare @olddesc varchar(250)
declare @oldactive int

if @insupdflag = 'I'
begin

select @cnt = COUNT(*) from TypeGroups where UPPER(name) = UPPER(@Name)

if @cnt =0

INSERT INTO [dbo].[TypeGroups]
           ([Name]
           ,[Description]
           ,[Active])
     VALUES
           (@Name
           ,@Description
           ,@Active)

exec InsEditHistory 'TypeGroups','Name', @Name,'TypeGroups Creation',@dt,'Admin','Insertion',@edithistoryid = @edithistoryid output
		              
			exec InsEditHistoryDetails @edithistoryid,null,@Name,'Insertion','Name',null			
			exec InsEditHistoryDetails @edithistoryid,null,@Description,'Insertion','Description',null
			exec InsEditHistoryDetails @edithistoryid,null,@Active,'Insertion','Active',null




end
else
if @insupdflag = 'U'
begin

select @cnt = COUNT(*) from TypeGroups where UPPER(name) = UPPER(@Name) 
and Id <> @Id
              
if @cnt =0
           
   select @oldname = name, @olddesc = description, @oldactive = active from TypeGroups where Id = @Id        

UPDATE [dbo].[TypeGroups]
   SET [Name] = @Name
      ,[Description] = @Description
      ,[Active] = @Active
 WHERE Id = @Id
	
	exec InsEditHistory 'TypeGroups','Name', @Name,'Type updation',@dt,'Admin','Modification',@edithistoryid = @edithistoryid output           

if @oldname <> @Name
exec InsEditHistoryDetails @edithistoryid,@oldname,@Name,'Modication','Name',null		

if @olddesc <> @Description
exec InsEditHistoryDetails @edithistoryid,@olddesc,@Description,'Modication','Description',null		

if @oldactive <> @Active
exec InsEditHistoryDetails @edithistoryid,@oldactive,@Active,'Modication','Active',null		


              
end
if @insupdflag = 'D'
begin
DELETE FROM [dbo].[TypeGroups]
      WHERE Id = @Id
end
end


GO
/****** Object:  StoredProcedure [dbo].[InsUpdTypes]    Script Date: 02/24/2018 11:35:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[InsUpdTypes](@Id int,@Name varchar(50),@Description varchar(50) = null,@TypeGroupId varchar(50),@Active varchar(30),@insupdflag varchar(1))
as
begin

declare @dt datetime
set @dt = GETDATE()

declare @cnt int
declare @edithistoryid int
declare @oldname varchar(50)
declare @olddesc varchar(250)
declare @oldactive int

if @insupdflag = 'I'
begin

select @cnt = COUNT(*) from Types where UPPER(name) = UPPER(@Name)

if @cnt =0
INSERT INTO [dbo].[Types]
           ([Name]
           ,[Description]
           ,[TypeGroupId] 
           ,[Active])
     VALUES
           (@Name
           ,@Description
           ,@TypeGroupId 
           ,@Active)
           
           
           exec InsEditHistory 'Types','Name', @Name,'Type Creation',@dt,'Admin','Insertion',@edithistoryid = @edithistoryid output
		              
			exec InsEditHistoryDetails @edithistoryid,null,@Name,'Insertion','Name',null			
			exec InsEditHistoryDetails @edithistoryid,null,@Description,'Insertion','Description',null
			exec InsEditHistoryDetails @edithistoryid,null,@Active,'Insertion','Active',null


           
           end
else
if @insupdflag = 'U'
begin

select @cnt = COUNT(*) from Types where UPPER(name) = UPPER(@Name) 
and Id <> @Id

if @cnt =0

select @oldname = name, @olddesc = description, @oldactive = active from types where Id = @Id


update types 
set 
[Name]=@Name
,[Active] = @Active
,[Description] = @Description

where Id = @Id

 exec InsEditHistory 'Types','Name', @Name,'Type updation',@dt,'Admin','Modification',@edithistoryid = @edithistoryid output           

if @oldname <> @Name
exec InsEditHistoryDetails @edithistoryid,@oldname,@Name,'Modication','Name',null		

if @olddesc <> @Description
exec InsEditHistoryDetails @edithistoryid,@olddesc,@Description,'Modication','Description',null		

if @oldactive <> @Active
exec InsEditHistoryDetails @edithistoryid,@oldactive,@Active,'Modication','Active',null		

end
if @insupdflag = 'D'
begin
DELETE FROM [dbo].[Types]
      WHERE Id = @Id
end
end


GO
/****** Object:  StoredProcedure [dbo].[GetMandatoryUserDocs]    Script Date: 02/24/2018 16:31:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[GetMandatoryUserDocs]
(@countryid int = -1, @utId int = -1,@vgId int = -1)
as
begin

select t.Id      
	  ,U.Id Docid      
      ,t.Name as DocType      
      ,t.Description
      ,case when U.Id IS null then 0 else 1 end as selected
      ,CountryId      
      ,U.IsMandatory 
      ,U.UserTypeId 
      ,U.VehicleGroupId   
       from Types t
left outer join
(select DocTypeId,usertypeid,countryid,ID,IsMandatory,VehicleGroupId from [dbo].[MandatoryUserDocuments]  
where ((CountryId = @countryid or @countryid = -1) and (UserTypeId = @utId or @utId = -1)
and (VehicleGroupId = @vgId or @vgId = -1))
)
U on (t.Id = U.DocTypeId) 
where t.TypeGroupId = 15 

end



GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelMandatoryUserDocs]    Script Date: 02/24/2018 16:32:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[InsUpdDelMandatoryUserDocs]
(@flag varchar, @Id int= -1, @DocTypeId int, @Countryid int, @UserTypeId int,@IsMandatory int = 0
, @FileContent varchar(max) = null
,@VehicleGroupId int)
as
begin
declare @cnt int,@cont int

if @flag = 'I'
begin

select @cnt = COUNT(*) from [dbo].[MandatoryUserDocuments] where [UserTypeId] = @UserTypeId and
      [DocTypeId] = @DocTypeId and [CountryId] = @Countryid and [VehicleGroupId] = @VehicleGroupId

if @cnt = 0 
 begin 
INSERT INTO [dbo].[MandatoryUserDocuments]
           ([UserTypeId]
           ,[DocTypeId]
           ,[CountryId]
           ,[Active]
           ,[FileContent]
           ,[IsMandatory]
           ,[VehicleGroupId])
     VALUES
           (@UserTypeId
           ,@DocTypeId
           ,@CountryId
           ,1
           ,@FileContent
           ,@IsMandatory
           ,@VehicleGroupId)
    end       
DECLARE @dridsList CURSOR, @count int,@dcname varchar(50),@drid int
 begin

   SET @dridsList = CURSOR FOR
   select DID from PSDriverMaster  where  CountryId = @Countryid and VehicleGroupId = @VehicleGroupId 

   OPEN @dridsList
    FETCH NEXT FROM @dridsList
    INTO @drid
 
    WHILE @@FETCH_STATUS = 0
    begin
	 begin
		update [dbo].[DriverDocuments]
		set IsApproved =0, IsVerified = 0
		where [DriverId] = @drid and [DocTypeId] = @DocTypeId
		  
		if @@ROWCOUNT = 0 
			begin
				select @dcname=name from  types where id=@DocTypeId
				Insert INTO [dbo].[DriverDocuments]
				([DriverId],[FileName],[DocTypeId])
				values (@drid, @dcname, @DocTypeId)     
			end
	 end 
   
    FETCH NEXT FROM @dridsList INTO @drid  
    END 
 
    CLOSE @dridsList ;
    DEALLOCATE @dridsList;
	end
    
end
else if @flag = 'U'
begin
UPDATE [dbo].[MandatoryUserDocuments]
   SET [FileContent] = @FileContent
      ,[IsMandatory] = @IsMandatory
 WHERE [UserTypeId] = @UserTypeId and
      [DocTypeId] = @DocTypeId and [CountryId] = @Countryid and [VehicleGroupId] = @VehicleGroupId

end
else
if @flag = 'D'
begin

DELETE FROM [dbo].[MandatoryUserDocuments] where Id = @Id

end

end
 



GO
/****** Object:  StoredProcedure [dbo].[GetUserLicense]    Script Date: 03/03/2018 15:26:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[GetUserLicense]
--(@foCode varchar(10))
as 
begin
SELECT u.[Id]
      ,u.[UserId]
     
      ,us.FirstName + '' + us.LastName as UName
      ,[FOId]      
      ,[LicenseTypeId]
      ,lt.LicenseType
      ,[StartDate]
      ,[ExpiryOn]
      ,[GracePeriod]
      ,[ActualExpiry]
      ,[LastUpdatedOn]
      ,[RenewFreqTypeId]
      ,r.Name
      ,u.[Active]
      ,u.[StatusId]
     ,f.FleetOwnerCode
     ,uld.Tax
     ,uld.Discount
     ,ulp.UnitPrice
  FROM [dbo].[UserLicense]u
  inner join Users us on us.Id=u.UserId
  inner join FleetOwner f on f.Id=u.FOId
  inner join Types r on r.Id = RenewFreqTypeId
  inner join LicenseTypes lt on lt.Id = LicenseTypeId
  inner join UserLicensePayments ulp on ulp.Id = u.Id
  inner join ULPymtTransDetails uld on uld.Id = u.id
  
end


--upper(f.FleetOwnerCode) = upper(@focode)


GO
/****** Object:  StoredProcedure [dbo].[GetUserLicensePayments]    Script Date: 03/03/2018 15:27:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[GetUserLicensePayments]
as 
begin
SELECT [Id]
      ,[ULId]
      ,[CreatedOn]
      ,[Amount]
      ,[UnitPrice]
      ,[Units]
      ,[StatusId]
      ,[LicensePymtTransId]
      ,[IsRenewal]
  FROM [dbo].[UserLicensePayments]
  
end


GO
/****** Object:  StoredProcedure [dbo].[GetUserLicensePymtTransactions]    Script Date: 03/03/2018 15:28:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[GetUserLicensePymtTransactions]
as 
begin
SELECT  [Id]
      ,[TransId]
      ,[GatewayTransId]
      ,[Amount]
      ,[TransDate]
      ,[ULPymtId]
      ,[StatusId]
      ,[Desc]
  FROM [dbo].[UserLicensePymtTransactions]
  
 
  
end


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUserLicense]    Script Date: 03/03/2018 15:31:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[InsUpdDelUserLicense](
@Id int = -1,
@UserId int,
@FOId int,
@LicenseTypeId int,
@StartDate datetime = null,
@ExpiryOn datetime = null,
@GracePeriod int,
@ActualExpiry datetime = null,
@LastUpdatedOn datetime = null,
@StatusId int,
@RenewFreqTypeId int,
@Active int,
@insupddelflag char
)
as
begin

declare @cnt int = 0,@currDate datetime,@ex datetime
select @currDate = GETDATE()
if (@LicenseTypeId ='1')
set @ex = DATEADD(DD,360,GETDATE())
if (@LicenseTypeId ='2')
set @ex = DATEADD(DD,180,GETDATE())
if (@LicenseTypeId ='3')
set @ex = DATEADD(DD,90,GETDATE())
if (@LicenseTypeId ='4')
set @ex = DATEADD(DD,30,GETDATE())


if @insupddelflag = 'I'
begin

select @cnt = COUNT(*) from [dbo].[UserLicense] where [UserId] = @UserId and [LicenseTypeId] = @LicenseTypeId

	if @cnt = 0 
	begin

	INSERT INTO [dbo].[UserLicense]
			   ([UserId]
			   ,[FOId]
			   ,[LicenseTypeId]
			   ,[StartDate]
			   ,[ExpiryOn]           
			   ,[GracePeriod]
			   ,[ActualExpiry]
			   ,[LastUpdatedOn]
			   ,[Active]
			   ,[StatusId]
			   ,[RenewFreqTypeId]
			   )
		 VALUES
			   (@UserId
			   ,@FOId
			   ,@LicenseTypeId
			   ,@StartDate
			   ,@ex           
			   ,@GracePeriod          
			   ,@ActualExpiry
			   ,@currDate
			   ,@Active
			   ,@StatusId
			   ,@RenewFreqTypeId
			  )
	end

end
else
if @insupddelflag = 'U'
begin

UPDATE [dbo].[UserLicense]
   SET [UserId] = @UserId
      ,[FOId] = @FOId
      ,[LicenseTypeId] = @LicenseTypeId
      ,[StartDate] = @StartDate
      ,[ExpiryOn] = @ExpiryOn
      ,[GracePeriod] = @GracePeriod
      ,[ActualExpiry] = @ActualExpiry
      ,[LastUpdatedOn] = @LastUpdatedOn
      ,[StatusId] = @StatusId
      ,[Active] = @Active      
      ,[RenewFreqTypeId] = @RenewFreqTypeId           
 WHERE [UserId] = @UserId
end
else
if @insupddelflag = 'D'
begin
	DELETE FROM [dbo].[UserLicense] WHERE [UserId] = @UserId
end
end


if @insupddelflag = 'I' or @insupddelflag = 'U'
begin

SELECT [Id]
      ,[UserId]
      ,[FOId]
      ,[LicenseTypeId]
      ,[StartDate]
      ,[ExpiryOn]
      ,[GracePeriod]
      ,[ActualExpiry]
      ,[LastUpdatedOn]
      ,[Active]
      ,[StatusId]
      ,[RenewFreqTypeId]
  FROM [dbo].[UserLicense]
   WHERE [UserId] = @UserId

 
end





GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUserLicenseConfirmDetails]    Script Date: 03/03/2018 15:32:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsUpdDelUserLicenseConfirmDetails]
(@foId int,
@userId int,
@TransId varchar(50),
@GatewayTransId varchar(20),
@ULId int,
@ULPymtId int,
@units int,
@POSUnits int,
@isRenewal int,
@itemId int,
@address varchar(250) = null,
@amount decimal,
@insupddelFlag varchar(1))
	
AS
BEGIN
declare @expDt datetime,  @currDate datetime,@userloginid varchar(10) =  null 
,@shipOrder varchar(10),@licenseCode varchar(20) = 'LC0001',@posid int
,@soId int

select @currDate = GETDATE()


	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    /*
    1) update userlicense with start and expiry dates
    2) update userlicensepaymenttransactions table with gatewayTransId 
     --5)insert an alert to notify admin
    --6)update the owner ship for bt pos if needed
    
    --7)generate a SO and shipping order for the BT POS
    --8)insert SO and shipping order notification for admin
    --9)update edit history
    --10) insert a notfication for user also
    --11)create dashboard login credentails also
    --12) update the inventory status also
    */

--all the benefits that the user gets as part of license will be stored 
    --4)features and their values will be stored into ULFeatures Table    
    --ULPid, featureid, value,desc
if @isRenewal = 0 
begin
   
   select @expDt = DATEADD(month,@units,GETDATE())
   
    UPDATE [dbo].[UserLicense]
   SET 
      [StartDate] = @currDate
      ,[ExpiryOn] =  @expDt    
      ,[ActualExpiry] = DATEADD(day,7,@expDt)--(@expDt + (select [graceperiod] from UserLicense WHERE [Id] = @ULId)) 
      ,[LastUpdatedOn] = @currDate
      ,[Active] = 1
      ,[StatusId] = 3      
 WHERE [Id] = @ULId

UPDATE [dbo].[UserLicensePymtTransactions]
   SET [GatewayTransId] = @GatewayTransId       
      ,[StatusId] =3
      where [TransId] = @TransId
      
     select  @userloginid =logininfo from UserLogins where UserId = @userId
     
     if @userloginid is null 
     begin
     select @userloginid = 'FO'+(select replace(convert(char(10), getdate(), 108), ':', ''))        
     
     INSERT INTO [dbo].[UserLogins]
           ([LoginInfo]
           ,[PassKey]
           ,[UserId]
           ,[salt]
           ,[Active])
     VALUES
           (@userloginid,@userloginid,@userId,null,1)
          
     end
end

----if there are POS units to be sent then update the details and generate SO and shipping orders
if @POSUnits > 0 
begin

--check if it is renewal
if @isRenewal = 0 
begin
    --UPDATE BTPOSDetails
    --    SET FleetOwnerId = @foId
    --  --  ,CompanyId = (select [CompanyId] from FleetOwner where Id = @foId)
    --FROM BTPOSDetails
    --INNER JOIN (
    --    SELECT TOP(@POSUnits) ID FROM BTPOSDetails WHERE FleetOwnerId is null
    --     ORDER BY ID
    --) AS InnerMyTable ON BTPOSDetails.ID = InnerMyTable.ID
    
DECLARE db_cursor CURSOR FOR  
SELECT TOP(@POSUnits) id from [dbo].[BTPOSDetails] where FleetOwnerId is null or fleetownerid  = 0 ORDER BY ID


OPEN db_cursor  
FETCH NEXT FROM db_cursor INTO @posid

WHILE @@FETCH_STATUS = 0  
BEGIN  

declare @cid int

select @cid = companyid from FleetOwner where Id = @foId


update [dbo].[BTPOSDetails]
set FleetOwnerId = @foId, CompanyId = @cid
where Id = @posid
 
FETCH NEXT FROM db_cursor INTO @posid  
END  

CLOSE db_cursor  
DEALLOCATE db_cursor 

declare @sonum varchar(20),@shipOrderNum varchar(20)

 select @sonum = 'SO'+(select replace(convert(char(10), getdate(), 108), ':', ''))
 select @shipOrderNum = 'SH'+(select replace(convert(char(10), getdate(), 108), ':', ''))

      INSERT INTO [dbo].[SalesOrder]
           ([SalesOrderNum]
           ,[TransactionId]
           ,[Date]
           ,[amount]
           ,[ItemId]
           ,[Quantity]
           ,[Status])
     VALUES
           (@sonum
           ,@ULPymtId
           ,@currDate,@amount,@itemId,@POSUnits,1)
           
           SELECT @soId = SCOPE_IDENTITY() 
           
     --      INSERT INTO [dbo].[Notifications]
     --      ([CreatedOn]
     --      ,[Message]
     --      --,[MessageTypeId]
     --      ,[StatusId]
     --      ,[UserId]
     --      ,[Title]
     --      ,[Source])
     --VALUES
     --      (@currDate,'A sales order '+@sonum+' is generated for BT POS',1,1,1,'Admin Admin','License Payments')
          

           INSERT INTO [dbo].[ShippingOrder]
           ([ShippingOrderNum]
           ,[TransactionId]
           ,[Date]
           ,[amount]
           ,[Status]
           ,[SalesOrderId])
     VALUES
           (@shipOrderNum,@ULPymtId,@currDate,@amount,1,@soId)

--INSERT INTO [dbo].[Notifications]
--           ([CreatedOn]
--           ,[Message]
--           --,[MessageTypeId]
--           ,[StatusId]
--           ,[UserId]
--           ,[Title]
--           ,[Source])
--     VALUES
--           (@currDate,'A shipping order '+@shipOrderNum+' is generated for BT POS',1,1,1,'Admin Admin','License Payments')
           
		--update the inventory status
		--check the availability and if not possible, generate error
		--if avilable qty falls below reorder point then generate an alert also
		UPDATE [dbo].[Inventory]
		   SET [availableQty] = ([availableQty] - @POSUnits)		 
		 WHERE [InventoryItemId] = @itemId
        
end
else
begin
select 1
 --if it is renewal, then verify if any pos units need to be increased.
 --and also extend the date. no need of sending login info
end



--return back below
--1) login userid 
--2) shipping order confirmation
--3) license code
--4) payment transaction id
--5) expiry date
end

select 
@userloginid username
,@shipOrderNum shipOrder
,@licenseCode licenseCode
,@TransId transId
,@expDt expiryon
, @currDate startdate
,@POSUnits noofunits
,(select emailid from users where id = (select userid from fleetowner where id = @foid)) emailid
,@TransId TransId

END


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUserLicenseDetails]    Script Date: 03/03/2018 15:34:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsUpdDelUserLicenseDetails]
(@FOCode varchar(15), @licenseTypeId int, @amount decimal,@unitprice decimal,@units int,@renewFreqTypeId int,@insupddelFlag varchar(1))
	
AS
BEGIN
declare @userid int, @foId int, @currDate datetime, @ULId int = 0,@ulCnt int = -1, @ulPcnt int = -1
select @currDate = GETDATE()
--set foId = -1

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


if @insupddelFlag = 'I' 
begin

select @ulCnt = COUNT(*) from [dbo].[UserLicense] where UserId = @userid and LicenseTypeId = @licenseTypeId
    -- Insert statements for procedure here
    --1) master user license record will be maintained for all user licenses
    --FOid, licenseTypeId, active, startdate, expiryon, graceperiod,lastupdatedon
    if @ulCnt = 0 
    begin
    INSERT INTO [dbo].[UserLicense]
           ([UserId]
           ,[FOId]
           ,[LicenseTypeId]
           ,[StartDate]
           ,[ExpiryOn]
           ,[GracePeriod]
           ,[ActualExpiry]
           ,[LastUpdatedOn]
           ,[Active]
           ,[StatusId]
           ,[RenewFreqTypeId])
     VALUES
           (@userid,@foId,@licenseTypeId,@currDate,null,7,null,@currDate,0,1,@renewFreqTypeId)
    
    SELECT @ULId = SCOPE_IDENTITY()
    end
      
      select @ulPcnt = COUNT(*) from  [dbo].[UserLicensePayments] where ULId = @ULId
		if @ulPcnt = 0 
		begin
		INSERT INTO [dbo].[UserLicensePayments]
           ([ULId]
           ,[CreatedOn]
           ,[Amount]
           ,[UnitPrice]
           ,[Units]
           ,[StatusId]
           ,[LicensePymtTransId]
           ,[IsRenewal])
		VALUES
           (@ULId,@currDate,@amount,@unitprice,@units,1,null,0)
        end              

    --the payment made by the user for the license purchase will be stored next
    --2) enter details into user license payments
    --ULId, data, amount, unitprice, duration, status,transid,isrenewal
    
    --the transaction details need to be stored next
    --3) for the payment a transaction will be done the details will be stored into licensepaymenttrans
    --ULPId, transid,gatewaytransid, status, amount, datetime, comment, 
    
    --further details of the transaction - how the payment is made is stored
    --3) payment details are stored into lcPymtdetails table
    --lpymttransId, paymentTypeId, status, discount, tax, amt
        
    --all the benefits that the user gets as part of license will be stored 
    --4)features and their values will be stored into ULFeatures Table    
    --ULPid, featureid, value,desc
    
    --5)insert an alert to notify admin
    --6)update the owner ship for bt pos if needed
    --7)generate a SO and shipping order for the BT POS
    --8)insert SO and shipping order notification for admin
    --9)update edit history
    --10) insert a notfication for user also
    --11)create dashboard login credentails also
    --12) update the inventory status also
    end
else
begin
		if @insupddelFlag = 'U'
		 begin
	     select 1
		 end
		else		
		  begin
		  if @insupddelFlag = 'D'
	       begin
	       select 1
	       end
          end
end
    
	select * from Users u inner join FleetOwner f on f.UserId = u.Id and UPPER(f.fleetownercode) = UPPER(@FOCode)

END


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUserLicensePayments]    Script Date: 03/03/2018 15:35:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[InsUpdDelUserLicensePayments](
@Id int = -1,
@ULId int,
@TransId varchar(20),
@CreatedOn datetime=null,
@Amount decimal,
@UnitPrice decimal,
@Units decimal,
@StatusId int,
@LicensePymtTransId int,
@IsRenewal int,
@insupddelflag char
)
as
begin

declare @cnt int = 0

--select @cnt = COUNT(*) from [dbo].[UserLicensePayments] where [ULId] = @ULId


	
if @insupddelflag = 'I'
begin


select @CreatedOn = GETDATE()

INSERT INTO [dbo].[UserLicensePayments]
           ([ULId]
           ,[CreatedOn]
           ,[Amount]
           ,[UnitPrice]
           ,[Units]           
           ,[StatusId]
           ,[LicensePymtTransId]           
           ,[IsRenewal]
           ,[TransId]
           )
     VALUES
           (@ULId
           ,@CreatedOn
           ,@Amount
           ,@UnitPrice 
           ,@Units          
           ,@StatusId
           ,@LicensePymtTransId
           ,@IsRenewal
           ,@TransId
            )

end

else
if @insupddelflag = 'U'
begin

UPDATE [dbo].[UserLicensePayments]
   SET [CreatedOn] = @CreatedOn
      ,[Amount] = @Amount
      ,[UnitPrice] = @UnitPrice
      ,[Units] = @Units
      ,[StatusId] =@StatusId
      ,[LicensePymtTransId] = @LicensePymtTransId
      ,[IsRenewal] = @IsRenewal     
 WHERE [ULId] = @ULId and transid = @TransId
 
end
else
if @insupddelflag = 'D'
begin
DELETE FROM [dbo].[UserLicensePayments]
      WHERE [ULId] = @ULId and transid = @TransId
end


--return the fleet owner details
if @insupddelflag = 'I' or @insupddelflag = 'U'
begin

select * from Users u
inner join UserLicense ul on u.Id = ul.UserId
inner join UserLicensePayments ulp on ulp.ULId = ul.Id
where ulp.ULId = @ULId and transid = @TransId

SELECT [Id]
      ,[ULId]
      ,[CreatedOn]
      ,[Amount]
      ,[UnitPrice]
      ,[Units]
      ,[StatusId]
      ,[LicensePymtTransId]
      ,[IsRenewal]
      ,[TransId]
  FROM [dbo].[UserLicensePayments]
  where [ULId] = @ULId and [TransId] = @TransId

end

end


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelUserLicensePymtTransactions]    Script Date: 03/03/2018 15:36:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[InsUpdDelUserLicensePymtTransactions](
@Id int = -1,
@TransId varchar(50),
@GatewayTransId varchar(50),
@Amount decimal(18,0),
@TransDate datetime=null,
@ULPymtId int,
@StatusId int,
@Desc varchar(250),
@PymtTypeId int,
@Tax decimal(18,0) = 0,
@Discount decimal(18,0) = 0,
@insupddelflag char
)
as
begin
declare @LicensePymtTransId int

if @insupddelflag = 'I'
begin
INSERT INTO [dbo].[UserLicensePymtTransactions]
           ([TransId]
           ,[GatewayTransId]
           ,[Amount]
           ,[TransDate]
           ,[ULPymtId]           
           ,[StatusId]
           ,[PymtTypeId]
           ,[Tax]
           ,[Discount]
           ,[Desc]
           )
     VALUES
           (@TransId
           ,@GatewayTransId 
           ,@Amount
           ,@TransDate
           ,@ULPymtId        
           ,@StatusId
           ,@PymtTypeId
           ,@Tax
           ,@Discount
           ,@Desc
            ) 
            SELECT @LicensePymtTransId = SCOPE_IDENTITY()  
            
            update [dbo].[UserLicensePayments]
            set [LicensePymtTransId]  = @LicensePymtTransId 
            where [Id] = @ULPymtId 

end
else
if @insupddelflag = 'U'
begin

UPDATE [dbo].[UserLicensePymtTransactions]
   SET [TransId] = @TransId
      ,[GatewayTransId] = @GatewayTransId 
      ,[Amount] = @Amount
      ,[TransDate] = @TransDate
      ,[ULPymtId] = @ULPymtId
      ,[StatusId] =@StatusId
      ,[Desc] = @Desc
      ,[PymtTypeId]= @PymtTypeId
      ,[Tax] = @Tax
      ,[Discount] = @Discount
    
     
 WHERE [Id] = @Id 
end
else
if @insupddelflag = 'D'
begin
DELETE FROM [dbo].[UserLicensePymtTransactions]
      WHERE [Id] = @Id 
end

end


GO
/****** Object:  StoredProcedure [dbo].[PSGetPaymentdetails]    Script Date: 03/03/2018 15:37:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[PSGetPaymentdetails]
as
begin
SELECT p.[Id]
      ,[PaymentId]
      ,t.Name as [CardCategory] 
      ,[Transactiondate]
      ,[TransactionTime]
      ,tt.Name as [Status]
      ,[GatewayId]
      ,[TransactionType]
  FROM [dbo].[PaymentDetails] p
  
  inner join Types t on t.Id = p.CardCategoryId 
  inner join Types tt on tt.Id = p.StatusId
  
end




GO
/****** Object:  StoredProcedure [dbo].[PSGetPayments]    Script Date: 03/03/2018 15:38:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[PSGetPayments]
as
begin
SELECT p.[Id]
      ,t.Name as [CardCategory] 
      ,[PaymentDate]
      ,[PaymentTime]
      ,tt.Name as [Status]
      ,[Amount]
  FROM [dbo].[Payment] p 
  inner join Types t on t.Id = p.CardCategoryId 
  inner join Types tt on tt.Id = p.StatusId 
  
end






GO
/****** Object:  StoredProcedure [dbo].[PSInsUpdDelPaymentDetails]    Script Date: 03/03/2018 15:39:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[PSInsUpdDelPaymentDetails]
@flag varchar,@Id int=-1,@PaymentId int,@CardCategories varchar(50),@Transactiondate date=null,
@TransactionTime time(7)=null,@Status varchar(50),@GatewayId int,@TransactionType varchar(50)
as
begin
declare @dt date,@t time(7),@catid int=null,@st int=null
SET @dt = GETDATE()
SET @t = GETDATE()


select @catid= tt.Id from Types tt where upper(tt.Name)=UPPER(@CardCategories)
select @st= tt.Id from Types tt where upper(tt.Name)=UPPER(@Status)


if @flag = 'I'
begin
insert into dbo.PaymentDetails
([PaymentId],[CardCategoryId],[Transactiondate],
[TransactionTime],[StatusId],[GatewayId],[TransactionType])
values
(@PaymentId,@catid,@dt,@t,@st,@GatewayId,@TransactionType)
end
if @flag='U'
begin
Update dbo.PaymentDetails
set
[PaymentId]=@PaymentId,
[CardCategoryId] = @CardCategories,
[Transactiondate] = @Transactiondate,
[TransactionTime] = @TransactionTime,
[TransactionType] = @TransactionType,
[StatusId] = @Status,
[GatewayId] = @GatewayId
end
select 1 as status
end
 
     
 
     


GO
/****** Object:  StoredProcedure [dbo].[PSInsUpdPayments]    Script Date: 03/03/2018 15:40:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[PSInsUpdPayments]
@flag varchar,@Id int=-1,@CardCategories varchar(50),
@PaymentDate date=null,@PaymentTime time(7)=null,
@Status varchar(50),@Amount decimal(18,0)
as
begin

declare @dt DATE,@t time(7),@catid int=null,@st int=null
set @dt = GETDATE()
set  @t = GETDATE()

select @catid= tt.Id from Types tt where upper(tt.Name)=UPPER(@CardCategories)
select @st= tt.Id from Types tt where upper(tt.Name)=UPPER(@Status)
if @flag = 'I'
begin
insert into dbo.Payment
([CardCategoryId] ,[PaymentDate],[PaymentTime],[StatusId],[Amount])
values
(@catid,@dt,@t,@st,@Amount)
end
if @flag='U'
begin
Update dbo.Payment   
set [CardCategoryId] = @CardCategories,
[PaymentDate] = @PaymentDate,
[PaymentTime] = @PaymentTime,
[StatusId] = @Status,
[Amount] = @Amount
end

select 1 as status
END


GO
/****** Object:  StoredProcedure [dbo].[ValReferenceId]    Script Date: 03/03/2018 15:40:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ValReferenceId]
@ReferenceId varchar(20)
as
begin
declare @Count int = 0 


	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	select @Count = Id from Registration where UPPER(ltrim(rtrim(ReferenceId))) = UPPER(ltrim(rtrim(@ReferenceId)))
	if @Count is null or @Count = 0
	begin
	  RAISERROR ('Enter Valid Reference code',18,6)
	end
	if @Count is not null
	begin	
	select Id,ReferenceId from Registration  where ReferenceId = @ReferenceId
			
	
    	
	end
	end
	
	
	
GO