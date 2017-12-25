<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- context path loading -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}"></c:set>

<!--Navbar start-->
<%@include file="./shared/navbar.jsp"%>
<!--Navbar End-->


<!-- static resource's loading -->
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/Resources/css" />
<spring:url var="js" value="/Resources/js" />
<spring:url var="img" value="/Resources/img" />
<spring:url var="sass" value="/Resources/sass" />
<spring:url var="content" value="/Resources/content" />
<spring:url var="font" value="/Resources/font" />


<html ng-app="top20hubApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Content Writing Page</title>


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
	src="http://labs.sideeffect.kr/2014/angular-summernote/v0.3.2/dist/angular-summernote.min.js"></script>

<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular-route.js"></script>
<script
	src="//angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.12.1.min.js"></script>
<script src="<c:url value='/Resources/js/js_files/app.js' />"></script>

<script src="<c:url value='/Resources/js/jquery-3.1.1.min.js'/>"></script>
<script src="<c:url value='/Resources/js/bootstrap.min.js'/>"></script>
<script
	src="<c:url value='/Resources/js/js_files/controller/contentController.js' />"></script>
<script
	src="<c:url value='/Resources/js/js_files/service/contentService.js' />"></script>
<script
	src="<c:url value='/Resources/js/js_files/controller/topicController.js' />"></script>
<script
	src="<c:url value='/Resources/js/js_files/service/topicService.js' />"></script>

<script
	src="<c:url value='/Resources/js/js_files/service/fieldService.js' />"></script>
<script
	src="<c:url value='/Resources/js/js_files/controller/fieldController.js' />"></script>
<script
	src="<c:url value='/Resources/js/js_files/service/fileUpload.js' />"></script>
<script
	src="<c:url value='/Resources/js/js_files/directives/fileModel.js' />"></script>



