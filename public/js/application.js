$(document).ready(function() {
  $('.get_answer').on("submit", function(e){
    e.preventDefault();
    var $answer = $("#"+($(this).parent().attr('data')))
    $.ajax ({
       type: 'post',
       url: '/check_answer',
       data: $(this).serialize()
    }).done(function(response){
      if (response === "true"){
        $answer.append($('<p>Correct!<p>').css('color', 'green'));
      }else{
        $answer.append($('<p>Incorrect!<p>').css('color', 'red'));
      }
    });
  });
});

