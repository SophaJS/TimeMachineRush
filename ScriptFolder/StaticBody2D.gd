extends StaticBody2D

@onready var text = $TextureRect

func Display(value: bool)->void:
	text.visible = value
	if value == true:
		SoundEffects.PaperPlay()
	
	
