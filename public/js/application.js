$(document).ready(function() {

  $('#new_note').on('click', function(e){
    e.preventDefault();
    $('.new_note').toggle();

    $('#submit_new').on('click', function(e){
      e.preventDefault();
      $.ajax({
        url: '/notes',
        type: 'post',
        data: $('#new_form').serialize()
      }).done(function(response){
        $('.note_title').append('<li><a href="">' + response.title + '</a></li>');
        $('#new_form')[0].reset();
      });
    });
  });



  $('li a').on('click', function(e){
    e.preventDefault();
    console.log(this);
  })

});
