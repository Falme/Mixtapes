extends Control

func local_position(position):
	$SlideFlagAnimation/FlagContainer.set_position(position)
	
func local_play(anim):
	$SlideFlagAnimation.play(anim)

func set_color(color):
	$SlideFlagAnimation/FlagContainer/FlagColor.color = color
