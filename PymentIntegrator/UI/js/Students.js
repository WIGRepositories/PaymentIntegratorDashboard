// JavaScript source code
var myapp1 = angular.module('myApp', ['ngStorage', 'ui.bootstrap', 'angularFileUpload'])

myapp1.directive('file-input', function ($parse) {
    return {
        restrict: "EA",
        template: "<input type='file' />",
        replace: true,
        link: function (scope, element, attrs) {

            var modelGet = $parse(attrs.fileInput);
            var modelSet = modelGet.assign;
            var onChange = $parse(attrs.onChange);

            var updateModel = function () {
                scope.$apply(function () {
                    modelSet(scope, element[0].files[0]);
                    onChange(scope);
                });
            };

            element.bind('change', updateModel);
        }
    };
});

myapp1.directive("ngFileSelect", function () {

    return {

        link: function ($scope, el) {

            el.on('click', function () {

                this.value = '';

            });

            el.bind("change", function (e) {

                $scope.file = (e.srcElement || e.target).files[0];



                var allowed = ["jpeg", "png", "gif", "jpg"];

                var found = false;

                var img;

                img = new Image();

                allowed.forEach(function (extension) {

                    if ($scope.file.type.match('image/' + extension)) {

                        found = true;

                    }

                });

                if (!found) {

                    alert('file type should be .jpeg, .png, .jpg, .gif');

                    return;

                }

                img.onload = function () {

                    var dimension = $scope.selectedImageOption.split(" ");

                    if (dimension[0] == this.width && dimension[2] == this.height) {

                        allowed.forEach(function (extension) {

                            if ($scope.file.type.match('image/' + extension)) {

                                found = true;

                            }

                        });

                        if (found) {

                            if ($scope.file.size <= 1048576) {

                                $scope.getFile();

                            } else {

                                alert('file size should not be grater then 1 mb.');

                            }

                        } else {

                            alert('file type should be .jpeg, .png, .jpg, .gif');

                        }

                    } else {

                        alert('selected image dimension is not equal to size drop down.');

                    }

                };

                //  img.src = _URL.createObjectURL($scope.file);



            });

        }

    };

});


var mycrtl1 = myapp1.controller('myCtrl', function ($scope, $http, $localStorage, $uibModal, fileReader) {
    //if ($localStorage.uname == null) {
    //    window.location.href = "login.html";
    //}
    $localStorage.uname = "Admin";
    $scope.uname = $localStorage.uname;
    $scope.userdetails = $localStorage.userdetails;
    //$scope.Roleid = $scope.userdetails.roleid;

    $http.get('/api/Students/getAttendanceStudents').then(function (res) {
        $scope.getstudentdetails = res.data;
    });



    $scope.SaveNew = function (subjectgroup) {

        //if (subjectgroup == null) {
        //    alert('Please enter name.');
        //    return;
        //}

        if (subjectgroup.FirstName == null) {
            alert('Please enter name.');
            return;
        }

        var SendSubjectdetails = {
            FirstName: subjectgroup.FirstName,
            LastName: subjectgroup.LastName,
            DOB: subjectgroup.DOB,
            MobileNumber: subjectgroup.MobileNumber,
            EmailId: subjectgroup.EmailId,
            Address: subjectgroup.Address,
            BatchId: subjectgroup.BatchId,
            CourseId: subjectgroup.CourseId,
            SectionId: subjectgroup.SectionId,
            ParentName: subjectgroup.ParentName,
            ParentMobileNo1: subjectgroup.ParentMobileNo1,
            ParentMobileNo2: subjectgroup.ParentMobileNo2,
            CreatedOn: subjectgroup.CreatedOn,
            CreatedBy: subjectgroup.CreatedBy,
            Photo:$scope.imageSrc,
            Description: subjectgroup.Description,
            flag: 'I'
        };

        var req = {
            method: 'POST',
            url: '/api/Students/SaveStudents',
            //headers: {
            //    'Content-Type': undefined
            data: SendSubjectdetails
        }
        $http(req).then(function (response) {

            $scope.showDialog("Saved successfully!");

            $scope.Group = null;

        }, function (errres) {
            var errdata = errres.data;
            var errmssg = "TypeGroup is Not Saved";
            errmssg = (errdata && errdata.ExceptionMessage) ? errdata.ExceptionMessage : errdata.Message;
            $scope.showDialog(errmssg);
        });
       
        $scope.currGroup = null;

    };

    $scope.UploadImg = function () {
        var fileinput = document.getElementById('fileInput');
        fileinput.click();

        //  
        //if ($scope.file == null)
        //{ $scope.file = fileinput.files[0]; }
        //fileReader.readAsDataUrl($scope.file, $scope).then(function (result) { $scope.imageSrc = result; });
        //fileReader.onLoad($scope.file, $scope).then(function (result) { $scope.imageSrc = result; });
    };
    $scope.onFileSelect1 = function () {

        fileReader.readAsDataUrl($scope.file, $scope).then(function (result) {

            $scope.imageSrc = result;
        });
    }
});