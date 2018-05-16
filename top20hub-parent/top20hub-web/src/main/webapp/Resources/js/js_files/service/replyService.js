app.factory('replyService', ['$http','$q',function($http,$q){
	
	
	var Rest_User = '/sendMessage/';
	
	var factory = {
			replyEmail : replyEmail
	}
	return factory;
	
	function replyEmail(message){
		
		console.log(" Email Messsage in service : "+message.name);
		  var deferred = $q.defer();
	        $http.post(Rest_User, message)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error to create User');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
		
	}
}])