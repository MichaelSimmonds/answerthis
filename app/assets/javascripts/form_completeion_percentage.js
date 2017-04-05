$(document).ready(function(){
  current_percent = 0;
  update_prog_bar()
  // var progress_html = '<div class="progress"><div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="'current_percent'" aria-valuemin="0" aria-valuemax="100">'current_percent'%</div></div>'

    $(".form_field").on("focusout", function(event){
      // console.log($('.form-field').length)
      update_prog_bar()
    });

    function update_prog_bar(){
      // THIS MUST BE SET BY HAND
      var fields_count = 6
      var completion = 0
      $(".form_field").each(function(index, field){
        // count ++
        if (field.value != ""){
          completion += (1)
        }
      })
      var current_percent = (completion/fields_count)*100;
      current_percent = parseInt(current_percent)
      console.log(current_percent)
      show_progress(current_percent)
    }

    function show_progress(current_percent) {
      $(".completed-percent").html('<div class="progress"><div class="progress-bar" role="progressbar" style="width: '+current_percent+'%;" aria-valuenow="'+current_percent+'" aria-valuemin="0" aria-valuemax="100">'+current_percent+'%</div></div>');
    }
});
