var app = angular.module('myApp', ['ngStorage', 'ui.bootstrap', 'angularFileUpload'])

app.directive('file-input', function ($parse) {
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

app.directive("ngFileSelect", function () {

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

var ctrl = app.controller('myCtrl', function ($scope, $http, $localStorage, $uibModal, fileReader) {
    if ($localStorage.uname == null) {
        window.location.href = "login.html";
    }
    $scope.uname = $localStorage.uname;
    $scope.userdetails = $localStorage.userdetails;
    $scope.Roleid = $scope.userdetails[0].roleid;
    $scope.isAdmin = ($scope.Roleid == 1) ? 1 : 0;


    $scope.isSuperUser = ($scope.Roleid == 2) ? 2 : 0;

    $scope.dashboardDS = $localStorage.dashboardDS;


    $scope.getStaffDetails = function () {
        $http.get("/api/StaffDetails/getStaffDetails").then(function (res, data) {
            $scope.TypeGroups = res.data;


        });
    }

    $scope.saveNew = function (TypeGroups) {

        if (TypeGroups == null) {
            alert('please enter Name');
            return;
        }
        if (TypeGroups.FirstName == null) {
            alert('Please Enter FirstName');
            return;
        }

        if (TypeGroups.MiddleName == null) {
            alert('Please Enter LastName');
            return;
        }
        if (TypeGroups.LastName == null) {
            alert('Please Enter Address');
            return;
        }
        if (TypeGroups.GenderId == null) {
            alert('Please Enter Address');
            return;
        }
        if (TypeGroups.MobileNumber == null) {
            alert('Please Enter Address');
            return;
        }
        if (TypeGroups.EmailId == null) {
            alert('Please Enter Address');
            return;
        }
        if (TypeGroups.DOJ == null) {
            alert('Please Enter Address');
            return;
        }
        if (TypeGroups.DepartmentId == null) {
            alert('Please Enter Address');
            return;
        }
        if (TypeGroups.Designation == null) {
            alert('Please Enter Address');
            return;
        }
        if (TypeGroups.StatusId == null) {
            alert('Please Enter Address');
            return;
        }
        //if (TypeGroups.Photo == null) {
        //    alert('Please Enter Address');
        //    return;
        //}
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
            FirstName:TypeGroups.FirstName,
            MiddleName:TypeGroups.MiddleName,
            LastName:TypeGroups.LastName,
            GendeId:TypeGroups.GenderId,
            MobileNumber:TypeGroups.MobileNumber,
            EmailId: TypeGroups.EmailId,
            Address:TypeGroups.Address,
            DOJ:TypeGroups.DOJ,
            DepartmentId:TypeGroups.DepartmentId,
            Designation:TypeGroups.Designation,
            StatusId:TypeGroups.StatusId,
            Photo:$scope.imageSrc,
            Description:TypeGroups.Description,
            CreatedOn:TypeGroups.CreatedOn,
            CreatedBy:TypeGroups.CreatedBy,
            flag: 'I',
            Active: 1,



        }

        var req = {
            method: 'POST',
            url: '/api/StaffDetails/Staff',
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