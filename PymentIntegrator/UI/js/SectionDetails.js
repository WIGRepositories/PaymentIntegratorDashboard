// JavaScript source code
var myapp1 = angular.module('sectiongetpost', ['ngStorage', 'ui.bootstrap'])
var mycrtl1 = myapp1.controller('sectionCtrl', function ($scope, $http, $localStorage, $uibModal) {
    //if ($localStorage.uname == null) {
    //    window.location.href = "login.html";
    //}
    $localStorage.uname = "Admin";
    $scope.uname = $localStorage.uname;
    $scope.userdetails = $localStorage.userdetails;
    //$scope.Roleid = $scope.userdetails.roleid;

    $http.get('/api/Section/getSectionDetails').then(function (res) {
        $scope.getsectiondetails = res.data;
    });



    $scope.SaveNew = function (sectiondetail) {

        /*if (sectiondetail == null) {
            alert('Please enter name.');
            return;
        }

        if (sectiondetail.subjectname == null) {
            alert('Please enter name.');
            return;
        }  */

        var SendSubjectdetails = {
            Name: sectiondetail.sectionname,
            CreatedOn: sectiondetail.createdon,
            CreatedBy: sectiondetail.createdby,
            UpdatedOn: sectiondetail.updatedon,
            UpdatedBy: sectiondetail.updatedby,
            Description: sectiondetail.description,
            flag: 'I'
        };

        var req = {
            method: 'POST',
            url: '/api/Section/addsection',
            //headers: {
            //    'Content-Type': undefined
            data: SendSubjectdetails
        }
        $http(req).then(function (response) {

            alert("Saved successfully!");

            $scope.Group = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "TypeGroup is Not Saved";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            alert(errmssg);
        });
    };

});