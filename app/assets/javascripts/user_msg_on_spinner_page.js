$(document).ready(function(){

  $(window).load(function(){
    $('#msgModal').removeClass('hide').modal('show');
  });

  $('.yes-btn').click(function(){
    $('#msgModal').addClass('hide').modal('hide');
  });

});
