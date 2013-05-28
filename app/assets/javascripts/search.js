$(document).ready(function(){



	$('#search').change(function(){
		
		var searchTerm = $(this).val();

		var results = _.filter(items, function(item) {
			var matchTerm = new RegExp(searchTerm);
			return item.name.match(matchTerm);

		});
		console.log(results);

		   $('.to_do_item').html('');
		   $('.to_do_form').html('');

		_.each(results, function(item){
		var html = "<p>" + item.name + "</p>";
		$('.searchbox').append(html);
	  })

	  
	 });

});

 

 
//do not need quotations marks for a variable

//the change() means that the function is only run when the value is changed

//_.where(items, {name : "Drink a pickleback"})
//-That works with exact matches
//filter
//_.filter(items, function(item){
	//return item.name.length > 3});
//_.filter(items, function(item){
	//return item.name.match(/drink/)});
// the item in filter about, think of an an individual item

//var results = _.filter(items, function(item){
	//return item.name.match(RegExp($(this).val());
		//this represents the input comes from #search
//})

//search Javascript regular expression match

//$('.items').html('')
//clears the items on the page

//iterate over results and create html to put them back in

//_.each(results, function(item){
	//var html= "<p>" + item.name = "<p>";
	//$('.items').append(html);
//})

//You have to cope the copy comments so that the styling is the same
//Change the name of the comment using _.template(long string and replace name with <%= name %>)
//var output = html({name :item.name});
//$('items').append(output);
