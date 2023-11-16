extends Control

var menuMus = AudioServer.get_bus_index("menuMusic")
var gameMus = AudioServer.get_bus_index("gameMusic")

func _ready():
	if AudioServer.is_bus_mute(menuMus) == true:
		$TabContainer/SettingsMenu/settingsmenu/MenuMusic.set_pressed_no_signal(false)
	else:
		$TabContainer/SettingsMenu/settingsmenu/MenuMusic.set_pressed_no_signal(true)
	if AudioServer.is_bus_mute(gameMus) == true:
		$TabContainer/SettingsMenu/settingsmenu/GameMusic.set_pressed_no_signal(false)
	else:
		$TabContainer/SettingsMenu/settingsmenu/GameMusic.set_pressed_no_signal(true)
		
	

func _on_button_pressed():
	get_tree().change_scene_to_file("res://SceneFolder/menu.tscn")


func _on_menu_music_toggled(button_pressed):
	AudioServer.set_bus_mute(menuMus, not AudioServer.is_bus_mute(menuMus))
	


func _on_game_music_toggled(button_pressed):
	AudioServer.set_bus_mute(gameMus, not AudioServer.is_bus_mute(gameMus))
	
