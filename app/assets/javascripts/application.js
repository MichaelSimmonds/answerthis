//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require cable
//= require form_completeion_percentage
//= require questionnaires_play
//= require spinner
//= require user_msg_on_spinner_page
//= require bootstrap-datepicker

// $(".alert").slideUp(700)
$(".alert").ready(function(){
  setTimeout(function(){
    $(".alert").slideUp(500)
  }, 1500)
});

var currentDate = $(".datepicker").val()
$(".datepicker").val(currentDate)

$('.datepicker').datepicker({
    startView: 2,
    maxViewMode: 2,
    autoclose: true,
    startDate: "03-03-1950"
});
