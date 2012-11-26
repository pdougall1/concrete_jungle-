
$ ->
	bar_graph_1 = ->
		$("#bar_graph_1").show()
		$("#bar_graph_2").hide()
		$("#bar_graph_3").hide()
		$("#food_list").show()

	bar_graph_2 = ->
		$("#bar_graph_1").hide()
		$("#bar_graph_3").hide()
		$("#bar_graph_2").show()	
		$("#food_list").hide()

	bar_graph_3 = ->
		$("#bar_graph_1").hide()
		$("#bar_graph_2").hide()
		$("#bar_graph_3").show()	
		$("#food_list").hide()	

	
	$("#bar_graph_1").hide()
	$("#bar_graph_3").hide()
	$("#show_1").click(bar_graph_1)	
	$("#show_2").click(bar_graph_2)	
	$("#show_3").click(bar_graph_3)	


