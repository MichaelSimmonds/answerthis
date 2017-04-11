//set default degree (360*5)
var second_prize =  23.89 * 30;
var first_prize = 23.89 * 40;
var lose = 23.89 * 50;

$(document).ready(function(){

  /*WHEEL SPIN FUNCTION*/
  $('#spin').click(function(){

    degree = first_prize;
    /*let's make the spin btn to tilt every
    time the edge of the section hits
    the indicator*/
    $('#wheel .sec').each(function(){
      var t = $(this);
      var noY = 0;

      var c = 0;
      var n = 100;
      var interval = setInterval(function () {
        c++;
        if (c === n) {
          clearInterval(interval);
        }

        var aoY = t.offset().top;
        $("#txt").html(aoY);

        /*23.7 is the minumum offset number that
        each section can get, in a 30 angle degree.
        So, if the offset reaches 23.7, then we know
        that it has a 30 degree angle and therefore,
        exactly aligned with the spin btn*/
        if(aoY < 23.89){
          $('#spin').addClass('spin');
          setTimeout(function () {
            $('#spin').removeClass('spin');
          }, 100);
        }
      }, 10);

      $('#inner-wheel').css({
        'transform' : 'rotate(' + degree + 'deg)'
      });

      noY = t.offset().top;

    });
    setTimeout(function() {
      $('.result').addClass('show');
      saveResult();
    }, 5500);

  });


  function saveResult() {
    function RemoveLastDirectoryPartOf(the_url)
    {
        var the_arr = the_url.split('/');
        the_arr.pop();
        return( the_arr.join('/') );
    }

    var URL = RemoveLastDirectoryPartOf(location.href);
    console.log(URL)
    $.ajax({
     type: "PUT",
     contentType: "application/json",
     url: URL,
     data : JSON.stringify({status:1}),
     dataType: "json",
     success: function (result) {
        //window.alert("success!!");
     },
     error: function (){
        console.log("something wrong!");
     }
    });
  }
});//DOCUMENT READY


