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
	rel="stylesheet" type="text/css">
<style type="text/css">
.grid {
	width: 1150px;
	height: 400px;
}
.navbar
{
background-color:#304a74;
}

.header-filtered {
	color: blue;
}
</style>

<link rel="stylesheet" href="http://ui-grid.info/release/ui-grid.css"
	type="text/css">

</head>
<body ng-controller="UserController as ctrl">
	<div class="user-table">
	<h2 class="text-center">User Details:</h2>
	<h4> No of User Registered : {{ctrl.users.length}}</h4>
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
	</div>
	<script src="<c:url value='/Resources/js/jquery-3.1.1.min.js'/>"></script>
	<script src="<c:url value='/Resources/js/angular.min.js'/>"></script>
	<script src="<c:url value='/Resources/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/Resources/js/js_files/app.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/service/userService.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/controller/userController.js' />"></script>


</body>
</html>