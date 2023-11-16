extends Control

func _ready():
	Music.stopMusic()
	MenuMusic.playMusic()

func _on_play_pressed():
	get_tree().change_scene_to_file("res://SceneFolder/world.tscn")

func _on_quit_pressed():
	get_tree().quit()

func _on_settings_pressed():
	get_tree().change_scene_to_file("res://SceneFolder/settings_menu.tscn")
