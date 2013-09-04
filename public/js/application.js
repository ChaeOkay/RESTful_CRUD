$(document).ready(function() {

  $('#new_note').on('click', function(e){
    e.preventDefault();
    $('.new_note').show();

    $('#submit_new').on('click', function(e){
      e.preventDefault();
      $.ajax({
        url: '/notes',
        type: 'post',
        data: $('#new_form').serialize()
      }).done(function(response){
        $('.note_title').append('<li><a href="">' + response.title + '</a></li>');
        //why doesn't line 14 show automatically?
        $('#new_form')[0].reset();
        $('.new_note').hide();
      });
    });
  });

  $('li a').on('click', function(e){
    e.preventDefault();
    console.log(this);
  })

});
