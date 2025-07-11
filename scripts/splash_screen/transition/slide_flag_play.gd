class_name SlideFlagPlay
extends Control

func local_position(_position):
	$SlideFlagAnimation/FlagContainer.set_position(_position)
	
func local_play(anim):
	$SlideFlagAnimation.play(anim)

func set_color(color):
	$SlideFlagAnimation/FlagContainer/FlagColor.color = color
