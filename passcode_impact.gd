extends StaticBody2D

@onready var text = $DisplayPasscode
@onready var pasc = $Password

func Display(value: bool)->void:
	text.visible = value
	pasc.visible = value
	
