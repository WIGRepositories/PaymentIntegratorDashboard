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


    $scope.getDepartmentDetails = function () {
        $http.get('/api/Departments/getDepartments').then(function (res, data) {
            $scope.TypeGroups = res.data;


        });
    }

    $scope.saveNew = function (TypeGroups) {

        if (TypeGroups == null) {
            alert('please enter Name');
            return;
        }
        if (TypeGroups.DepartmentName == null) {
            alert('Please Enter FirstName');
            return;
        }

        if (TypeGroups.CourseId == null) {
            alert('Please Enter LastName');
            return;
        }
        if (TypeGroups.HOD == null) {
            alert('Please Enter Address');
            return;
        }
        if (TypeGroups.Description == null) {
            alert('Please Enter Address');
            return;
        }
        if (TypeGroups.CreatedOn == null) {
            alert('Please Enter Address');
            return;
        }
        if (TypeGroups.CreatedBy == null) {
            alert('Please Enter Address');
            return;
        }
       

        var SelNewObjects = {
            DepartmentName:TypeGroups.DepartmentName,
            CourseId:TypeGroups.CourseId,
            HOD:TypeGroups.HOD,
            Description:TypeGroups.Description,
            CreatedOn:TypeGroups.CreatedOn,
            CreatedBy:TypeGroups.CreatedBy,
            flag: 'I',
            Active: 1,



        }

        var req = {
            method: 'POST',
            url: '/api/Departments/DepartmentsDetails',
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