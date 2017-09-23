app.factory('userService', ['$http','$q',function($http,$q){
	
	var Rest_User = 'http://localhost:8081/top20hub-web/users/';
	
	var factory = {
			fetchAllUsers: fetchAllUsers,
			createUser: createUser,
			deleteUser: deleteUser
	}
	return factory;
	
	 function fetchAllUsers() {
	        var deferred = $q.defer();
	        $http.get(Rest_User)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while fetching Users');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	 
	   function createUser(user) {
	        var deferred = $q.defer();
	        $http.post(Rest_User, user)
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
	 
	 
	    /* function updateUser(user, id) {
	        var deferred = $q.defer();
	        $http.put(Rest_User+id, user)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while updating User');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }*/
	 
	    function deleteUser(id) {
	        var deferred = $q.defer();
	        $http.delete(Rest_User+id)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while deleting User');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	 
	
	
	
}])