// JavaScript source code
var myapp1 = angular.module('attendanceresultgetpost', ['ngStorage', 'ui.bootstrap'])
var mycrtl1 = myapp1.controller('attendanceresultCtrl', function ($scope, $http, $localStorage, $uibModal) {
    //if ($localStorage.uname == null) {
    //    window.location.href = "login.html";
    //}
    $localStorage.uname = "Admin";
    $scope.uname = $localStorage.uname;
    $scope.userdetails = $localStorage.userdetails;
    //$scope.Roleid = $scope.userdetails.roleid;

    $http.get('/api/AttendanceEntry/getattendanceresults').then(function (res) {
        $scope.getattendanceresult = res.data;
    });



    $scope.SaveNew = function (attendancedetails) {

        //if (attendancedetails == null) {
        //    alert('please enter name.');
        //    return;
        //}

        //if (attendancedetails.subjectname == null) {
        //    alert('please enter name.');
        //    return;
        //}

        var SendSubjectdetails = {

            Id:-1,
            StudentId: attendancedetails.studentid,
            Status: attendancedetails.Status,
            Attendancetrackingid:attendancedetails.Attendancetrackingid,
            Description:attendancedetails.Description,
            flag: 'I'

        };

        var req = {
            method: 'POST',
            url: '/api/AttendanceEntry/addattendanceresult',
            //headers: {
            //    'Content-Type': undefined
            data: SendSubjectdetails
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