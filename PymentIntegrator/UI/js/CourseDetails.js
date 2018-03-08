// JavaScript source code
var myapp1 = angular.module('coursegetpost', ['ngStorage', 'ui.bootstrap'])
var mycrtl1 = myapp1.controller('courseCtrl', function ($scope, $http, $localStorage, $uibModal) {
    //if ($localStorage.uname == null) {
    //    window.location.href = "login.html";
    //}
    $localStorage.uname = "Admin";
    $scope.uname = $localStorage.uname;
    $scope.userdetails = $localStorage.userdetails;
    //$scope.Roleid = $scope.userdetails.roleid;

    $http.get('/api/Course/getCourseDetails').then(function (res) {
        $scope.getcoursedetails = res.data;
    });



    $scope.SaveNew = function (insertsubject) {

        if (insertsubject.coursename == null) {
            alert('Please enter Course Name.');
            return;
        }

        if (insertsubject.createdon == null) {
            alert('Please Enter Created Name.');
            return;
        }
        
        var Sendcoursedetails = {
            Name: insertsubject.coursename,
            CreaedOn: insertsubject.createdon,
            CreatedBy: insertsubject.createdby,
            UpdatedOn: insertsubject.updatedon,
            UpdatedBy: insertsubject.updatedby,
            flag: 'I'
        };

        var req = {
            method: 'POST',
            url: '/api/Course/AddCourse',
            //headers: {
            //    'Content-Type': undefined
            data: Sendcoursedetails
        }
        $http(req).then(function (response) {
           

            alert("Saved successfully!");

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "TypeGroup is Not Saved";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            alert(errmssg);
        });
     };

});