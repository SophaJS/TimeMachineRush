extends Control

var seconds = 30

func _ready() -> void:
	seconds = 20
	$Seconds.text = str(seconds)

func _on_timer_timeout():
	if seconds == 0:
		DoStuff()
	else:
		seconds -= 1
		if seconds>=10:
			$Seconds.text = str(seconds)
		elif seconds>=0:
			$Seconds.text = "0" + str(seconds)
	
func DoStuff() -> void:
	$CharacterWASD.active = false
	$CharacterArrow.active = false
	$Timer2.start()
	

func _on_timer_2_timeout():
	get_tree().change_scene_to_file("res://SceneFolder/game_lose.tscn")
