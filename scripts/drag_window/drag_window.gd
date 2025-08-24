class_name DragWindow extends Button

var isDragging : bool = false
var cursorOffset : Vector2i

func _process(_delta):
	if isDragging:
		get_window().position = DisplayServer.mouse_get_position() + cursorOffset

func _on_button_down():
	cursorOffset = _set_mouse_offset()
	isDragging = true

func _on_button_up():
	isDragging = false

func _set_mouse_offset() -> Vector2i:
	var _correctedWindowPosition : Vector2i = DisplayServer.window_get_position() - Vector2i(3,3)
	var _mouseOffset = _correctedWindowPosition - DisplayServer.mouse_get_position()
	return _mouseOffset
