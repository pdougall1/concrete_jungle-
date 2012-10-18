$ ->
	show_form = ->
		$("#show_form").hide()
		$("#form-picking").show()
		$("#hide_form").show()

	hide_form = ->
		$("#form-picking").hide()
		$("#hide_form").hide()	
		$("#show_form").show()	

	$("#form-picking").hide()
	$("#hide_form").hide()	
	$("#show_form").show()	
	$("#show_form").click(show_form)	
	$("#hide_form").click(hide_form)	