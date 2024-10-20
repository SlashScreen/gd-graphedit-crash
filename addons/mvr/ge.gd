@tool
extends Control


func generate() -> void: 
	for i:int in range(4):
		var gn := GraphNode.new() 
		gn.title = str(randf())
		var l := Label.new() 
		l.text = "Close this window to crash the editor."
		gn.add_child(l)
		$GraphEdit.add_child(gn)
	$GraphEdit.arrange_nodes()


func clear() -> void: 
	print("I crash now. Thank you forever.")
	for c:Node in $GraphEdit.get_children():
		c.queue_free()
