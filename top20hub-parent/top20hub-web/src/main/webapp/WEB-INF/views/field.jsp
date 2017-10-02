<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html ng-app="top20hubApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Field Page</title>

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet">

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


</head>
<body>

	<H1>&nbsp&nbsp&nbspField Page</H1>
	<div class="panel-body" ng-controller="fieldController as myCtrl">
		<form id=fieldform name="myForm" method="post" ng-submit="myCtrl.submit()" enctype="multipart/form-data">

		 	<div class="form-group">
				<label for="Username" class="col-md-3 control-label">Field Name</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="field_desc"
						ng-model="myCtrl.field.field_desc" placeholder="field name">
				</div>
			</div> 
			
			<div class="form-group">
				<label for="Image" class="col-md-3 control-label">Field Image</label>
				<div class="col-md-7">
					<input type="file" file-model="myCtrl.field.field_image" class="form-control" name="field_image" placeholder="url">
				</div>
			</div>

			<div class="form-group">
				<!-- Button -->	
				<div class="col-md-offset-2 col-md-8">
					<button id="btn-signup" type="submit" class="btn btn-primary pull-right">
						<i class="icon-hand-right"></i> &nbsp Submit
					</button>
					&nbsp
					<button id="btn-signup" type="reset"
						class="btn btn-info pull-right">
						<i class="icon-hand-left"></i> &nbsp Reset
					</button>
				</div>
			</div>

		</form>
	</div>
	<script src="<c:url value='/Resources/js/angular.min.js' />"></script>
	<script src="<c:url value='/Resources/js/js_files/app.js' />"></script>
	<script	src="<c:url value='/Resources/js/js_files/service/fieldService.js' />"></script>
    <script	src="<c:url value='/Resources/js/js_files/controller/fieldController.js' />"></script>
	<script	src="<c:url value='/Resources/js/js_files/directives/fileModel.js' />"></script>
	<script	src="<c:url value='/Resources/js/js_files/service/fileUpload.js' />"></script>	

	 		
</body>
</html>