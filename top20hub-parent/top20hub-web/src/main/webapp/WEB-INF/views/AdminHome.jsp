<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- define angular app -->
<html ng-app="top20hubApp">


<head>
  <!-- SCROLLS -->
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.css" />

  <!-- SPELLS -->
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular-route.js"></script>
  <script src="<c:url value='/Resources/js/js_files/app.js' />"></script>
  <script
		src="<c:url value='/Resources/js/js_files/service/userService.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/controller/userController.js' />"></script>
		
		
		<script
		src="<c:url value='/Resources/js/js_files/service/contactService.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/controller/contactController.js' />"></script>
		
		<script src="<c:url value='/Resources/js/jquery-3.1.1.min.js'/>"></script>
	<script src="<c:url value='/Resources/js/angular.min.js'/>"></script>
	<script src="<c:url value='/Resources/js/bootstrap.min.js'/>"></script>
	<%-- <script src="<c:url value='/Resources/js/js_files/app.js' />"></script> --%>
	<script
		src="<c:url value='/Resources/js/js_files/service/fieldService.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/controller/fieldController.js' />"></script>
	<script
		src="<c:url value='/Resources/js/js_files/service/fileUpload.js' />"></script>
		<script	src="<c:url value='/Resources/js/js_files/directives/fileModel.js' />"></script>
	
</head>

<!-- define angular controller -->
<body>

  <nav class="navbar navbar-default">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="/">Top20Hub Admin</a>
      </div>

      <ul class="nav navbar-nav navbar-right">
        <li><a href="#users"><i class="fa fa-user"></i> User</a></li>
        <li><a href="#fieldAdmin"><i class="fa fa-comment"></i>Fields</a></li>
        <li><a href="#topicAdmin"><i class="fa fa-comment"></i> Topics</a></li>
        <li><a href="#contentAdmin"><i class="fa fa-comment"></i> Contents</a></li>
        <li><a href="#contactUsMessage"><i class="fa fa-comment"></i> Contact Us Message's</a></li>
      </ul>
    </div>
  </nav>

  <div id="main">
  
    <!-- angular templating -->
		<!-- this is where content will be injected -->
    <div ng-view></div>
    
  </div>
  
  <footer class="text-center">
    
  </footer>
  
</body>

</html>
