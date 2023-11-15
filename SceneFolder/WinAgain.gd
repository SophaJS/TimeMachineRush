extends StaticBody2D

var value = false

func Check(val: bool) -> void:
	value = val
	get_parent().win()
	
		
