extends Control

@onready var mute_music = $TabContainer/SettingsMenu/settingsmenu/CheckButtonMusic
@onready var mute_sound_effects = $TabContainer/SettingsMenu/settingsmenu/CheckButtonSoundEffects

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_check_button_music_toggled(button_pressed):
	pass # Replace with function body.


func _on_check_button_sound_effects_toggled(button_pressed):
	pass # Replace with function body.
