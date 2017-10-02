app.factory('contactService', ['$http','$q',function($http,$q){
	
	var Rest_ContactUs = 'http://localhost:8081/top20hub-web/contactUs/';
	var Rest_ContactUs_CreateMsg = 'http://localhost:8081/top20hub-web/contactUs/';
	var Rest_ContactUs_DeleteMsg = 'http://localhost:8081/top20hub-web/contactUs/deleteMessage/';
	
	var factory = {
			fetchAllMessages: fetchAllMessages,
			fetchAllMessagesById: fetchAllMessagesById,
			createMessage: createMessage,
			deleteMessage: deleteMessage
	}
	return factory;
	
	 function fetchAllMessages() {
	        var deferred = $q.defer();
	        $http.get(Rest_ContactUs)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while fetching messages');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	 
	 function fetchAllMessagesById(id) {
	        var deferred = $q.defer();
	        $http.get(Rest_ContactUs+id)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while fetching messages by user Id');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	 
	   function createMessage(contact) {
	        var deferred = $q.defer();
	        $http.post(Rest_ContactUs_CreateMsg,contact)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error to create a message here');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	 	 
	    function deleteMessage(id) {
	        var deferred = $q.defer();
	        $http.delete(Rest_ContactUs_DeleteMsg+id)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while deleting Message');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	 
	
	
	
}])