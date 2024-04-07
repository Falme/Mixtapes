extends Control

@onready var transition: Control = $AnimationIntro

func _ready() -> void:
	changeScene()
	
func changeScene():
	# await get_tree().create_timer(3).timeout
	#get_tree().change_scene_to_file("res://Scenes/collection.tscn")
	pass
