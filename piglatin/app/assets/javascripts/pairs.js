$(document).ready(function(){
	$('#picker-form').on(submit, function(event){
		event.preventDefault()
		$.ajax({
			type: GET,
			url: new_pair_path,
			data: $(this).serialize()
		}).done
	})

})