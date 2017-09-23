'use strict';

app.controller('UserController', [
		'$scope',
		'userService',
		'uiGridConstants',
		'$http',
		function($scope, userService,uiGridConstants,$http) {
//			$scope.user = {
//				user_id : null,
//				user_name : '',
//				email : '',
//				password : '',
//				contact : ''
//			};
//			$scope.users = [];
//
//			$scope.remove = remove;
//			$scope.submit = submit;
			
			

//			fetchAllUsers();
//
//			function fetchAllUsers() {
//				userService.fetchAllUsers().then(function(d) {
//					$scope.gridOptions.data = d;
//				}, function(errResponse) {
//					console.error('Error while fetching Users');
//				});
//			}
			
//			 function createUser(user){
//				 userService.createUser(user)
//			            .then(
//			            function(errResponse){
//			                console.error('Error while creating User');
//			            }
//			        );
//			    }

//			function remove(id) {
//				console.log("id : " + id);
//				userService.deleteUser(id).then(fetchAllUsers,
//						function(errResponse) {
//							console.error('Error while deleting Users');
//						});
//			}

//			 function submit() {
////			        if($scope.user.id===null){
//			            console.log('Saving New User', $scope.user);
//			          createUser($scope.user);
////			        }
//			            //createUser($scope.user);
////			        }else{
////			            updateUser($scope.user, $scope.user.id);
////			            console.log('User updated with id ', $scope.user.id);
////			        }
////			        reset();
//			    }
			 //$scope.gridOptions.data = $scope.users;
			 
			 $scope.highlightFilteredHeader = function( row, rowRenderIndex, col, colRenderIndex ) {
				    if( col.filters[0].term ){
				      return 'header-filtered';
				    } else {
				      return '';
				    }
				  };
				  
				  $scope.gridOptions = {
						    enableFiltering: true,
						    fastWatch: true,
						    onRegisterApi: function(gridApi){
						        $scope.gridApi = gridApi;
						      },
				  columnDefs: [
				                 { field: 'user_id', headerCellClass: $scope.highlightFilteredHeader },
				                 { field: 'user_name',headerCellClass: $scope.highlightFilteredHeader },
				                 {
				                   field: 'email',
				                   filter: {
				                     condition: uiGridConstants.filter.ENDS_WITH,
				                     placeholder: 'ends with'
				                   }, headerCellClass: $scope.highlightFilteredHeader
				                 },
				                 {
				                   field: 'contact',
				                   filter: {
				                     condition: function(searchTerm, cellValue) {
				                       var strippedValue = (cellValue + '').replace(/[^\d]/g, '');
				                       return strippedValue.indexOf(searchTerm) >= 0;
				                     }
				                   }, headerCellClass: $scope.highlightFilteredHeader
				                 },
				                 { field: 'user_details_id', headerCellClass: $scope.highlightFilteredHeader},
				                 { field: 'company', headerCellClass: $scope.highlightFilteredHeader},
				                 { field: 'designation', headerCellClass: $scope.highlightFilteredHeader},
				                 { field: 'f_id', headerCellClass: $scope.highlightFilteredHeader},
				                 { field: 't_id', headerCellClass: $scope.highlightFilteredHeader},
				                 { field: 'i_id', headerCellClass: $scope.highlightFilteredHeader},
				                 { field: 'rating', headerCellClass: $scope.highlightFilteredHeader},
				                 { field: 'image_url', headerCellClass: $scope.highlightFilteredHeader},
				                 { field: 'user_interest_id', headerCellClass: $scope.highlightFilteredHeader},
				                 { field: 'interest_desc', headerCellClass: $scope.highlightFilteredHeader},
				               ]
				             };
				  
				  $http.get('http://localhost:8081/top20hub-web/users/')
				    .success(function(data) {
				    	console.log(data);
				      $scope.gridOptions.data = data;
				    });
						    
			 
				  $scope.toggleFiltering = function(){
					  $scope.gridOptions.enableFiltering = !$scope.gridOptions.enableFiltering;
					  $scope.gridApi.core.notifyDataChange( uiGridConstants.dataChange.COLUMN );
					  };

		} ]);