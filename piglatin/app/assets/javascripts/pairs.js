$(document).ready(function(){
	

	$('#first_form').on('submit', function(e){
		e.preventDefault()
		  $.ajax({
		  	url: '/pairs',
		  	type: 'POST',
		  	data: $(this).serialize(), 
		  })
  		  .done(function(response) {

  		  	$('#translations').append('<h1>' + response.english + " " + response.pig_latin + " " + response.key + '</h1>')
  		  })
  		  .fail(function() {
               
  		  })  
  		  
	
		});

		$('#key_form').on('submit', function(e){
			e.preventDefault()
				$.ajax({
					url: '/pairs',
				    type: 'GET',
				    data: $(this).serialize()
				})
				.done(function(response){
					$('#key_entry').append('<h1>' + response.english + " " + response.pig_latin + '</h1>')
				})
				.fail(function() {
					// body...
				})

		});


});

	
	

