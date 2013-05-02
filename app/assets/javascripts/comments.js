$(document).ready(function(){

$('body').bind('ajax:success', function(e, cool_beans) {
	//remember cool_beans is a div, so you are putting a div inside a temporary div and accessing children() 
	console.log(cool_beans);
	var new_comment = $('<div>').append(cool_beans).children().data("item-id");
	$('.comments-' + new_comment).append(cool_beans);
	
  });

});

