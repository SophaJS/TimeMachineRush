class_name HurtLeft
extends Area2D

func _init() -> void:
	collision_layer = 0
	collision_mask = 2
	
func _ready() -> void:
	self.area_entered.connect(_on_area_entered)
	self.area_exited.connect(_on_area_exited)
	
func _on_area_entered(hitbox: HitBox) -> void:
	if hitbox == null:
		return
		
	if get_parent().has_method("Check"):
		get_parent().Check(hitbox.impact)
		
func _on_area_exited(hitbox: HitBox) -> void:
	if hitbox == null:
		return
		
	if get_parent().has_method("Check"):
		get_parent().Check(false)
		
		

		
