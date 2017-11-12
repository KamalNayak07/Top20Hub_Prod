  'use strict';

     app.controller('contentController', [
     		'$scope',
     		'contentService',
     		'fileUpload',
     		'topicService',
     		function($scope,contentService,fileUpload,topicService) {

     			var self = this;

     			self.content = {
     				content_id : null,     			
     				title : '',
     			    description :'',
     			    content_url : '',
     			    links : '',
     			    content_image :'',
     			    contentMediaId : {
     		            image_url : "wwwimger",
     		            video_url : "wwwvideo"
     		        },
     			    topic: {
     					topic_id : null,     			
         				subject : ''	
         			},	
     				user:
     				{
     					user_id : 18
     				}
     			};
     			
     			self.contents = [];
     			self.topics = [];
     			self.submit = submit;
     			self.reset = reset;
     			self.updateContent =updateContent;
     			self.searchText = '';
     			self.uploadFile = uploadFile;
     			self.editContent = editContent;
     			self.remove= remove;
     			
     			fetchAllTopics();
     			fetchAllContents();

     			function fetchAllTopics(){
 				topicService.fetchAllTopics().then(function(d) {
 					self.topics = d;

 				}, function(errResponse) {
 					console.error('Error while fetching topics');
 				});
 			}
     			
     			function fetchAllContents() {
     				contentService.fetchAllContents().then(function(d) {
     					self.contents = d;

     				}, function(errResponse) {
     					console.error('Error while fetching contents');
     				});
     			}

     			function createContent(content) {
     				console.log(content);     					
     				contentService.createContent(content).then(function(success) {
     					alert("content has been created!");
     					fetchAllContents();     					
     				}, function(errResponse) {
     					console.error('Error while creating content');
     				});
     			}

     			function submit() {
     				console.log("content_id " + self.content.content_id);
     				console.log("topic_id " + self.content.topic.topic_id);
     		
     				if (self.content.content_id === null) {
     					console.log('Saving New Content', self.content.content_id);
     					self.content.content_url= "\\Resources\\img\\content\\"+self.content.content_image.name;         				
     					createContent(self.content);
     					uploadFile();
     				} else {     					
     					console.log('Updating Content', self.content.content_id);
     					updateContent(self.content,self.content.content_id);
     				}

     			}
     			
     			function uploadFile(){
     	           var file = self.content.content_image;
     	           console.log('file is ' );
     	           console.dir(file);
     	           var uploadUrl = "http://localhost:8081/top20hub-web/content/contentImage/";
     	           fileUpload.uploadFileToUrl(file, uploadUrl);
     	        }
     			

     			function editContent(content_id){
     		        console.log('content_id to be edited:', content_id);
     		        for(var i = 0; i < self.contents.length; i++){
     		            if(self.contents[i].content_id === content_id) {
     		                self.content = angular.copy(self.contents[i]);
     		                break;
     		            }
     		        }
     		    }
     			
     			function updateContent(content, id) {
     				contentService.updateContent(content, id).then(
     						function(success){
     							fetchAllContents();  
     						},
     						function(errResponse) {
     							console.error('Error while updating content:' + id);
     						});
     			}
     			

    			function remove(id) {
    				console.log("content_id : " + id);
    				contentService.deleteContent(id).then(
    						function(success){
    						   fetchAllContents();  
    						},
    						function(errResponse) {
    							console.error('Error while deleting contents');
    						});
    			}

    			    			
     			function reset() {
     				console.log('resetting');
     				self.content = {
     					content_id : null,
     					content_desc : '',
     					content_image : ''
     				};
     				$scope.myForm.$setPristine(); // reset Form
     			}

     		} ]);   
     
     
  