app.factory('fieldService', ['$http','$q',function($http,$q){
	
	var Rest_field = 'http://localhost:8081/top20hub-web/field/';
	var Rest_updateField = 'http://localhost:8081/top20hub-web/field/updateField/';
		
	var factory = {
			fetchAllFields: fetchAllFields,
			createField: createField,
			updateField: updateField
	}
	return factory;
	
	 function fetchAllFields() {
	        var deferred = $q.defer();
	        $http.get(Rest_field)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while fetching Fields');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	 
	   function createField(field) {
	        var deferred = $q.defer();
	        $http.post(Rest_field,field)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error to create a field');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	 
	 
	     function updateField(field,id) {
	        var deferred = $q.defer();
	        $http.put(Rest_updateField,field)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while updating Field:'+id);
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	 
	
}])