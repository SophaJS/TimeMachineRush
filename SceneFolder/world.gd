extends Node2D

func _ready():
	Music.playMusic()
	MenuMusic.stopMusic()
# Called when the node enters the scene tree for the first time.
func changeJump() -> void:
	$CountDown/CharacterArrow.JUMP_VELOCITY = -750.00
	
