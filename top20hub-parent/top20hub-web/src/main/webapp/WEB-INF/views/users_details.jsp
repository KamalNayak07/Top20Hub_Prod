<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="top20hubApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>No of users</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
.grid {
	width: 1150px;
	height: 400px;
}

.header-filtered {
	color: blue;
}
</style>

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular-touch.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular-animate.js"></script>
<script src="http://ui-grid.info/docs/grunt-scripts/csv.js"></script>
<script src="http://ui-grid.info/docs/grunt-scripts/pdfmake.js"></script>
<script src="http://ui-grid.info/docs/grunt-scripts/vfs_fonts.js"></script>
<script src="http://ui-grid.info/release/ui-grid.js"></script>
<link rel="stylesheet" href="http://ui-grid.info/release/ui-grid.css"
	type="text/css">

</head>
<body ng-controller="UserController as ctrl">
	<h1>User Details:</h1>
	

	<button id='toggleFiltering' ng-click="toggleFiltering()"
		class="btn btn-success">Toggle Filtering</button>
	<div id="grid1" ui-grid="gridOptions" class="grid"></div>



	<!-- <div class="user-table">

		<div class="panel-body">
			<table
				class="table table-bordered bordered table-striped table-condensed datatable"
				ui-jq="dataTable" ui-options="dataTableOpt">
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
						<th>Description</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="u in ctrl.users">
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
						<td><span ng-bind="u.userIntrest.interest_desc"></span></td>
						<td>
							<button type="button" ng-click="ctrl.remove(u.user_id)"
								class="btn btn-danger custom-width">Remove</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div> -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script src="<c:url value='/Resources/js/js_files/app.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/service/userService.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/controller/userController.js' />"></script>


</body>
</html>