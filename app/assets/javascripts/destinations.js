// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  $('.destinations').click(function(){
   console.log(this.id);
   var searchid = this.id;
   $.ajax({
      url: "/destinations",
      type: 'POST',
      data: {searchid:searchid}
    });
  });
});