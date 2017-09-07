<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- context path loading -->	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}"></c:set>

<!-- static resource's loading -->
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url var="css" value="/Resources/css"/>
<spring:url var="js" value="/Resources/js"/>
<spring:url var="img" value="/Resources/img"/>
<spring:url var="sass" value="/Resources/sass"/>
<spring:url var="content" value="/Resources/content"/>
<spring:url var="font" value="/Resources/font"/>


<!--  testing --> 
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>TOP20 HUB</title>

<!-- Font Awesome -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Material Design Bootstrap -->
<link href="${css}/mdb.min.css" rel="stylesheet">

<link href="${css}/style.css" rel="stylesheet">

<!-- Summernote Editor -->
<link href="${css}/summernote.min.css" rel="stylesheet">

<!-- Landing page CSS -->
<link href="${css}/home.css" rel="stylesheet">
</head>
<body>

	<!--Navbar start-->
	<%@include file="./shared/navbar.jsp" %>
	<!--Navbar End-->

	<!--Carousel Wrapper start-->
	<%@ include file = "./shared/carousel.jsp" %>
	<!--/.Carousel Wrapper End-->

	<br />

	<!--Content Start-->
	<%@ include file="./shared/homeContent.jsp" %>
	<!--/.Content End-->

	<!-- Modals -->
	<%@ include file ="./shared/models.jsp" %>
	<!-- Models -->


	<!--Footer-->
	<%@include file="./shared/footer.jsp" %>
	<!--/.Footer-->


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
	<script type="text/javascript" src="${js}/summernote.js"></script>
	<!--<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.7.0/summernote.js"></script> -->


	<script type="text/javascript" src="${js}/summernote.js"></script>

	<script>
    new WOW().init();

  $(document).ready(function() {
        $('#summernote').summernote({height: 170});
    });

    // $('#summernote').summernote();

    $('.fliper-btn').click(function(){
         $('.flip').find('.card').toggleClass('flipped');
    });

      w3.includeHTML();


        $(function () {
  $('.first-button').on('click', function () {
  $('.interest-content').animate({height:"toggle"}, function(){
  $('.content-lifestyle').animate({height:"toggle"});
  var h=$(".modal-body .content-lifestyle p").height();
  $(".modal-body").css('height',h+550+'px');
  $(".modal-body .content-lifestyle p").css('height',h+'px');
  });
  });
   $('.second-button').on('click', function () {
   $('.content-lifestyle').animate({height:"toggle"},function(){
   $('.interest-content').animate({height:"toggle"});
   var h=$(".modal-body .interest-content p").height();
   $(".modal-body").css('height',h+610+'px');
   $(".modal-body .interest-content p").css('height',h+'px');
   });
   });

   $('.third-button').on('click', function () {
   $('.content-lifestyle').animate({height:"toggle"},function(){
   $('.article-choice').animate({height:"toggle"});
   var h=$(".modal-body .article-choice p").height();
   $(".modal-body").css('height',h+530+'px');
   $(".modal-body .article-choice p").css('height',h+'px');
   });
   });

   $('.fourth-button').on('click', function () {
   $('.article-choice').animate({height:"toggle"},function(){
   $('.content-lifestyle').animate({height:"toggle"});
   var h=$(".modal-body .content-lifestyle p").height();
   $(".modal-body").css('height',h+550+'px');
   $(".modal-body .content-lifestyle p").css('height',h+'px');
   });
   });

   $('.fifth-button').on('click', function () {
   $('.article-choice').animate({height:"toggle"},function(){
   $('.single-article').animate({height:"toggle"});
   var h=$(".modal-body .single-article p").height();
   $(".modal-body").css('height',h+550+'px');
   $(".modal-body .single-article p").css('height',h+'px');
   });
   });

   $('.sixth-button').on('click', function () {
   $('.article-choice').animate({height:"toggle"},function(){
   $('.multiple-article').animate({height:"toggle"});
   var h=$(".modal-body .multiple-article p").height();
   $(".modal-body").css('height',h+2550+'px');
   $(".modal-body .multiple-article p").css('height',h+'px');
   });
   });

   $('.seventh-button').on('click', function () {
   $('.single-article').animate({height:"toggle"},function(){
   $('.article-choice').animate({height:"toggle"});
   var h=$(".modal-body .article-choice p").height();
   $(".modal-body").css('height',h+550+'px');
   $(".modal-body .article-choice p").css('height',h+'px');
   });
   });

    $('.eight-button').on('click', function () {
    $('.multiple-article').animate({height:"toggle"},function(){
    $('.article-choice').animate({height:"toggle"});
    var h=$(".modal-body .article-choice p").height();
    $(".modal-body").css('height',h+550+'px');
    $(".modal-body .article-choice p").css('height',h+'px');
    });
    });

  });

  </script>

</body>

</html>
