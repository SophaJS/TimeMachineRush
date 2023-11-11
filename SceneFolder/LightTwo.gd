extends PointLight2D

@onready var timer = $Timer

func _ready() -> void:
	timer.start()

func _on_timer_timeout():
	var ran_amt = (randf())
	self.energy = ran_amt
