  'use strict';

     app.controller('topicController', [
     		'$scope',
     		'topicService',
     		'fileUpload',
     		'fieldService',
     		function($scope,topicService,fileUpload,fieldService) {

     			var self = this;

     			self.topic = {
     				topic_id : null,     			
     				subject : '',
     			    topic_image :'',
     			    topic_url : '',
     			    status : 0,
     			    field : {
     					field_id : null,     			
         				field_desc : ''	
         			}	
     			};
     			
     			self.topics = [];
     			self.fields = [];
     			self.submit = submit;
     			self.reset = reset;
     			self.updateTopic =updateTopic;
     			self.searchText = '';
     			self.uploadFile = uploadFile;
     			self.editTopic = editTopic;
     			self.remove= remove;
     			
     			fetchAllFields();
     			fetchAllTopics();

     			function fetchAllFields(){
 				fieldService.fetchAllFields().then(function(d) {
 					console.log("field data :"+d);
 					self.fields = d;

 				}, function(errResponse) {
 					console.error('Error while fetching fields');
 				});
 			}
     			
     			function fetchAllTopics() {
     				topicService.fetchAllTopics().then(function(d) {
     					self.topics = d;

     				}, function(errResponse) {
     					console.error('Error while fetching topics');
     				});
     			}

     			function createTopic(topic) {
     				self.topic.topic_url= "\\Resources\\img\\topic\\"+self.topic.topic_image.name;
     				console.log(topic);     					
     				topicService.createTopic(topic).then(function(success) {
     					alert("topic has been created!");
     					fetchAllTopics();     					
     				}, function(errResponse) {
     					console.error('Error while creating topic');
     				});
     			}

     			function submit() {
     				console.log("topic_id " + self.topic.topic_id);
     				console.log("field_id " + self.topic.field.field_id);
     				self.topic.topic_url= "\\Resources\\img\\topic\\"+self.topic.topic_image.name;

     				if (self.topic.topic_id === null) {
     					console.log('Saving New Topic', self.topic.topic_id);
     					createTopic(self.topic);
     					uploadFile();
     				} else {     					
     					console.log('Updating Topic', self.topic.topic_id);
     					updateTopic(self.topic,self.topic.topic_id);
     				}

     			}
     			
     			function uploadFile(){
     	           var file = self.topic.topic_image;
     	           console.log('file is ' );
     	           console.dir(file);
     	           var uploadUrl = "http://localhost:8081/top20hub-web/topic/topicImage/";
     	           fileUpload.uploadFileToUrl(file, uploadUrl);
     	        }
     			

     			function editTopic(topic_id){
     		        console.log('topic_id to be edited:', topic_id);
     		        for(var i = 0; i < self.topics.length; i++){
     		            if(self.topics[i].topic_id === topic_id) {
     		                self.topic = angular.copy(self.topics[i]);
     		                break;
     		            }
     		        }
     		    }
     			
     			function updateTopic(topic, id) {
     				topicService.updateTopic(topic, id).then(
     						function(success){
     							fetchAllTopics();  
     						},
     						function(errResponse) {
     							console.error('Error while updating topic:' + id);
     						});
     			}
     			

    			function remove(id) {
    				console.log("topic_id : " + id);
    				topicService.deleteTopic(id).then(
    						function(success){
    						   fetchAllTopics();  
    						},
    						function(errResponse) {
    							console.error('Error while deleting topics');
    						});
    			}

    			    			
     			function reset() {
     				console.log('resetting');
     				self.topic = {
     					topic_id : null,
     					topic_desc : '',
     					topic_image : ''
     				};
     				$scope.myForm.$setPristine(); // reset Form
     			}

     		} ]);   
     
     
  