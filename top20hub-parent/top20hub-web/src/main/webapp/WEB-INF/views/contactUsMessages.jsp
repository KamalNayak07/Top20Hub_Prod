<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="top20hubApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact Us Messages</title>
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
<body ng-controller="contactController as ctrl">
	<div class="contact-table">
	<h2 class="text-center">Contact Us - Messages</h2>
	<h4> &nbsp&nbsp Messages received: {{ctrl.contacts.length}}</h4>
	<h4>Search User : <input type="text" ng-model = "ctrl.searchText"/></h4>
		<div class="panel-body">
			<table
				class="table table-bordered bordered table-striped table-condensed datatable"
				ui-jq="dataTable" ui-options="dataTableOpt">
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
	<script src="<c:url value='/Resources/js/jquery-3.1.1.min.js'/>"></script>
	<script src="<c:url value='/Resources/js/angular.min.js'/>"></script>
	<script src="<c:url value='/Resources/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/Resources/js/js_files/app.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/service/contactService.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/controller/contactController.js' />"></script>


</body>
</html>