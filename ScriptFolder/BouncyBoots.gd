extends TextureRect


# Called when the node enters the scene tree for the first time.
func doThing()->void:
	$Timer.start()
	


func _on_timer_timeout()->void:
	self.visible = false
	
