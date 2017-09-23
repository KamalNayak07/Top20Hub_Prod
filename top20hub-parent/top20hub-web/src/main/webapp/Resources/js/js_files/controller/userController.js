'use strict';

app.controller('UserController', [
		'$scope',
		'userService',
		function($scope, userService) {

			var self = this;

			self.user = {
				user_id : null,
				user_name : '',
				email : '',
				password : '',
				contact : ''
			};

			self.users = [];
			self.remove = remove;
			self.submit = submit;
			self.reset = reset;

			fetchAllUsers();

			function fetchAllUsers() {
				userService.fetchAllUsers().then(function(d) {
					console.log(d);
					self.users = d;

				}, function(errResponse) {
					console.error('Error while fetching Users');
				});
			}

			function createUser(user) {
				userService.createUser(user).then(function(success){
					alert("Your Account has been created. Please click Sign in to login.!!");
				},
						function(errResponse) {
							console.error('Error while creating User');
						});
			}

			function remove(id) {
				console.log("id : " + id);
				userService.deleteUser(id).then(fetchAllUsers,
						function(errResponse) {
							console.error('Error while deleting Users');
						});
			}

			function submit() {
				console.log("user_id " + self.user.user_id);
				if (self.user.user_id === null) {
					console.log('Saving New User', self.user);
					createUser(self.user);
				} else {
					console.log("ID is not null");
				}

			}
			function reset() {
				self.user = {
					user_id : null,
					user_name : '',
					email : '',
					password : '',
					contact : ''
				};
				$scope.myForm.$setPristine(); //reset Form
			}

		} ]);