extends Button

var executableName : String
var gameNumber : String

var thread: Thread

func _ready():
	thread = Thread.new()

func _on_pressed() -> void:
	thread.start(_open_game.bind())
	pass

func _open_game() -> void:
	var path = OS.get_executable_path().get_base_dir()+"/Games/"+gameNumber+"/"
	OS.execute("CMD.exe", ["/C", "cd "+path+" && "+executableName], [])
	pass
	
func _exit_tree():
	thread.wait_to_finish()
