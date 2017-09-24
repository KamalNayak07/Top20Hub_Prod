'use strict';

app.controller('contactController', [
		'$scope',
		'contactService',
		function($scope, contactService) {

			var self = this;

			self.contact = {
				id : null,
				name : '',
				message : '',
				email : '',
				phone : ''
			};

			self.contact = [];
			self.remove = remove;
			self.submit = submit;
			self.reset = reset;

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
				console.log("id " + self.contact.id);
				if (self.contact.id == null) {
					console.log('Saving New Message', self.contact);
					createMessage(self.contact);
				} else {
					console.log("Id is not null");
				}

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

		} ]);