// JavaScript source code
var myapp1 = angular.module('subjectgetpost', ['ngStorage', 'ui.bootstrap'])
var mycrtl1 = myapp1.controller('subjectCtrl', function ($scope, $http, $localStorage, $uibModal) {
    //if ($localStorage.uname == null) {
    //    window.location.href = "login.html";
    //}
    $localStorage.uname = "Admin";
    $scope.uname = $localStorage.uname;
    $scope.userdetails = $localStorage.userdetails;
    //$scope.Roleid = $scope.userdetails.roleid;

        $http.get('/api/Subject/getSubjectDetails').then(function (res) {
            $scope.getsubjectdetails = res.data;
        });


    /* To get data below method*/
    $scope.SaveNew = function (subjectgroup) {
      
        if (subjectgroup == null) {
            alert('Please enter name.');
            return;
        }

        if (subjectgroup.subjectname == null) {
            alert('Please enter Subject name.');
            return;
        }

        var SendSubjectdetails = {
            Name: subjectgroup.subjectname,
			DepartmentId: subjectgroup.departmentid,
            CreatedBy: subjectgroup.createdby,
            UpdatedOn: subjectgroup.updatedon,
            UpdatedBy: subjectgroup.updatedby,
            DESCRIPTION: subjectgroup.description,
            flag:'I'
        };

        var req = {
            method: 'POST',
            url: '/api/Subject/AddSubject',
            //headers: {
            //    'Content-Type': undefined
            data: SendSubjectdetails
        }
        $http(req).then(function (response) {

            $scope.showDialog("Saved successfully!");

            $scope.Group = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "Subject is Not Saved";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog(errmssg);
        });
        //$scope.SubjectDetails();
        //$scope.currGroup = null;

    };

    /* To update data below method*/
    $scope.saveNew = function (updatesubject) {

        if (updatesubject == null) {
            alert('Please enter name.');
            return;
        }

        if (updatesubject.Name == null) {
            alert('Please enter name.');
            return;
        }

        var SelTypeGroup = {
            Name: updatesubject.Name,
            DepartmentId: updatesubject.departmentid,
            UpdatedOn: updatesubject.updatedon,
            UpdatedBy: updatesubject.updatedby,
            DESCRIPTION: updatesubject.description,
            flag: 'U'
        };

        var req = {
            method: 'POST',
            url: '/api/typegroups/savetypegroups',
            //headers: {
            //    'Content-Type': undefined
            data: SelTypeGroup
        }
        $http(req).then(function (response) {
            $scope.Group = null;

            $scope.showDialog("Saved successfully!");



        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "Your details are incorrect";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog(errmssg);
        });
        $scope.currGroup = null;
    };


});