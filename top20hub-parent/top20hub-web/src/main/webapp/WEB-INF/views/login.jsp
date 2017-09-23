<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html ng-app="top20hubApp">
<head>
<title>Login Page</title>

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
<body onload='document.f.username.focus();'>

	<c:if test="${param.error != null}">

		<div>
			<p class="alert alert-danger" align="center">
				Login Failed..! Please check your <strong>username and
					password</strong> is wrong
			</p>

		</div>

	</c:if>
	<div class="container">
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign In</div>
					<div
						style="float: right; font-size: 80%; position: relative; top: -10px">
						<a href="#">Forgot password?</a>
					</div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>

					<!--  <form id="loginform" class="form-horizontal" role="form"> -->
					<form id="loginform" class="form-horizontal" role="form" name='f'
						action='/top20hub-web/login' method='POST'>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-envelope"></i></span> <input id="login-username"
								type="text" class="form-control" name="username" value=""
								placeholder="username or email">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input id="login-password"
								type="password" class="form-control" name="password"
								placeholder="password">
						</div>



						<div class="input-group">
							<div class="checkbox">
								<label> <input id="login-remember" type="checkbox"
									name="remember" value="1"> Remember me
								</label>
							</div>
						</div>


						<div style="margin-top: 10px" class="form-group">
							<!-- Button -->

							<div class="col-sm-12 controls">
								<input name="submit" type="submit" value="Login"
									class="btn btn-success" />
								<!-- <a id="btn-login" href="#" class="btn btn-success">Login  </a> -->
								<a id="btn-fblogin" href="#" class="btn btn-primary">Login
									with Facebook</a>

							</div>
						</div>


						<div class="form-group">
							<div class="col-md-12 control">
								<div
									style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
									Don't have an account! <a href="#"
										onClick="$('#loginbox').hide();$('#signupbox').show()">
										Sign Up Here </a>
								</div>
							</div>
						</div>
					</form>



				</div>
			</div>
		</div>
		<div id="signupbox" style="display: none; margin-top: 50px"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign Up</div>
					<div
						style="float: right; font-size: 85%; position: relative; top: -10px">
						<a id="signinlink" href="#"
							onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign
							In</a>
					</div>
				</div>
				<div class="panel-body" ng-controller="UserController as ctrl">
					<form id="signupform" class="form-horizontal" role="form" name="myForm"
						ng-submit="ctrl.submit()">

						<div id="signupalert" style="display: none"
							class="alert alert-danger">
							<p>Error:</p>
							<span></span>
						</div>
						<input type="hidden" class="form-control" name="user id"
							ng-model="ctrl.user.user_id" placeholder="First Name">

						<div class="form-group">
							<label for="firstname" class="col-md-3 control-label">User
								Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="username"
									ng-model="ctrl.user.user_name" placeholder="User Name">
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Email</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="email"
									ng-model="ctrl.user.email" placeholder="Email Address">
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Password</label>
							<div class="col-md-9">
								<input type="password" class="form-control" name="password"
									ng-model="ctrl.user.password" placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Contact</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="contact"
									ng-model="ctrl.user.contact" placeholder="Contact">
							</div>
						</div>

						<!-- <div class="form-group">
							<label for="icode" class="col-md-3 control-label">Invitation
								Code</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="icode"
									placeholder="">
							</div>
						</div> -->

						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-1 col-md-9">
								<button id="btn-signup" type="submit" class="btn btn-primary ">
									<i class="icon-hand-right"></i> &nbsp Sign Up
								</button>
								
								<button id="btn-signup" type="reset" class="btn btn-info pull-right">
									<i class="icon-hand-left"></i> &nbsp Reset
								</button>
							</div>
						</div>

						<div style="border-top: 1px solid #999; padding-top: 20px"
							class="form-group">

							<div class="col-md-offset-3 col-md-9">
								<button id="btn-fbsignup" type="button" class="btn btn-primary">
									<i class="icon-facebook"></i>   Sign Up with Facebook
								</button>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	
	</div>
	
	<script
		src="<c:url value='/Resources/js/angular.min.js' />"></script>
	<script src="<c:url value='/Resources/js/js_files/app.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/service/userService.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/controller/userController.js' />"></script>
</body>
</html>