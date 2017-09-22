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

			fetchAllUsers();

			function fetchAllUsers() {
				userService.fetchAllUsers().then(function(d) {
					self.users = d;
				}, function(errResponse) {
					console.error('Error while fetching Users');
				});
			}
			
			 function createUser(user){
				 userService.createUser(user)
			            .then(
			            function(errResponse){
			                console.error('Error while creating User');
			            }
			        );
			    }

			function remove(id) {
				console.log("id : " + id);
				userService.deleteUser(id).then(fetchAllUsers,
						function(errResponse) {
							console.error('Error while deleting Users');
						});
			}

			 function submit() {
//			        if(self.user.id===null){
			            console.log('Saving New User', self.user);
			          createUser(self.user);
//			        }
			            //createUser(self.user);
//			        }else{
//			            updateUser(self.user, self.user.id);
//			            console.log('User updated with id ', self.user.id);
//			        }
//			        reset();
			    }

		} ]);