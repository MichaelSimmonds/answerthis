$(document).ready(function(){
    $(".form_field").on("focusout", function(event){
      // console.log($('.form-field').length)
      // THIS MUST BE SET BY HAND
      var fields_count = 6
      var completion = 0
      $(".form_field").each(function(index, field){
        // count ++
        if (field.value != ""){
          completion += (1)
        }
      })
      $(".completed-percent").text((completion/fields_count)*100)
    });
});
