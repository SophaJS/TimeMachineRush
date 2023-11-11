extends PointLight2D

@onready var timer = $Timer

func _ready() -> void:
	timer.start()

func _on_timer_timeout():
	var ran_amt = (randf())
	if ran_amt < 0.5:
		ran_amt = 2
	self.energy = ran_amt
