'use strict';

var app = angular.module("top20hubApp", ['ngRoute','ui.bootstrap']);

app.config([ '$routeProvider',

                  function($routeProvider) {

                  	// Define routes 
                  	$routeProvider
                  	.when('/users', {
                  		templateUrl : 'admin/userDetails',
                  		controller : 'userController'
                  	}).
                  	when('/fieldAdmin', {
                  		templateUrl : 'admin/fieldAdminPage',
                  		controller : 'fieldController'
                  	}).
                  	when('/contactUsMessage', {
                  		templateUrl : 'admin/contactUsMessages',
                  		controller : 'contactController'
                  	}).
                  	when('/topicAdmin', {
                  		templateUrl : 'admin/topicAdminPage',
                  		controller : ''
                  	}).
                  	when('/contentAdmin', {
                  		templateUrl : 'admin/contentAdminPage',
                  		controller : ''
                  	}).
                  	otherwise({
                  		redirectTo : 'admin/userDetails'
                  	});

                  } ]);