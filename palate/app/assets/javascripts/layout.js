$(document).ready(function(){
    $(".well").hover(function(){
  $(this).filter(':not(:animated)').animate({
     marginLeft:'15px',
     marginLeft:"9px"
  },'slow');
  console.log("sdasdads")
   
});
  })