<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html ng-app="top20hubApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact Us Page</title>

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

	<H1>&nbsp&nbsp&nbspWelcome to Contact Us Page</H1>
	<div class="panel-body" ng-controller="contactController as ctrl">
		<form id=contactUsform method="post" ng-submit="ctrl.submit()">
			<input type="hidden" class="form-control" name="user id"
							ng-model="ctrl.contact.id" placeholder="First Name">

			<div class="form-group">
				<label for="Username" class="col-md-3 control-label">Name</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="name"
						ng-model="ctrl.contact.name" placeholder="Name">
				</div>
			</div>

			<div class="form-group">
				<label for="Message" class="col-md-3 control-label">Message</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="message"
						ng-model="ctrl.contact.message" placeholder="Message">
				</div>
			</div>

			<div class="form-group">
				<label for="email" class="col-md-3 control-label">Email</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="email"
						ng-model="ctrl.contact.email" placeholder="email">
				</div>
			</div>

			<div class="form-group">
				<label for="phone" class="col-md-3 control-label">Phone</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="phone"
						ng-model="ctrl.contact.phone" placeholder="Phone">
				</div>
			</div>
		
			<div class="form-group">
				<!-- Button -->
				<div class="col-md-offset-1 col-md-9">
					<button id="btn-signup" type="submit" class="btn btn-primary ">
						<i class="icon-hand-right"></i> &nbsp Send
					</button>

					<button id="btn-signup" type="reset"
						class="btn btn-info pull-right">
						<i class="icon-hand-left"></i> &nbsp Reset
					</button>
				</div>
			</div>

		</form>
	</div>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular-route.js"></script>
    <script src="//angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.12.1.min.js"></script>
	<script src="<c:url value='/Resources/js/js_files/app.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/service/contactService.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/controller/contactController.js' />"></script>
		

</body>
</html>