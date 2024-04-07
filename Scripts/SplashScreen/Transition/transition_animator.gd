extends Node

var flag_animation_prefab = preload("res://Prefabs/Transition/slide_flag.tscn")
var flag_animation_instance : Control
var flag_colors_data_path = "res://Data/flagcolors.json"
var flag_colors_data = {}
var flag_colors_index = 0
var flag_colors_size = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	flag_colors_data = load_json_file(flag_colors_data_path)
	
	var rng = RandomNumberGenerator.new()
	flag_colors_index = rng.randi_range(0, flag_colors_data["flags"].size()-1)
	
	flag_colors_size = flag_colors_data["flags"][flag_colors_index].size()
	
	flag_animation_instance = flag_animation_prefab.instantiate()
	
	for n in 80:
		await get_tree().create_timer(0.02).timeout
		add_flag_strip(n)

func add_flag_strip(index) -> void:
	
	var _r = (flag_colors_data["flags"][flag_colors_index][(index%flag_colors_size)]["r"])/255
	var _g = (flag_colors_data["flags"][flag_colors_index][(index%flag_colors_size)]["g"])/255
	var _b = (flag_colors_data["flags"][flag_colors_index][(index%flag_colors_size)]["b"])/255
	
	var _instance = flag_animation_instance.duplicate()
	_instance.local_position(Vector2(index*10,0))
	_instance.set_color(Color(_r,_g,_b))
	_instance.local_play("slide_up")
	$".".add_child(_instance)

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
