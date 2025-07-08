class_name CallExternalGame
extends Button

var executableName : String
var gameNumber : String

const gamesFolder : String = "Games"

var os_data_path = "res://Data/os_runner/os_runner.json"
var os_data = {}

var thread: Thread

func _ready():
	os_data = load_json_file(os_data_path)
	thread = Thread.new()

func _on_pressed() -> void:
	thread.start(_open_game.bind())

func _open_game() -> void:
	var path: String = OS.get_executable_path().get_base_dir().path_join(gamesFolder).path_join(gameNumber)

	var command: String = ""
	var args: Array[Variant] = []

	for os in os_data["os"]:
		if OS.get_name() == os["id"]:
			command = os["command"]
			args = [os["argA"], os["argB"] % [path, executableName]]
			OS.execute(command, args, [])
			return

func _exit_tree():
	thread.wait_to_finish()

func load_json_file(filePath : String):
	if FileAccess.file_exists(filePath):
		var dataFile = FileAccess.open(filePath, FileAccess.READ)
		var parsedResult = JSON.parse_string(dataFile.get_as_text())
		
		if parsedResult is Dictionary:
			return parsedResult
		else:
			print("Error reading File")
			
	else:
		print("File Doesnt Exist")
