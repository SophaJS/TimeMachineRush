extends StaticBody2D

@onready var text = $Password/DisplayPasscode
@onready var pasc = $Password
var active = true

func Display(value: bool)->void:
	if active == true:
		text.visible = value
		pasc.visible = value
	
func Reward():
	if active == true:
		$BouncyBoots.visible = true
		$BouncyBoots.doThing()
		owner.changeJump()
		active = false
	
	
