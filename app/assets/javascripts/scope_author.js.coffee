jQuery ->
	$('#post_site_input').change "click", ->
		type = $(this).data('type') 
		console.log(type)