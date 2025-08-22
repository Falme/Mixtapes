class_name DragWindow extends Button

var isDragging : bool = false
var cursorDelta : Vector2i
var lastCursorPosition : Vector2i

func _process(_delta):
	cursorDelta = lastCursorPosition - _get_screen_mouse_position()

	if isDragging:
		var windowPosition : Vector2i = DisplayServer.window_get_position()
		var newWindowPosition : Vector2i = (windowPosition - Vector2i(3,3)) - cursorDelta
		
		newWindowPosition.x = clamp(newWindowPosition.x, 0, DisplayServer.screen_get_size().x - DisplayServer.window_get_size().x)
		newWindowPosition.y = clamp(newWindowPosition.y, 0, DisplayServer.screen_get_size().y - DisplayServer.window_get_size().y)
		get_window().position = newWindowPosition
		# DisplayServer.window_set_position(newWindowPosition)
		# DisplayServer.window_set_position(_get_screen_mouse_position()-Vector2i(600,20))
	
	
	lastCursorPosition = _get_screen_mouse_position()

func _on_button_down():
	isDragging = true
	lastCursorPosition = _get_screen_mouse_position()


func _on_button_up():
	isDragging = false

func _get_screen_mouse_position() -> Vector2i:
	return DisplayServer.mouse_get_position()
