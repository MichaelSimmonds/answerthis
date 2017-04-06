$(document).ready(function(){


// Removing content and loading questionnaire description

  $('.prize-select-btn').click(function(){
    $('.choose-prize-div').hide();
    $('.modal-backdrop').remove();
    $('.questionnaire-description-div').removeClass('hidden');
  });

  $('#play-btn').click(function(){
    $('.questionnaire-description-div').addClass('hidden');
    $('.questions-div').removeClass('hidden');
  });

  $('.submit-questionnaire-btn').click(function(){
    $('.questions-div').addClass('hidden');
    $('.spinner-div').removeClass('hidden');
  });

  $('#spin-btn').click(function(){
    $('.spinner-div').addClass('hidden');
    $('.spin-result-div').removeClass('hidden');
  });


});
