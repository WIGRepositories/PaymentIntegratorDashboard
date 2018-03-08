using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PymentIntegrator.Models
{
    public class company
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Active { get; set; }
        public string Address { get; set; }
        public string Desc { get; set; }
        public string ContactNo1 { get; set; }
        public string ContactNo2 { get; set; }
        public string Fax { get; set; }
        public string EmailId { get; set; }
        public string Title { get; set; }
        public string Caption { get; set; }
        public string Country { get; set; }
        public string ZipCode { get; set; }
        public string State { get; set; }
        public int StaffSize { get; set; }
        public int FleetSize { get; set; }
        public string ShippingAddress { get; set; }
        public string Logo { get; set; }
        public string flag { get; set; } 
    }


    public class Customers
    {
        public int Id { get; set; }
        public string FirstName { get; set;}
        public string LastName { get; set; }
        public string MobileNumber { get; set; }
        public string Telephone { get; set; }
        public string EmailId { get; set; }
        public string ReferenceId { get; set; }
        public int AoiId { get; set; }
        public string Address { get; set; }
        public string Fax { get; set; }
        public int CountryId { get; set; }
        public string State { get; set; }
        public string ZipCode { get; set; }
        public DateTime EntryDate { get; set; }
        public string Description { get; set; }
        public string flag { get; set; }
    }


    public class Users
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string MiddleName { get; set; }
        public string EmpNo { get; set; }
        public string EmailId { get; set; }
        public int RoleId { get; set; }
        public int CompanyId { get; set; }
        public int Active { get; set; }
        public int GenderId { get; set; }
        public int ManagerId { get; set; }
        public int CountryId { get; set; }
        public int StateId { get; set; }
        public string ZipCode { get; set; } 
        public string ContactNo1 { get; set; }
        public string ContactNo2 { get; set; }
        public string Address { get; set; }
        public string AltAddress { get; set; }
        public string photo { get; set; }
        public string flag { get; set; }
    }

    public class UserRoles
    {
        public int Id { set; get; }
        public int UserId { set; get; }
        public int CompanyId { set; get; }
        public int RoleId { set; get; }
        public string flag { set; get; }
        //public string Passkey { set; get; }

        
    }
    public class LicenseDetails
    {
        public int Id { get; set; }
        public int LicenseTypeId { get; set; }
        public int LicenseCatId { get; set; }
        public int FeatureTypeId { get; set; }
        public string FeatureName { get; set; }
        public String FeatureLabel { get; set; }
        public String LicenseCode { get; set; }
        public String LicenseName { get; set; }
        public String FeatureValue { get; set; }
        public String LabelClass { get; set; }
        public int Active { get; set; }
        public DateTime? fromDate { get; set; }
        public DateTime? toDate { get; set; }
        public string insupddelflag { get; set; }
        public int LicenseTypeGroupId { get; set; }
    }

    public class LicenseTypes
    {
        public int Id { set; get; }
        public string LicenseType { set; get; }
        public string LicenseCode { set; get; }
        public int LicenseCategoryId { set; get; }
        public int Active { set; get; }
        public string Desc { set; get; }
        public string LicenseCategory { set; get; }
        public DateTime? fromDate { get; set; }
        public DateTime? toDate { get; set; }
        public int LicenseId { get; set; }
        public int LicensePricingId { get; set; }
        public String RenewalFreqType { get; set; }
        public int RenewalFreqTypeId { get; set; }
        public int RenewalFreqUnit { get; set; }
        public string RenewalFreq { get; set; }
        public decimal UnitPrice { get; set; }
        public DateTime? Pfromdate { get; set; }
        public DateTime? Ptodate { get; set; }

        public int PActive { get; set; }
        public string insupddelflag { get; set; }

        //license pos      
        public int LPOSId { get; set; }
        public int BTPOSTypeId { get; set; }
        public int NoOfUnits { get; set; }
        public string POSType { get; set; }
        public String POSLabel { get; set; }
        public String POSLabelClass { get; set; }
        public DateTime? POSfromdate { get; set; }
        public DateTime? POStodate { get; set; }
        public int POSActive { get; set; }

        public List<LicenseDetails> licenseDetails { get; set; }
    }

    public class LicensePayments
    {
        public DateTime expiryOn { get; set; }

        public int Id { get; set; }

        public string licenseFor { get; set; }

        public int licenseId { get; set; }

        public string licenseType { get; set; }

        public DateTime paidon { get; set; }

        public DateTime renewedon { get; set; }

        public string transId { get; set; }

    }

    public class LicensePricing
    {
        public int LicenseId { get; set; }
        public String RenewalFreqType { get; set; }
        public int RenewalFreqTypeId { get; set; }
        public int RenewalFreqUnit { get; set; }
        public string RenewalFreq { get; set; }
        public decimal UnitPrice { get; set; }
        public DateTime? fromdate { get; set; }
        public DateTime? todate { get; set; }
        public int Id { get; set; }

        public int categoryid { get; set; }
        public int Active { get; set; }
        public string insupddelflag { get; set; }
    }

    public class Types
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public string Active { get; set; }



        public string TypeGroupId { get; set; }

        public string ListKey { get; set; }

        public string Listvalue { get; set; }
        public string insupddelflag { get; set; }
    }

    public class ConfigData
    {
        public int includeStatus { get; set; }
        public int includeCategories { get; set; }
        public int includeLicenseCategories { get; set; }
        public int includeVehicleGroup { get; set; }
        public int includeGender { get; set; }
        public int includeFrequency { get; set; }
        public int includePricingType { get; set; }
        public int includeTransactionType { get; set; }
        public int includeApplicability { get; set; }
        public int includeFeeCategory { get; set; }
        public int includeTransChargeType { get; set; }
        public int includeVehicleType { get; set; }
        public int includeVehicleModel { get; set; }
        public int includeVehicleMake { get; set; }
        public int includeDocumentType { get; set; }
        public int includePaymentType { get; set; }
        public int includeMiscellaneousTypes { get; set; }
        public int includeCardCategories { get; set; }
        public int includeCardTypes { get; set; }
        public int includeVehicleLayoutType { get; set; }
        public int includeLicenseFeatures { get; set; }
        public int includeCardModels { get; set; }
        public int includeCards { get; set; }
        public int includeTransactions { get; set; }
        public int includeCountry { get; set; }
        public int includeActiveCountry { get; set; }
        public int includeFleetOwner { get; set; }
        public int includeUserType { get; set; }
        public int includeAuthType { get; set; }
        public int includeState { get; set; }

        public int includePackageNames { get; set; }

        public int includePackageTypeName { get; set; }

        public int includeFeatureName { get; set; }
    }

    public class TypeGroups
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public string Active { get; set; }
        public string insupddelflag { get; set; }
    }

   

}


