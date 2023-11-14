extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -700.0

@onready var sprite = $Sprite2D
@onready var ap = $AnimationPlayer

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("W") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("A", "D")
	if direction == -1:
		velocity.x = direction * SPEED
		sprite.flip_h = true
		ap.play("Walking")
	elif direction == 1:
		velocity.x = direction * SPEED
		sprite.flip_h = false
		ap.play("Walking")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		sprite.flip_h = false
		ap.play("Idle")
		

	move_and_slide()
