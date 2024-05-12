extends Button

@export var executableName : String

func _on_pressed() -> void:
	OS.shell_open(OS.get_executable_path().get_base_dir()+"/Games/"+executableName)
	pass
