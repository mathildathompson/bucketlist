// $(document).ready(function(){

//   $('body').bind('ajax:success', function(e, data) {
//   	 var newtodoitem = $('<div>').append(data).children().data("item-id");
//      $('.todoitem' + newtodoitem).append(data);
//       });

//   _.each($('h3#createtodo'), function(x){
//   	.click(function() {
//   // $(this).next().find('#todoforms').slideToggle();
//   $('#todoform').slideToggle('slow', function() {
//     // Animation complete.
//   });
//  });
// });

// $('h3createtodo').each(function(){

//   $(this).click(function(){
    
//   })
// })

// });


$(document).ready(function(){
    $('.destinations').click(function(){
    	$(this).next().slideToggle();
    })

	$('.extend-form').click(function() {
  // $(this).next().find('#todoforms').slideToggle();
    $(this).parent().find('.extendible-form').slideToggle();
  });

	$('.to_do_form').click(function(){
		$(this).next().slideToggle();
	})
});