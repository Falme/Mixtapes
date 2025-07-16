class_name Caption
extends Label

@onready var this: Label = self 

@export var possibleCaptions: Array[String]

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	print(OS.get_locale())
	var selectedCaption = tr(possibleCaptions[rng.randi_range(0, possibleCaptions.size()-1)])
	this.text = selectedCaption
