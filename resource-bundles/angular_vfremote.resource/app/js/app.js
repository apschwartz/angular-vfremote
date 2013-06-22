'use strict';


var myModule = angular.module('angvfr', ['angvfr.controllers',
										 'angvfr.directives',
										 'angvfr.filters',
										 'angvfr.services']);

// Declare app level module which depends on filters, and services
myModule.
  config(['$routeProvider', function($routeProvider) {
    $routeProvider
    	.when('/',      {templateUrl: 'apex/angular_vfremote_home'})
    	.when('/view1', {templateUrl: 'apex/angular_vfremote_partial1', 
    					 controller: 'MyCtrl1'})
    	.when('/view2', {templateUrl: 'apex/angular_vfremote_partial2', 
    					 controller: 'MyCtrl2'})
    	.otherwise({redirectTo: '/'});
  }]);



