'use strict';

app.controller('replyController',
		function($scope,$modalInstance, name, email,replyService){

	
	
	$scope.name = name;
	$scope.email = email;
	$scope.replyMessage = null;
	
	console.log('Name : '+$scope.name+" Email : "+$scope.email);
	
	$scope.submit = function(name, email, replyMessage) {
		
		$scope.message= {
				name : name,
				email : email,
				replyMessage : replyMessage
		}
		
		console.log("Messages : Name : "+$scope.message.name+"Email : "+$scope.message.email+" replyMessage : "+$scope.message.replyMessage);
		
		replyService.replyEmail($scope.message);
		
		
	    $modalInstance.close('close');
	  };
	  $scope.cancel = function() {
	    $modalInstance.dismiss('cancel');
	  };
	
	
	
});