$(document).ready(function() {

  $('.upvote').on('click', function() {
    that = $(this);
    $.ajax({url: '/postvote',
            type: 'POST',
            data: that.attr('name')+"&value=1"
    });
  });

  $('.downvote').on('click', function() {
    that = $(this);
    $.ajax({url: '/postvote',
            type: 'POST',
            data: that.attr('name')+"&value=-1"
    });
  });

});
