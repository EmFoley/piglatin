$(document).ready(function(){
	$('#new_pair').on('submit', function(e){
		e.preventDefault()
		$.post('/pairs', $(this).serialize())
		  .done(function(response) {
		  	$('#translations').append('<h1>' + response.english + " " + response.pig_latin + " " + response.key + '</h1>')
		  })
		  .fail(function() {
             // 
		  })
	})

});
