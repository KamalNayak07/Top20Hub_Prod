<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- context path loading -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}"></c:set>

<!-- static resource's loading -->
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/Resources/css" />
<spring:url var="js" value="/Resources/js" />
<spring:url var="img" value="/Resources/img" />
<spring:url var="sass" value="/Resources/sass" />
<spring:url var="content" value="/Resources/content" />
<spring:url var="font" value="/Resources/font" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="top20hubApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Topics</title>


<!-- Font Awesome -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Material Design Bootstrap -->
<link href="${css}/mdb.min.css" rel="stylesheet">

<link href="${css}/style.css" rel="stylesheet">

<!-- Summernote Editor -->
<link href="${css}/summernote.min.css" rel="stylesheet">

<!-- Landing page CSS -->
<link href="${css}/home.css" rel="stylesheet">




<!-- Angular Controller and Service -->
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular-route.js"></script>
<script
	src="//angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.12.1.min.js"></script>
<script src="<c:url value='/Resources/js/js_files/app.js' />"></script>

<script src="<c:url value='/Resources/js/jquery-3.1.1.min.js'/>"></script>
<script src="<c:url value='/Resources/js/bootstrap.min.js'/>"></script>
<script
	src="<c:url value='/Resources/js/js_files/controller/fieldController.js' />"></script>

<script
	src="<c:url value='/Resources/js/js_files/service/fieldService.js' />"></script>

<script
	src="<c:url value='/Resources/js/js_files/service/topicService.js' />"></script>

<script
	src="<c:url value='/Resources/js/js_files/controller/topicController.js' />"></script>
<script
	src="<c:url value='/Resources/js/js_files/service/fileUpload.js' />"></script>
<script
	src="<c:url value='/Resources/js/js_files/directives/fileModel.js' />"></script>

</head>

<body ng-controller="fieldController as ctrll">
<div class="container">


  		<h4 class="font-weight-bold mt-3"><strong>LIFESTYLE</strong></h4>
        <hr class="red title-hr">
			

      <div class="row">
          
			<div class="col-md-4 mt-2" ng-repeat="ub in ctrll.fieldcategorys">
													
                              <!--Card-->
                                <div class="card">

                                    <!--Card image-->
                                    <div class="view overlay">
                                        <img src="http://mdbootstrap.com/img/Photos/Horizontal/Work/6-col/img%20(12).jpg" class="card-img-top" alt="Sample image">
                                        <a>
                                            <div class="mask rgba-white-slight"></div>
                                        </a>
                                    </div>
                                    <!--/.Card image-->

                                    <!--Card content-->
                                    <div class="card-body">
                                        <!--Title-->
                                        </br>
                                        <h4 class="card-title"><strong>{{ub[0]}}</strong></h4>
                                        <hr>
                                        <!--Text-->
                                        <p class="card-text mb-3">Some quick example text to build on the card title and make up the bulk of the card's
                                            content.
                                        </p>
                                        <p class="font-small font-weight-bold dark-grey-text mb-1"><i class="fa fa-clock-o"></i> 27/08/2017</p>
                                        <p class="font-small grey-text mb-0">Anna Smith</p>
                                        <p class="text-right mb-0 font-small font-weight-bold"><a>read more <i class="fa fa-angle-right"></i></a></p>
                                    </div>
                                    <!--/.Card content-->

                                </div>
                                <!--/.Card-->
                            </div>
                            <!--Grid column-->
       		
		</div>
	</div>

	<!-- SCRIPTS -->

	<!-- JQuery -->
	<script type="text/javascript" src="${js}/jquery-2.2.3.min.js"></script>

	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="${js}/tether.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="${js}/bootstrap.min.js"></script>

	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="${js}/mdb.min.js"></script>

	<script type="text/javascript" src="${js}/w3.js"></script>

	
	
</body>
</html>