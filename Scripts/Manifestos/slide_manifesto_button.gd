extends NinePatchRect

var on_right : bool  = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_arrow_button_pressed() -> void:
	
	if on_right:
		$SlideAnimation.play("slide_left")
	else:
		$SlideAnimation.play("slide_right")
	
	on_right = !on_right
	
	pass
