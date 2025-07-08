class_name SceneTransition
extends Control

func _ready() -> void:
	changeScene()
	
func changeScene():
	await get_tree().create_timer(3).timeout
	AnimationIntro.start_transition(func(): loadCollectionScene())
	pass

func loadCollectionScene():
	get_tree().change_scene_to_file("res://Scenes/collection.tscn")
	pass
