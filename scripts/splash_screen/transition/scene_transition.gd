class_name SceneTransition
extends Control

const TIMEOUT_TRANSITION: int = 3

func _ready() -> void:
	changeScene()
	
func changeScene():
	await get_tree().create_timer(TIMEOUT_TRANSITION).timeout
	AnimationIntro.start_transition(func(): loadCollectionScene())

func loadCollectionScene():
	get_tree().change_scene_to_file("res://scenes/collection.tscn")
