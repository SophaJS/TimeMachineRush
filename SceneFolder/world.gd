extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func yeah() -> void:
	$PasscodeImpact/BouncyBoots.visible = true
	$BouncyTimer.start()


func _on_bouncy_timer_timeout():
	$PasscodeImpact/BouncyBoots.visible = false
