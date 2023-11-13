extends TextureRect


func timeStuff() -> void:
	$BouncyTimer.start()

func _on_timer_timeout():
	print("k")
	self.visible = false
	
