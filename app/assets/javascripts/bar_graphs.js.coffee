
$ ->
	bar_graph_1 = ->
		$("#bar_graph_2").hide()
		$("#bar_graph_1").show()
		$("#food_list").show()

	bar_graph_2 = ->
		$("#bar_graph_1").hide()
		$("#bar_graph_2").show()	
		$("#food_list").hide()

	$("#bar_graph_2").hide()
	$("#show_1").click(bar_graph_1)	
	$("#show_2").click(bar_graph_2)	


