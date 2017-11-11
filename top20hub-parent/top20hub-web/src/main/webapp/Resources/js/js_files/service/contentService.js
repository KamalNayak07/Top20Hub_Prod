app.factory('contentService', ['$http','$q',function($http,$q){
	
	var Rest_content = 'http://localhost:8081/top20hub-web/content/';
	var Rest_deletecontent = 'http://localhost:8081/top20hub-web/content/deleteContent/';
	var Rest_updateContent = 'http://localhost:8081/top20hub-web/content/updateContent/';
		
	var factory = {
			fetchAllContents: fetchAllContents,
			createContent: createContent,
			updateContent: updateContent,
			deleteContent: deleteContent			
	}
	return factory;
	
	 function fetchAllContents() {
	        var deferred = $q.defer();
	        $http.get(Rest_content)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while fetching Contents');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	 
	   function createContent(content) {
	        var deferred = $q.defer();
	        $http.post(Rest_content,content)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error to create a content');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	   
 
	     function updateContent(content,id) {
	        var deferred = $q.defer();
	        $http.put(Rest_updateContent,content)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while updating Content:'+id);
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	     
	     
		function deleteContent(id) {			
			var deferred = $q.defer();
			$http.delete(Rest_deletecontent+id)
			.then(
				function(response){
					deferred.resolve(response.data);
				},
				function(errResponse){
					console.error('Error while deleting Content');
	                deferred.reject(errResponse);
				}
			);
			return deferred.promise;
		}
	 
	
}])