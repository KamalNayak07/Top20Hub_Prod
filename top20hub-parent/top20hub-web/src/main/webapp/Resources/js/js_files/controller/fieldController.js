  'use strict';

     app.controller('fieldController', [
     		'$scope',
     		'fieldService',
     		'fileUpload',
     		function($scope, fieldService,fileUpload) {

     			var self = this;

     			self.field = {
     				field_id : null,     			
     				field_desc : '',
     			    field_image :'',
     			    field_url : ''	
     			};
     			
     			self.fields = [];
     			self.submit = submit;
     			self.reset = reset;
     			self.updateField =updateField;
     			self.searchText = '';
     			self.uploadFile = uploadFile;
     			self.editField = editField;
     			
     			fetchAllFields();

     			function fetchAllFields() {
     				fieldService.fetchAllFields().then(function(d) {
     					console.log(d);
     					self.fields = d;

     				}, function(errResponse) {
     					console.error('Error while fetching Fields');
     				});
     			}

     			function createField(field) {
     				self.field.field_url= "\\Resources\\img\\field\\"+self.field.field_image.name;
     				console.log(field);     					
     				fieldService.createField(field).then(function(success) {
     					alert("Field has been created!");
     					fetchAllFields();     					
     				}, function(errResponse) {
     					console.error('Error while creating field');
     				});
     			}

     			function submit() {
     				console.log("field_id " + self.field.field_id);
     				if (self.field.field_id === null) {
     					console.log('Saving New Field', self.field.field_id);
     					createField(self.field);
     					uploadFile();
     				} else {     					
     					console.log('Updating Field', self.field.field_id);
     					updateField(self.field,self.field.field_id);
     				}

     			}
     			
     			function uploadFile(){
     	           var file = self.field.field_image;
     	  //       file.name = self.field.field_desc;
     	           console.log('file is ' );
     	           console.dir(file);
     	           var uploadUrl = "http://localhost:8081/top20hub-web/field/fieldImage/";
     	           fileUpload.uploadFileToUrl(file, uploadUrl);
     	        }
     			

     			function editField(field_id){
     		        console.log('field_id to be edited:', field_id);
     		        for(var i = 0; i < self.fields.length; i++){
     		            if(self.fields[i].field_id === field_id) {
     		                self.field = angular.copy(self.fields[i]);
     		                break;
     		            }
     		        }
     		    }
     			
     			function updateField(field, id) {
     				fieldService.updateField(field, id).then(self.fetchAllfields,
     						function(errResponse) {
     							console.error('Error while updating field:' + id);
     						});
     			}
     			

     			function reset() {
     				console.log('resetting');
     				self.field = {
     					field_id : null,
     					field_desc : '',
     					field_image : ''
     				};
     				$scope.myForm.$setPristine(); // reset Form
     			}

     		} ]);   
     
     
  