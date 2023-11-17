extends Control

func _ready():
	Music.stopMusic()
	Music.playWin()

func _on_button_pressed():
	get_tree().change_scene_to_file("res://SceneFolder/menu.tscn")
	SoundEffects.playButton()

