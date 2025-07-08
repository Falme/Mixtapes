class_name Caption
extends RichTextLabel

@onready var this: RichTextLabel = self 

@export var possibleCaptions: Array[String]

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	print(OS.get_locale())
	var selectedCaption = tr(possibleCaptions[rng.randi_range(0, possibleCaptions.size()-1)])
	this.text = "[outline_color=cyan][outline_size=2][font_size=26][center][b]"+selectedCaption
