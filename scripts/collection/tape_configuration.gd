class_name TapeConfiguration extends Control

var this : Control = self

const gamesFolder : String = "Games"
const infoFolder : String = "mixtape_info.txt"
const infoFile : String = "mixtape_info.json"

const splitCharacter : String = ":"
const authorIcon: String = "👥 "

var gamePath : String
var infoData = {}

@export var gameNumber : String

func _ready():
	gamePath = OS.get_executable_path().get_base_dir().path_join(gamesFolder).path_join(gameNumber)
	_load_info()

func _load_info():
	var filePath: String = gamePath.path_join(infoFile)
	infoData = load_json_file(filePath)

	var gameTitle = infoData["title"]
	var gameAuthor = infoData["author"]
	var gameBanner = infoData["art"]
	var gameExecutable = infoData["file"]
	
	_load_label(gameTitle, gameAuthor)
	_load_banner(gameBanner)
	_load_executable(gameExecutable)

func _load_label(_titleName, _authorName):
	var label_text : String = _titleName+"\n"
	label_text += authorIcon+_authorName
	$TapeLabel/TitleGame.text = label_text

func _load_banner(_bannerName):
	var bannerPath: String = gamePath.path_join(_bannerName)
	var imageFile = Image.load_from_file(bannerPath)

	# Load image to Tape Background
	$Tape/GameBGImage.texture = ImageTexture.create_from_image(imageFile)

func _load_executable(_executableName):
	$ToGame.executableName = _executableName
	$ToGame.gameNumber = gameNumber

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
