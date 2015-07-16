//main scripts for interactivity
$(function(){
  //On Hover event the icons on the icon-row animate to reveal gif
  //I am hiding the animated gif in the document due to the rails asset pipeline
  //The cached image has a large number appended to the end so it does not work to   //simply swap the extension of the filename.
  (function(){
    var staticImg;
    $('.icon-row figure img').hover(
        function(){
          //set the original static images source to the static var
          staticImg = $(this).attr('src');
          //get the animated gif image that is loaded next to the img you hover on
          var animated = $(this).next('img').attr('src');
          $(this).attr('src', animated)
        },
        function(){
          $(this).attr('src', staticImg);
        }
    );
  })();
});