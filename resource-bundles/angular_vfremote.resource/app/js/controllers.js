'use strict';

/* Controllers */

var myModule = angular.module('angvfr.controllers', []);

myModule
  .controller('MyCtrl1', ['$scope', 'doubleMe', function($scope, doubleMe) {

  	$scope.sfdcResult = '_____';

  	doubleMe(10).then(function(result) {$scope.example1 = result;})
  	doubleMe('ten').then(function(result) {$scope.example2 = result;})

  	$scope.askSFDC = function(input){
  		doubleMe(input).then(function(result) {$scope.sfdcResult = result;},
  					 		 function(error)  {$scope.sfdcResult = 'ERROR: ' + error.message;}
  							 )
  	};
 

 	
  }])

  .controller('MyCtrl2', [function() {

  }]);
