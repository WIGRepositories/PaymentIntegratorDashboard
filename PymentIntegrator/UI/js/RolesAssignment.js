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


    $scope.getRolesAssignment = function () {
        $http.get("/api/RolesAssignment/getRolesAssignment").then(function (res, data) {
            $scope.TypeGroups = res.data;


        });
    }

    $scope.saveNew = function (TypeGroups) {

        if (TypeGroups == null) {
            alert('please enter Staff Id');
            return;
        }
        if (TypeGroups.StaffId == null) {
            alert('Please Enter Role Id');
            return;
        }

        if (TypeGroups.RoleId == null) {
            alert('Please Enter From Date');
            return;
        }
        if (TypeGroups.FromDate == null) {
            alert('Please Enter To Date');
            return;
        }
        if (TypeGroups.ToDate == null) {
            alert('Please Enter Description');
            return;
        }
        if (TypeGroups.Description == null) {
            alert('Please Enter Created On');
            return;
        }
        if (TypeGroups.Createdon == null) {
            alert('Please Enter Created By');
            return;
        }
        if (TypeGroups.Createdby == null) {
            alert('Please Enter Created By');
            return;
        }


        var SelNewObjects = {
            StaffId:TypeGroups.StaffId,
            RoleId:TypeGroups.RoleId,
            FromDate:TypeGroups.FromDate,
            ToDate:TypeGroups.ToDate,
            Description:TypeGroups.Description,
            CreatedOn:TypeGroups.Createdon,
            CreatedBy:TypeGroups.Createdby,
            flag: 'I',
            Active: 1,



        }

        var req = {
            method: 'POST',
            url: '/api/RolesAssignment/RolesAssignmentDetails',
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

    $scope.setCurrRole = function (grp) {
        $scope.currRole = grp;
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