$(document).ready(function() {
  $("#new_note").on('click', function(e){
    e.preventDefault();
    //the second argument of .on receives (stored as e)
    //the event of the event listener
    $('.new_note').fadeIn();
  });

  $(".new_note form").on('submit', function(e){
    e.preventDefault();
    var newNote = $(this).serialize();
    console.log(newNote);
    //Working on passing serializeing and parsing to json?

    $.ajax({
      type: 'post',
      url: '/note/',
      data: newNote
    }).done(function(data){
      console.log(data);
    });
  });
});
