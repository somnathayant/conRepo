<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="angular.min.js"></script>
<script src="Chart.min.js"></script>

<script src="chartjs-plugin-datalabels.min.js"></script>

<script src="app.js"></script>
<script src="controller.js"></script>
<script src="service.js"></script>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></head>



<body data-ng-app="myapp" data-ng-controller="myappcontroller">

 
 <div id="bc" style="width: 400px; height: 300px;">
<canvas id="mixed-chart" ></canvas>

</div>

<div id="bc" style="width: 400px; height: 300px;">
<canvas id="compro-chart" ></canvas>

</div>
<button onclick="mixedChart1()">click</button>
<script type="text/javascript">
var app = angular.module('myapp', []);

app.controller('myappcontroller', function($scope, $http) {
$scope.users = []
	
function mixedChart1(){
	
	var a1 = [10, 30, 40, 50];
	var tagId='mixed-chart';
	mixedChart(a1,tagId);
}
function mixedChart(a1,tagId) {
	
	new Chart(document.getElementById(tagId), {
		  type: 'bar',
		  data: {
		    datasets: [{
		          label: 'Bar Dataset',
		          data: [10, 20, 30, 40],
		          backgroundColor:"blue",
		          datalabels: {
		              // display labels for this specific dataset
		              display: true,
		              align: 'center',
					  anchor: 'center',
					  color: 'white'
		            }
		        }, {
		          label: 'Line1 Dataset',
		          data: [50, 50, 50, 50],

		          // Changes this dataset to become a line
		          type: 'line',
		          borderColor:"red",
		         
		        },{
		        	
		        	label: 'Line2 Dataset',
			          //data: [10, 30, 40, 50],
						data:a1,
			          // Changes this dataset to become a line
			          type: 'line',
			          borderColor:"black",
			          datalabels: {
			              // display labels for this specific dataset
			              display: true,
			              align: 'end',
						  anchor: 'end',
						  color: 'black'
			            }
			          
		        }
		        
		        ],
		       	  
		    labels: ['January', 'February', 'March', 'April']
		  },
		  options: {
			  plugins: {
					datalabels: {
						display: false,
						
						font: {
							weight: 'bold'
						}
						
					}
				     },  
			  title: {
			      display: true,
			      text: 'production Downtime in 2017-2018'
			    },
			    scales: {
			        yAxes: [{
			          scaleLabel: {
			            display: true,
			            labelString: 'probability'
			          }
			        }],
			        xAxes: [{
				          scaleLabel: {
				            display: true,
				            labelString: 'ProductionDown Time   ,  Target ,  CumulativeDownTime       '
				          }
				        }]
			      }    
		  
			  }
		});

  
});
}
  </script>


<script type="text/javascript">


function mixedChart1(){
	
	var a1 = [10, 30, 40, 50];
	var tagId='mixed-chart';
	mixedChart(a1,tagId);
}
function mixedChart(a1,tagId) {
	
	new Chart(document.getElementById(tagId), {
		  type: 'bar',
		  data: {
		    datasets: [{
		          label: 'Bar Dataset',
		          data: [10, 20, 30, 40],
		          backgroundColor:"blue",
		          datalabels: {
		              // display labels for this specific dataset
		              display: true,
		              align: 'center',
					  anchor: 'center',
					  color: 'white'
		            }
		        }, {
		          label: 'Line1 Dataset',
		          data: [50, 50, 50, 50],

		          // Changes this dataset to become a line
		          type: 'line',
		          borderColor:"red",
		         
		        },{
		        	
		        	label: 'Line2 Dataset',
			          //data: [10, 30, 40, 50],
						data:a1,
			          // Changes this dataset to become a line
			          type: 'line',
			          borderColor:"black",
			          datalabels: {
			              // display labels for this specific dataset
			              display: true,
			              align: 'end',
						  anchor: 'end',
						  color: 'black'
			            }
			          
		        }
		        
		        ],
		       	  
		    labels: ['January', 'February', 'March', 'April']
		  },
		  options: {
			  plugins: {
					datalabels: {
						display: false,
						
						font: {
							weight: 'bold'
						}
						
					}
				     },  
			  title: {
			      display: true,
			      text: 'production Downtime in 2017-2018'
			    },
			    scales: {
			        yAxes: [{
			          scaleLabel: {
			            display: true,
			            labelString: 'probability'
			          }
			        }],
			        xAxes: [{
				          scaleLabel: {
				            display: true,
				            labelString: 'ProductionDown Time   ,  Target ,  CumulativeDownTime       '
				          }
				        }]
			      }    
		  
			  }
		});

	
	
    
}

</script>
</body>
</html>