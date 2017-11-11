
<div class="container-fluid" ng-controller="contactController as ctrl">
	<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<span class="lead">Messages received: {{ctrl.contacts.length}}
			</span> <span class="lead" style="float: right">Search User : <input
				type="text" ng-model="ctrl.searchText" /></span>
		</div>
		<div class="container">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>User Name</th>
						<th>Message</th>
						<th>Email</th>
						<th>Phone</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="u in ctrl.contacts | filter : ctrl.searchText">
						<td><span ng-bind="u.id"></span></td>
						<td><span ng-bind="u.name"></span></td>
						<td><span ng-bind="u.message"></span></td>
						<td><span ng-bind="u.email"></span></td>
						<td><span ng-bind="u.phone"></span></td>
						<td>
							<button type="button" ng-click="ctrl.remove(u.id)"
								class="btn btn-danger custom-width">Remove</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>