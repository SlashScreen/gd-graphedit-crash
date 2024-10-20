@tool
extends EditorPlugin

const GE := preload("res://addons/mvr/ge.tscn")

var win:Window


func _enter_tree() -> void:
	win = Window.new()
	var ge := GE.instantiate()
	win.add_child(ge)
	ge.generate()
	win.close_requested.connect(func() -> void: 
		win.hide()
		ge.clear()
		)
	
	EditorInterface.get_base_control().add_child(win)
	win.popup_centered(Vector2i(720, 720))


func _exit_tree() -> void:
	win.queue_free()
