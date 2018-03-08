var app = angular.module('myApp', ['ngStorage', 'ui.bootstrap'])
var ctrl = app.controller('myCtrl', function ($scope, $http, $localStorage, $uibModal) {
    if ($localStorage.uname == null) {
        window.location.href = "login.html";
    }
    $scope.uname = $localStorage.uname;
    $scope.userdetails = $localStorage.userdetails;
    //$scope.Roleid = $scope.userdetails[0].roleid;
    $scope.isAdmin = ($scope.Roleid == 1) ? 1 : 0;


    $scope.isSuperUser = ($scope.Roleid == 2) ? 2 : 0;

    $scope.dashboardDS = $localStorage.dashboardDS;


    $scope.getRegistrationDetails = function () {
        $http.get("/api/Registration/GetRegistrations").then(function (res, data) {
            $scope.TypeGroups = res.data;


        });
    }

    $scope.save = function (Customers1) {

        if (Customers1 == null) {
            alert('Please enter name.');
            return;
        }

        if (Customers1.CollegeName == null) {
            alert('Please enterCollegeName.');
            return;
        }
        if (Customers1.CollegeRegistarionNumber == "") {
            alert('Please enter Registarion.');
            $scope.GetCustomers();
            return;
        }
        if (Customers1.CollegeAddress == "") {
            alert('Please enter Address.');
            $scope.GetCustomers();
            return;
        }
        if (Customers1.MobileNumber == "") {
            alert('Please enter Mobile Number.');
            $scope.GetCustomers();
            return;
        }
        if (Customers1.EmailId == "") {
            alert('Please enter EmailId.');
            $scope.GetCustomers();
            return;
        }

        var SelCustomer = {
            CollegeName: Customers1.CollegeName,
            CollegeRegistrationNumber: Customers1.CollegeRegistrationNumber,
            CollegeAddress: Customers1.CollegeAddress,
            MobileNumber: Customers1.MobileNumber,
            EmailId: Customers1.EmailId,

            //PTSPOCId: ($scope.poc == null) ? null : $scope.poc.Id,
            //Active: (Customers1.act == null) ? 0 : customer.act,
            Id: Customers1.Id,
            flag: 'U'
        };

        var req = {
            method: 'POST',
            url: '/api/UserRegistration/RegistrationDetails',
            //headers: {
            //    'Content-Type': undefined
            data: SelCustomer
        }
        $http(req).then(function (response) {
            alert("Saved successfully!");
            //$scope.GetCustomers();
            $scope.Customers1 = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog(errmssg);
            //$scope.GetCustomers();
            $scope.Customers1 = null;
        });


    };



    $scope.saveNew = function (TypeGroups) {

        if (TypeGroups == null) {
            alert('please enter Name');
            return;
        }
        if (TypeGroups.Name == null) {
            alert('Please Enter Name');
            return;
        }

        if (TypeGroups.Description == null) {
            alert('Please Enter Description');
            return;
        }
        if (TypeGroups.Address == null) {
            alert('Please Enter Address');
            return;
        }

        var SelNewObjects = {
            CollegeName: TypeGroups.Name,
            CollegeRegistrationNumber: TypeGroups.Description,

            CollegeAddress: TypeGroups.Address,
            MobileNumber: TypeGroups.MobileNUmber,
            EmailId: TypeGroups.EmailId,
            flag: 'I',
            Active: 1,



        }

        var req = {
            method: 'POST',
            url: '/api/UserRegistration/RegistrationDetails',
            data: SelNewObjects
        }
        $http(req).then(function (response) {

            alert("Saved successfully!");

            $scope.Group = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            alert(errmssg);
        });
        $scope.currRole = null;
    };



    $scope.newChildObject = function (NewObject) {

        if (NewObject == null) {
            alert('Please enter name.');
            return;
        }

        if (NewObject.Name == null) {
            alert('Please enter name.');
            return;
        }





        var SelNewObjects = {


            Id: -1,
            Name: NewObject.Name,
            Description: NewObject.Description,
            ParentId: NewObject.ParentId,

            Active: 1,
            insupdflag: 'U'
        };

        var req = {
            method: 'POST',
            url: '/api/Objects/saveObjects',
            data: SelNewObjects
        }

        $http(req).then(function (response) {

            alert("Saved successfully!");

            $scope.Group = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            alert(errmssg);
        });
        $scope.currRole = null;
    };

    $scope.setTypeGroups = function (T) {
        $scope.Customers1 = T;
    };

    $scope.clearCurrRole = function () {
        $scope.currRole = null;

    };
    $scope.showDialog = function (message) {

        var modalInstance = $uibModal.open({
            animation: $scope.animationsEnabled,
            templateUrl: 'myModalContent.html',
            controller: 'ModalInstanceCtrl',
            resolve: {
                mssg: function () {
                    return message;
                }
            }
        });
    }
}

);

app.controller('ModalInstanceCtrl', function ($scope, $uibModalInstance, mssg) {

    $scope.mssg = mssg;
    $scope.ok = function () {
        $uibModalInstance.close('test');
    };

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
});