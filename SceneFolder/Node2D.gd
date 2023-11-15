extends Node2D

func win() -> void:
	if $WinAgain.value == true and $Win.value == true:
		get_tree().change_scene_to_file("res://SceneFolder/game_over.tscn")
