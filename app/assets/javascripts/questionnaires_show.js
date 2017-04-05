$(document).ready(function(){


// Removing content and loading questionnaire description

  $('.prize-select-btn').click(function(){
    $('.choose-prize-div').hide();
    $('.modal-backdrop').remove();
    $('.questionnaire-description-div').removeClass('hidden');
  });

  $('#play-btn').click(function(){
    $('.questionnaire-description-div').addClass('hidden');
    $('question-1-div').removeClass('hidden');
  });


});
