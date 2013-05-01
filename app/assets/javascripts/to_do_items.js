$(document).ready(function(){

  $('body').bind('ajax:success', function(e, data) {
     $('.to_do_items').append(data);
      });
      });