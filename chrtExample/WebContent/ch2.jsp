<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="angular.min.js"></script>
<script src="Chart.min.js"></script>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></head>
</head>
<body data-ng-app="myApp" data-ng-controller="myCtrl">
<div id="bc" style="width: 400px; height: 300px;">
<canvas id="bar-chart" ></canvas>
</div>
<!-- $scope.getUserDetails() {
	 alert("ok1");
	   $http({
    method : 'GET',
    url : 'http://localhost:8080/AssetMgmt/getUser'
   }).then(function successCallback(response) {
   $scope.users = response.data;
   alert("ok");
   alert($scope.users[0].dataValue);
   alert($scope.users[1].dataValue);
   }, function errorCallback(response) {
    console.log(response.statusText);
   });
 -->   
 <h3>User Registration Form</h3>
   <form data-ng-submit="myFunc()">
         <input type="submit"
            class="btn btn-primary btn-sm" 
            value="Create User" />
 </form>
 <script type="text/javascript">
/* var app = angular.module('myapp', []);
app.controller('myappcontroller', function($scope) {
$scope.users = []
$scope.getUserDetails()=function (){
	alert("ok");
	}
}); */
var app = angular.module("myApp", []);
app.controller("myCtrl", function($scope,$http) {
	
	$scope.myFunc = function () {
        $http({
            method : 'GET',
            url : 'http://localhost:8080/AssetMgmt/getUser'
           }).then(function successCallback(response) {
               alert(response.data.length)
                 var ar=JSON.stringify(response.data);
               var ar1 = JSON.parse(ar);
               var v1=ar1[0].dataValue;
               var v2=ar1[1].dataValue;
               var v3=ar1[2].dataValue;
               var v4=ar1[3].dataValue;
                
               
               new Chart(document.getElementById("bar-chart"), {
           	    type: 'bar',
           	    data: {
           	      labels: ["Africa", "Asia", "Europe", "Latin America"],
           	      datasets: [
           	        {
           	          label: "Population (millions)",
           	          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9"],
           	          data: [v1,v2,v3,v4]
           	        }
           	      ]
           	    },
           	    options: {
           	      legend: { display: true },
           	      title: {
           	        display: true,
           	        text: 'Predicted world population (millions) in 2050'
           	      }
           	    }
           	});
               
               
               
               })
           , function errorCallback(response) {
            console.log(response.statusText);
           };
    }
});
 </script>
</body>
</html>