jQuery ->
	authors = $('#post_author_id').html()
	rubrics = $('#post_rubric_id').html()
	site = $("input[name='post[site]']:checked").val();
	options = $(authors).filter("optgroup[label='#{site}']").html()
	options2 = $(rubrics).filter("optgroup[label='#{site}']").html()
	$('#post_author_id').html(options)
	$('#post_rubric_id').html(options2)

	$("input[name='post[site]']").on "click", ->
		site = $("input[name='post[site]']:checked").val();
		options = $(authors).filter("optgroup[label='#{site}']").html()
		options2 = $(rubrics).filter("optgroup[label='#{site}']").html()
		$('#post_author_id').html(options)
		$('#post_rubric_id').html(options2)