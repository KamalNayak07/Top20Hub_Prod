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
     			    field_image :''	
     			};

     			self.fields = [];
     			self.submit = submit;
     			self.reset = reset;
     			self.updateField =updateField;
     			self.searchText = '';
     			self.uploadFile = uploadFile;
     			
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
     				fieldService.createField(field).then(function(success) {
     					alert("Field has been created!");
     				}, function(errResponse) {
     					console.error('Error while creating field');
     				});
     			}

     			function submit() {
     				console.log("field_id " + self.field.field_id);
     				if (self.field.field_id === null) {
     					console.log('Saving New Field', self.field);
     					createField(self.field);
     					uploadFile();
     				} else {
     					console.log("ID is not null");
     				}

     			}
     			
     			function uploadFile(){
     	           var file = self.field.field_image;
     	           console.log('file is ' );
     	           console.dir(file);
     	           var uploadUrl = "http://localhost:8081/top20hub-web/field/fieldImage/";
     	           fileUpload.uploadFileToUrl(file, uploadUrl);
     	        }

     			function updateField(field, id) {
     				fieldService.updateField(field, id).then(self.fetchAllfields,
     						function(errResponse) {
     							console.error('Error while updating field:' + id);
     						});
     			}
     			

     			function reset() {
     				self.field = {
     					field_id : null,
     					field_desc : ''
     				};
     				$scope.myForm.$setPristine(); // reset Form
     			}

     		} ]);   
     
     
  