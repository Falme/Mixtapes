extends Control

var this : Control = self
@export var gameNumber : String

func _ready():
	_load_info()

func _load_info():
	var filePath: String = OS.get_executable_path().get_base_dir().path_join("Games").path_join(gameNumber).path_join("mixtape_info.txt")
	var file = FileAccess.open(filePath, FileAccess.READ)
	var content = file.get_as_text()

	var infoArray = content.split("\r\n")

	var gameTitle = infoArray[0].split(":")[1]
	var gameAuthor = infoArray[1].split(":")[1]
	var gameBanner = infoArray[2].split(":")[1]
	var gameExecutable = infoArray[3].split(":")[1]

	_load_label(gameTitle, gameAuthor)
	_load_banner(gameBanner)
	_load_executable(gameExecutable)

func _load_label(_titleName, _authorName):
	var label_text : String = _titleName+"\n"
	label_text += "👥 "+_authorName
	$TapeLabel/TitleGame.text = label_text
	pass

func _load_banner(_bannerName):
	var bannerPath: String = OS.get_executable_path().get_base_dir().path_join("Games").path_join(gameNumber).path_join(_bannerName)
	var imageFile = Image.load_from_file(bannerPath)

	# Load image to Tape Background
	$Tape/GameBGImage.texture = ImageTexture.create_from_image(imageFile)

func _load_executable(_executableName):
	$ToGame.executableName = _executableName
	$ToGame.gameNumber = gameNumber
	pass
