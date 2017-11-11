'use strict';

app.controller('contactController', [
		'$scope',
		'contactService',
		'$modal',
		'$log',
		function($scope,contactService,$modal,$log) {

			var self = this;

			self.contact = {
				id : null,
				name : '',
				message : '',
				email : '',
				phone : ''
			};

			self.contacts = [];
			self.remove = remove;
			self.submit = submit;
			self.reset = reset;
			self.openReplyModal = openReplyModal;
			
			self.searchText = '';

			fetchAllMessages();

			function fetchAllMessages() {
				contactService.fetchAllMessages().then(function(d) {
					console.log(d);
					self.contacts = d;

				}, function(errResponse) {
					console.error('Error while fetching Messages');
				});
			}

			function fetchAllMessagesById(id) {
				contactService.fetchAllMessagesId().then(function(d) {
					console.log(d);
					self.contacts = d;

				}, function(errResponse) {
					console.error('Error while fetching Messages by Id');
				});
			}
			
			
			function createMessage(contact) {
				contactService.createMessage(contact).then(function(success){
					alert("Your Message has been sent!");
				},
						function(errResponse) {
							console.error('Error while sending message');
						});
			}

			function remove(id) {
				console.log("id : " + id);
				contactService.deleteMessage(id).then(fetchAllMessages,
						function(errResponse) {
							console.error('Error while deleting a message!');
						});
			}

			function submit() {
					console.log('Saving New Message', self.contact);
					createMessage(self.contact);

			}
			function reset() {
				self.contact = {
						id : null,
						name : '',
						message : '',
						email : '',
						phone : ''
				};
				$scope.myForm.$setPristine(); //reset Form
			}
			
			function openReplyModal(name, email){
				console.log("Inside openReplyMethod - Name: "+name+" email: "+email)
				
				var modalInstance = $modal.open({
				      templateUrl: 'admin/replyContact',
				      controller: 'replyController',
				      resolve: {
				        name : function() {
				          return name;
				        },
				        email : function() {
					          return email;
					        }
				
				      }
				    });
				
				
			}
			
			

		} ]);