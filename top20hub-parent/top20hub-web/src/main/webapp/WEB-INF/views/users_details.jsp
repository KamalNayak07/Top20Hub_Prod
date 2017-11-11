	<div class="container-fluid" ng-controller="userController as ctrl">
		<!-- <div class="panel panel-default">

			<div class="panel-heading">
				<span class="lead"> User Details </span>
			</div>
			<br />
			
		</div> -->
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">No of Users : {{ctrl.users.length}} </span>
				<span class="lead" style="float: right">Search User : <input type="text" ng-model = "ctrl.searchText"/></span>
			</div>
				<table class="table table-hover">
					<thead>
						<tr>
						<th>ID</th>
						<th>User Name</th>
						<th>Email</th>
						<th>Contact No</th>
						<th>User Details ID</th>
						<th>Company</th>
						<th>Designation</th>
						<th>Facebook</th>
						<th>Twitter</th>
						<th>Instagram</th>
						<th>Rating</th>
						<th>Image URl</th>
						<th>User Intrest ID</th>
						<!-- <th>Description</th> -->
					</tr>
					</thead>
					<tbody>
						<tr ng-repeat="u in ctrl.users | filter:ctrl.searchText">
						<td><span ng-bind="u.user_id"></span></td>
						<td><span ng-bind="u.user_name"></span></td>
						<td><span ng-bind="u.email"></span></td>
						<td><span ng-bind="u.contact"></span></td>
						<td><span ng-bind="u.userDetails.user_details_id"></span></td>
						<td><span ng-bind="u.userDetails.company"></span></td>
						<td><span ng-bind="u.userDetails.designation"></span></td>
						<td><span ng-bind="u.userDetails.f_id"></span></td>
						<td><span ng-bind="u.userDetails.t_id"></span></td>
						<td><span ng-bind="u.userDetails.i_id"></span></td>
						<td><span ng-bind="u.userDetails.rating"></span></td>
						<td><span ng-bind="u.userDetails.image_url"></span></td>
						<td><span ng-bind="u.userIntrest.user_interest_id"></span></td>
						<!-- <td><span ng-bind="u.userIntrest.interest_desc"></span></td> -->
						<td>
							<button type="button" ng-click="ctrl.remove(u.user_id)"
								class="btn btn-danger custom-width">Remove</button>
						</td>
					</tr>
					</tbody>
				</table>
		</div>
	</div>
