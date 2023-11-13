extends Area2D

func _init() -> void:
	collision_layer = 0
	collision_mask = 2
	
func _ready() -> void:
	self.area_entered.connect(_on_area_entered)
	
func _on_area_entered(hitbox: MyHitBox) -> void:
	if hitbox == null:
		return
		
	if owner.has_method("Display"):
		print("k")
		owner.Display(hitbox.impact)
		
func _on_area_exited(hitbox: MyHitBox) -> void:
	if hitbox == null:
		return
		
	if owner.has_method("Display"):
		print("h")
		owner.Display(false)
		
