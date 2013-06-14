'use strict';

/* Controllers */

var myModule = angular.module('angvfr.controllers', []);

myModule
  .controller('MyCtrl1', ['$scope', 'myFactory', function($scope, myFactory) {
//  	$scope.answer = myFactory($scope.query);

  	$scope.askSFDC = function(input){$scope.sfdcResult = myFactory(input);};
  }])

  .controller('MyCtrl2', [function() {

  }]);
