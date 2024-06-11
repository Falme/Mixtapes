extends Node

var flag_animation_prefab = preload("res://Prefabs/Transition/slide_flag.tscn")
var flag_animation_instance : Control
var flag_colors_data_path = "res://Data/flagcolors.json"
var flag_colors_data = {}
var flag_colors_index = 0
var flag_colors_size = 0
var _flag_stripes: Array[Control] = []

func start_transition(action:Callable):
	_initialize_colors()
	_initialize_flag_animation_instantiation()
	_slide_in_flag_animation()
	
	await get_tree().create_timer(4).timeout
	
	action.call()
	
	_slide_out_flag_animation()

func _initialize_colors():	
	# Load JSON File
	flag_colors_data = load_json_file(flag_colors_data_path)
	
	# Randomize the Flag Colors
	var rng = RandomNumberGenerator.new()
	flag_colors_index = rng.randi_range(0, flag_colors_data["flags"].size()-1)
	
	#Save Flag Stripes Length for optimized call
	flag_colors_size = flag_colors_data["flags"][flag_colors_index]["colors"].size()
	
	# initialize Flag Stripes array
	_flag_stripes.resize(120)

func _initialize_flag_animation_instantiation():
	flag_animation_instance = flag_animation_prefab.instantiate()


func _slide_in_flag_animation():
	for n in _flag_stripes.size():
		await get_tree().create_timer(0.02).timeout
		add_flag_strip(n)

func _slide_out_flag_animation():
	for n in _flag_stripes.size():
		await get_tree().create_timer(0.02).timeout
		_flag_stripes[n].local_play("slide_down")
	pass

func add_flag_strip(index) -> void:
	
	var _r = (flag_colors_data["flags"][flag_colors_index]["colors"][(index%flag_colors_size)]["r"])/255
	var _g = (flag_colors_data["flags"][flag_colors_index]["colors"][(index%flag_colors_size)]["g"])/255
	var _b = (flag_colors_data["flags"][flag_colors_index]["colors"][(index%flag_colors_size)]["b"])/255
	
	var _instance = flag_animation_instance.duplicate()
	_instance.local_position(Vector2(index*10,0))
	_instance.set_color(Color(_r,_g,_b))
	_instance.local_play("slide_up")
	$".".add_child(_instance)
	
	_flag_stripes[index] = _instance

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
