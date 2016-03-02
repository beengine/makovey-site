jQuery ->
	authors = $('#post_author_id').html()

	options = $(authors).filter("optgroup[label='main']").html()
	$('#post_author_id').html(options)

	$("input[name='post[site]']").on "click", ->
		site = $("input[name='post[site]']:checked").val();
		options = $(authors).filter("optgroup[label='#{site}']").html()
		$('#post_author_id').html(options)