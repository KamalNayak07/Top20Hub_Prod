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

