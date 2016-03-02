jQuery ->
	authors = $('#post_author_id').html
	$("input[name='post[site]']").on "click", ->
		site = $("input[name='post[site]']:checked").val();
		console.log(site)
		if site == 'main'
			options = $(authors).filter("optgroup[label='#{site}']").html()
		$('#post_author_id').html(options)