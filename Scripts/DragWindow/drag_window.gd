class_name DragWindow
extends Node

var isDragging : bool = false
var cursorDelta : Vector2i
var lastCursorPosition : Vector2i


func _process(delta):
	
	cursorDelta = lastCursorPosition - _get_screen_mouse_position()
	
	
	if isDragging:
		var newWindowPosition : Vector2i = _get_screen_mouse_position() - Vector2i((get_window().size.x/2), 20)
		
		newWindowPosition.x = maxf(0, newWindowPosition.x)
		newWindowPosition.y = maxf(0, newWindowPosition.y)
		get_window().position = newWindowPosition
	
	
	lastCursorPosition = _get_screen_mouse_position()

func _on_button_down():
	lastCursorPosition = _get_screen_mouse_position()
	isDragging = true


func _on_button_up():
	isDragging = false

func _get_screen_mouse_position():
	
	var viewportCursorPosition : Vector2i = get_viewport().get_mouse_position()
	var windowPosition : Vector2i = get_window().position
	var screenMousePosition = viewportCursorPosition + windowPosition
	
	return screenMousePosition
