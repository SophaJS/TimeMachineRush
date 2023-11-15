class_name HitBox
extends Area2D

@export var impact = true

func _init() -> void:
	collision_layer = 2
	collision_mask = 0