</head>
<body>
	<br>
	<br>
	<br>
	<br>

	<div ng-controller="fieldController as ctrl">

		<!-- Field Content -->
		<div class="field-content" ng-show="ctrl.show==1" ng-cloak>
			<div class="container">
				<h3>Let's choose a field which suits your writing Style/
					Personal Interest</h3>

				<br />
				<div class="row">
					<div ng-repeat="u in ctrl.fields">
						<br />
						<div class="col-md-4">
							<!--Card-->

							<div class="card wow fadeIn first-button" data-wow-delay="0.2s"
								ng-click="ctrl.getTopicbyFieldId(u.field_id); ctrl.show=2">
								<!--Card image-->
								<div class="view overlay hm-white-slight">
									<img src="${pageContext.request.contextPath}{{u.field_url}}"
										class="img" alt="" height="400" width="450"> <a href="#">
										<div class="mask"></div>
									</a>
								</div>
								<!--/.Card image-->
								<a href="#" class="btn btn-info btn-sm flex-center"><span
									ng-bind="u.field_desc"></span></a>
							</div>

						</div>
						<br />
					</div>
				</div>
			</div>
		</div>


		<!-- Topic Content -->
		<div class="topic-content" ng-show="ctrl.show==2" ng-cloak>

			<div class="container">
				<h3>Let's choose a Topic from the below ones</h3>
				<br />
				<div class="row">

					<div ng-repeat="u in ctrl.topics">
						<br />
						<div class="col-md-4">
							<!--Card-->
							<div class="card wow fadeIn" data-wow-delay="0.2s"
								ng-click="ctrl.show=3; ctrl.setTopic=u.topic_id ">
								<!--Card image-->
								<div class="view overlay hm-white-slight">
									<img src="${pageContext.request.contextPath}{{u.topic_url}}"
										class="img" alt="" height="400" width="450"> <a href="#">
										<div class="mask"></div>
									</a>
								</div>
								<!--/.Card image-->
								<a href="#" class="btn btn-info btn-sm flex-center"><span
									ng-bind="u.subject"></span></a>
							</div>
						</div>
						<br />
					</div>
				</div>
				<button
					class="btn btn-default waves-effect waves-light second-button pull-right"
					ng-click="ctrl.show=1" style="font-size: 10px;" aria-hidden="true">Previous</button>
			</div>
		</div>

		<!-- Options Page -->
		<div class="article-content" ng-show="ctrl.show==3" ng-cloak>
			<div class="container">
				<div class="row">
					<div class="col-sm-1"></div>
					<div class="col-sm-4">
						<!--Card-->
						<br> <br> <br> <br> <br> <br> <br>
						<br>
						<div class="card wow fadeIn" data-wow-delay="0.2s"
							ng-click="ctrl.show=5">
							<!--Card image-->
							<div class="view overlay hm-white-slight">
								<button
									class="btn btn-primary waves-effect waves-light sixth-button pull-right"
									style="font-size: 15px;" aria-hidden="true">I want to
									write more than One Article</button>
							</div>
						</div>
						<!--/.Card-->
					</div>

					<div class="col-sm-2">
						<br> <br> <br> <br> <br> <br> <br>
						<br> &nbsp&nbsp
						<button class="btn btn-default waves-effect waves-light"
							style="font-size: 13px;" aria-hidden="true">OR</button>
					</div>

					<div class="col-sm-4">
						<!--Card-->
						<br> <br> <br> <br> <br> <br> <br>
						<br>
						<div class="card wow fadeIn" data-wow-delay="0.2s"
							ng-click="ctrl.show=4">
							<!--Card image-->
							<div class="view overlay hm-white-slight">
								<button
									class="btn btn-primary waves-effect waves-light fifth-button"
									style="font-size: 15px;" aria-hidden="true">Let me try
									a single Article first</button>
							</div>
						</div>
						<!--/.Card-->
					</div>
					<div class="col-sm-1"></div>
				</div>
			</div>
			<button
				class="btn btn-default waves-effect waves-light bottomright fourth-button pull-right"
				style="font-size: 10px;" aria-hidden="true" ng-click="ctrl.show=2">Previous</button>
			<!-- <div w3-include-html="${content}/article_choice.html"></div> -->
		</div>



		<!-- Single Article -->
		<div ng-controller="contentController as contentctrl">

			<div class="single-article" ng-show="ctrl.show==4" ng-cloak>
						

				<!-- <div w3-include-html="${content}/articleSubmission.html"></div> -->
				<form class="form-horizontal">
					
					<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Content's Title	</label>
						&nbsp&nbsp	<input type="text" ng-model="contentctrl.content.title"
								class="form-control" id="title" placeholder=""
								required ng-minlength="3" />
					
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">Description
						</label>
						<div>
				 		 <textarea type="text" ng-model="contentctrl.content.description"></textarea>
				 		 </div>  
			 		<!-- 	<div class="summernote" id="summernote"
							ng-model="contentctrl.content.description" /> 
							
			 -->		
			       </div>
               
					<div class="form-group">
						<label class="control-label col-sm-4" for="pwd">Content's
							Images</label> 
						<input type="file"
							file-model="contentctrl.content.content_image" id="image"
							class="form-control input-sm" placeholder="Content's image" />
					</div>


					<div class="form-group">
						<label class="control-label col-sm-2" for="links">Links</label> <input
							type="text" ng-model="contentctrl.content.links" id="subject"
							class="subject form-control input-sm" placeholder="" required
							ng-minlength="3" />
					</div>


					<div class="form-group">
						<div class="col-md-7"
							ng-model="contentctrl.content.topic.topic_id"
							ng-value="contentctrl.content.topic.topic_id = ctrl.setTopic">
						</div>
					</div>
				</form>
				<br />
				<button class="btn btn-primary  waves-effect waves-light pull-right"
					style="font-size: 10px;" ng-click="contentctrl.submit()">Submit</button>
				<button
					class="btn btn-default waves-effect waves-light pull-right seventh-button"
					ng-click="ctrl.show=3" style="font-size: 10px;" aria-hidden="true">Previous</button>
			</div>
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

	<!-- Summernote Editor -->
<%-- 	<script type="text/javascript" src="${js}/summernote.js"></script>
 --%>
	<!--<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.7.0/summernote.js"></script> -->


	<script>
		new WOW().init();

		$(document).ready(function() {
			$('#summernote').summernote({
				height : 350
			});
		});
	</script>


</body>
</html>