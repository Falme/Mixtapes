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
	var path = OS.get_executable_path().get_base_dir().plus_file("Games").plus_file(gameNumber).plus_file("mixtape_info.txt")

	var command: String = ""
	var args: Array[Variant] = []

	if OS.get_name() == "Windows":
		command = "CMD.exe"
		args = ["/C", "cd "+path+" && "+executableName]
	else:
		command = "sh"
	args = ["-c", "cd "+path+" && ./"+executableName]

	OS.execute(command, args, false)

	pass

func _exit_tree():
	thread.wait_to_finish()
