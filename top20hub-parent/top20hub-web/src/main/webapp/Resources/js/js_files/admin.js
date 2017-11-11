'use strict';

/* App Module */
var adminApp = angular.module('adminApp', [ 'ngRoute' ]);

adminApp.config([ '$routeProvider',

function($routeProvider) {

	// Define routes 
	$routeProvider.when('/users', {
		templateUrl : '/user_details.jsp',
		controller : userController
	}).

	otherwise({
		redirectTo : 'homepage'
	});

} ]);
