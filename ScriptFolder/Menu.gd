extends Control

func _ready():
	Music.stopLose()
	Music.stopWin()
	MenuMusic.playMusic()
	Music.stopMusic()
	

func _on_play_pressed():
	get_tree().change_scene_to_file("res://SceneFolder/world.tscn")
	SoundEffects.playButton()

func _on_quit_pressed():
	get_tree().quit()
	SoundEffects.playButton()

func _on_settings_pressed():
	get_tree().change_scene_to_file("res://SceneFolder/settings_menu.tscn")
	SoundEffects.playButton()
