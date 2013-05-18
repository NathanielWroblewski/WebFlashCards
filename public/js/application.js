$(document).ready(function() {
  $('.get_answer').on("submit", function(e){
    e.preventDefault();
    $this = $(this);
    $.ajax ({
       type: 'post',
       url: '/check_answer',
       data: $(this).serialize()
    }).done(function(response){
      if (response === "true"){
        $this.append("Correct!");
      }else{
        $this.append("Incorrect!");
      }
    });
  });
});








//     console.log($('#db_answer').attr("value") === ($('#user_answer').attr("value")));
//     console.log($('#db_answer').attr("value"));
//     console.log($('#user_answer').attr("value"));
//     $(this).children(".db_answer");
//     if ($('#db_answer').attr("value") === ($('#user_answer').val() )){
//       $('#question').append("<p>Correct!</p>");
//     }
//       else {
//           $('#question').append("<p>Incorrect!</p>");
//       };
//     });
// });

