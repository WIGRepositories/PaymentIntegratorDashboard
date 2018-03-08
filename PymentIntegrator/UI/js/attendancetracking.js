// JavaScript source code
var myapp1 = angular.module('attendancegetpost', ['ngStorage', 'ui.bootstrap'])
var mycrtl1 = myapp1.controller('attendanceCtrl', function ($scope, $http, $localStorage, $uibModal) {
    //if ($localStorage.uname == null) {
    //    window.location.href = "login.html";
    //}
    $localStorage.uname = "Admin";
    $scope.uname = $localStorage.uname;
    $scope.userdetails = $localStorage.userdetails;
    //$scope.Roleid = $scope.userdetails.roleid;

    $http.get('/api/Attendancetrackingdetails/getAttendanceTracking').then(function (res) {
        $scope.getAttendanceTracking = res.data;
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
               
            id:-1,
            EnteredByid: attendancedetails.enteredbyid,
            ApprovedById: attendancedetails.approvedbyid,
            ApprovedOn: attendancedetails.approvedon,
            refid: attendancedetails.refid,
            Description: attendancedetails.description,
            flag: 'I'
 
        };

        var req = {
            method: 'POST',
            url: '/api/Attendancetrackingdetails/Addattendance',
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