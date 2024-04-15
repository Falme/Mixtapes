extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	print(OS.get_executable_path().get_base_dir())
	OS.execute(OS.get_executable_path().get_base_dir()+"\\\\Games\\NoPlayersOnline.exe", [])
	pass # Replace with function body.
