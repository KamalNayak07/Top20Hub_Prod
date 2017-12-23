app.factory('topicService', ['$http','$q',function($http,$q){
	
	var Rest_topic = 'http://localhost:8081/top20hub-web/topic/';
	var Rest_deletetopic = 'http://localhost:8081/top20hub-web/topic/deleteTopic/';
	var Rest_updateTopic = 'http://localhost:8081/top20hub-web/topic/updateTopic/';
	var Rest_getAllTopicsbyFieldId = 'http://localhost:8081/top20hub-web/topic/getAllTopicsbyFieldId/';
		
	var factory = {
			fetchAllTopics: fetchAllTopics,
			createTopic: createTopic,
			updateTopic: updateTopic,
			deleteTopic: deleteTopic,	
			fetchAllTopicsbyFieldId : fetchAllTopicsbyFieldId
	}
	return factory;
	
	
	function fetchAllTopicsbyFieldId(field_id) {
		var deferred = $q.defer();
		$http.get(Rest_getAllTopicsbyFieldId+field_id)
		.then(
				function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while fetching Topics by Field_id');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	 
	
	function fetchAllTopics() {
	        var deferred = $q.defer();
	        $http.get(Rest_topic)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while fetching Topics');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	 
	   function createTopic(topic) {
	        var deferred = $q.defer();
	        $http.post(Rest_topic,topic)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error to create a topic');
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	   
 
	     function updateTopic(topic,id) {
	        var deferred = $q.defer();
	        $http.put(Rest_updateTopic,topic)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            },
	            function(errResponse){
	                console.error('Error while updating Topic:'+id);
	                deferred.reject(errResponse);
	            }
	        );
	        return deferred.promise;
	    }
	     
	     
		function deleteTopic(id) {			
			var deferred = $q.defer();
			$http.delete(Rest_deletetopic+id)
			.then(
				function(response){
					deferred.resolve(response.data);
				},
				function(errResponse){
					console.error('Error while deleting Topic');
	                deferred.reject(errResponse);
				}
			);
			return deferred.promise;
		}
	 
	
}])