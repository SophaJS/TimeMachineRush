extends StaticBody2D

@onready var text = $Password/DisplayPasscode
@onready var pasc = $Password

func Display(value: bool)->void:
	text.visible = value
	pasc.visible = value
	
func Reward():
	$BouncyBoots.visible = true
	$BouncyBoots.doThing()
	owner.changeJump()
	
	
