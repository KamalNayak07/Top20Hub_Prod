<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Field Admin Page</title>
<style>
.field_desc.ng-valid {
	background-color: lightgreen;
}
</style>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
</head>

<body ng-app="top20hubApp" class="ng-cloak">
	<div class="container" ng-controller="fieldController as ctrl">
		<div class="panel panel-default">

			<div class="panel-heading">
				<span class="lead"> Field Admin Page </span>
			</div>
			<br />
			<div class="container">
				<form ng-submit="ctrl.submit()" name="myForm"
					class="form-horizontal" enctype="multipart/form-data">
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="uname">Field
								Name</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.field.field_desc"
									id="field_desc" class="field_desc form-control input-sm"
									placeholder="Field Name" required ng-minlength="3" />
							</div>
						</div>
					</div>


					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="Image">Image</label>
							<div class="col-md-7">
								<input type="file" file-model="ctrl.field.field_image" id="image""
									class="form-control input-sm"
									placeholder="Field image"" />
							</div>
						</div>
					</div>
				
				<div class="container">
					<div class="row">						
						<div class="form-actions floatRight">
							<input type="submit" value="{{!ctrl.field.field_id ? 'Add' : 'Update'}}"
								class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
							<button type="button" ng-click="ctrl.reset()"
								class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset
							</button>
						</div>
						</div>
					</div>
					
		
				</form>
			</div>
		</div>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">List of Fields :{{ctrl.fields.length}} </span>
			</div>
			<div class="container">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Field Id</th>
							<th>Field Name</th>
							<th>Field Image</th>
							<th width="20%"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="u in ctrl.fields | filter : ctrl.searchText">
							<td><span ng-bind="u.field_id"></span></td>
							<td><span ng-bind="u.field_desc"></span></td>
							<td><span ng-bind="u.field_image"></span></td>
							<td>
								<button type="button" ng-click="ctrl.editField(u.field_id)"
									class="btn btn-success custom-width">Edit</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>


	<script src="<c:url value='/Resources/js/jquery-3.1.1.min.js'/>"></script>
	<script src="<c:url value='/Resources/js/angular.min.js'/>"></script>
	<script src="<c:url value='/Resources/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/Resources/js/js_files/app.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/service/fieldService.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/controller/fieldController.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/service/fileUpload.js' />"></script>
		<script	src="<c:url value='/Resources/js/js_files/directives/fileModel.js' />"></script>
		

</body>
</html>