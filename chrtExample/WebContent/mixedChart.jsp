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

<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></head>
</head>


<body data-ng-app="myapp" data-ng-controller="myappcontroller">

<div id="lc" style="width: 400px; height: 300px;">
<canvas id="line-chart"  ></canvas>
</div>
<div id="pc" style="width: 400px; height: 300px;">
<canvas id="pie-chart" ></canvas>
</div>

 <div id="bc" style="width: 400px; height: 300px;">
<canvas id="bar-chart" ></canvas>
</div>
 
 <div id="bc" style="width: 400px; height: 300px;">
<canvas id="mixed-chart" ></canvas>

</div>

<div id="bc" style="width: 400px; height: 300px;">
<canvas id="compro-chart" ></canvas>

</div>
<button onclick="mixedChart()">click</button>
<script type="text/javascript">
var app = angular.module('myapp', []);

app.controller('myappcontroller', function($scope, $http) {
$scope.users = []

   new Chart(document.getElementById("bar-chart"), {
	    type: 'bar',
	    data: {
	      labels: ["Africa", "Asia", "Europe", "Latin America", "North America"],
	      datasets: [
	        {
	          label: "Population (millions)",
	          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
	          data: [2478,5267,734,784,433]
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
});
  
  </script>


<script type="text/javascript">
var a1 = [10, 30, 40, 50];
var tagId='mixed-chart';
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








new Chart(document.getElementById("compro-chart"), {
	  type: 'bar',
	  data: {
	    datasets: [{
	          label: 'Bar Dataset',
	          data: [10, 20, 30, 40],
	          backgroundColor:"blue"
	        }, {
	          label: 'Line1 Dataset',
	          data: [50, 50, 50, 50],

	          // Changes this dataset to become a line
	          type: 'line',
	          borderColor:"red"
	        }
	        ],
	    labels: ['January', 'February', 'March', 'April']
	  },
	  options: {
		    title: {
		      display: true,
		      text: 'production Downtime in 2017-2018'
		    }
		  }
	});







new Chart(document.getElementById("line-chart"), {
	  type: 'line',
	  data: {
	    labels: [1500,1600,1700,1750,1800,1850,1900,1950,1999,2050],
	    datasets: [{ 
	        data: [86,114,106,106,107,111,133,221,783,2478],
	        label: "Africa",
	        borderColor: "#3e95cd",
	        fill: true
	      }, { 
	        data: [282,350,411,502,635,809,947,1402,3700,5267],
	        label: "Asia",
	        borderColor: "#8e5ea2",
	        fill: true
	      }, { 
	        data: [168,170,178,190,203,276,408,547,675,734],
	        label: "Europe",
	        borderColor: "#3cba9f",
	        fill: true
	      }, { 
	        data: [40,20,10,16,24,38,74,167,508,784],
	        label: "Latin America",
	        borderColor: "#e8c3b9",
	        fill: true
	      }, { 
	        data: [6,3,2,2,7,26,82,172,312,433],
	        label: "North America",
	        borderColor: "#c45850",
	        fill: true
	      }
	    ]
	  },
	  options: {
	    title: {
	      display: true,
	      text: 'World population per region (in millions)'
	    }
	  }
	});

new Chart(document.getElementById("pie-chart"), {
    type: 'pie',
    data: {
      labels: ["Africa", "Asia", "Europe", "Latin America", "North America"],
      datasets: [{
        label: "Population (millions)",
        backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
        data: [2478,5267,734,784,433]
      }]
    },
    options: {
      title: {
        display: true,
        text: 'Predicted world population (millions) in 2050'
      }
    }
}); 
</script>
</body>
</html>