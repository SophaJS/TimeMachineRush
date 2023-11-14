extends TextureRect

@onready var timer = $Timer

func doStuff() -> void:
	timer.start()

func _on_timer_timeout() -> void:
	self.visible = false
