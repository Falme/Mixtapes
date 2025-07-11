class_name SlideManifestoButton
extends NinePatchRect

var on_right : bool  = false

func _on_arrow_button_pressed() -> void:
	if on_right:
		$SlideAnimation.play("slide_left")
	else:
		$SlideAnimation.play("slide_right")
	
	on_right = !on_right
