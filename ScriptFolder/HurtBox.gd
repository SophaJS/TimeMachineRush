class_name MyHurtBox
extends Area2D

func _init() -> void:
	collision_layer = 0
	collision_mask = 2
	
func _ready() -> void:
	self.area_entered.connect(_on_area_entered)
	self.area_exited.connect(_on_area_exited)
	
func _on_area_entered(hitbox: MyHitBox) -> void:
	if hitbox == null:
		return
		
	if owner.has_method("Display"):
		owner.Display(hitbox.impact)
		
func _on_area_exited(hitbox: MyHitBox) -> void:
	if hitbox == null:
		return
		
	if owner.has_method("Display"):
		owner.Display(false)
		
