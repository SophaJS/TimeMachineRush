extends Control

var next = 1
var value = false

func reset()->void:
	next = 1

func _on_enter_pressed():
	if $Key_1.text == "8":
		if $Key_2.text == "0":
			if $Key_3.text == "4":
				if $Key_4.text == "4":
					$Passcode.text = "Unlocked"
					$Timer.start()
					value = true
	else:
		$Passcode.text = "Error"
		$Key_1.text = "_"
		$Key_2.text = "_"
		$Key_3.text = "_"
		$Key_4.text = "_"
		next = 1

func _on_delete_pressed():
	$Key_1.text = "_"
	$Key_2.text = "_"
	$Key_3.text = "_"
	$Key_4.text = "_"
	next = 1
	$Passcode.text = "Passcode"

func _on_button_pressed():
	if next == 1:
		$Key_1.text = "1"
	elif next == 2:
		$Key_2.text = "1"
	elif next == 3:
		$Key_3.text = "1"
	elif next == 4:
		$Key_4.text = "1"
	next = next+1


func _on_button_2_pressed():
	if next == 1:
		$Key_1.text = "2"
	elif next == 2:
		$Key_2.text = "2"
	elif next == 3:
		$Key_3.text = "2"
	elif next == 4:
		$Key_4.text = "2"
	next = next+1.

func _on_button_3_pressed():
	if next == 1:
		$Key_1.text = "3"
	elif next == 2:
		$Key_2.text = "3"
	elif next == 3:
		$Key_3.text = "3"
	elif next == 4:
		$Key_4.text = "3"
	next = next+1.


func _on_button_4_pressed():
	if next == 1:
		$Key_1.text = "4"
	elif next == 2:
		$Key_2.text = "4"
	elif next == 3:
		$Key_3.text = "4"
	elif next == 4:
		$Key_4.text = "4"
	next = next+1.


func _on_button_5_pressed():
	if next == 1:
		$Key_1.text = "5"
	elif next == 2:
		$Key_2.text = "5"
	elif next == 3:
		$Key_3.text = "5"
	elif next == 4:
		$Key_4.text = "5"
	next = next+1.


func _on_button_6_pressed():
	if next == 1:
		$Key_1.text = "6"
	elif next == 2:
		$Key_2.text = "6"
	elif next == 3:
		$Key_3.text = "6"
	elif next == 4:
		$Key_4.text = "6"
	next = next+1.


func _on_button_7_pressed():
	if next == 1:
		$Key_1.text = "7"
	elif next == 2:
		$Key_2.text = "7"
	elif next == 3:
		$Key_3.text = "7"
	elif next == 4:
		$Key_4.text = "7"
	next = next+1.


func _on_button_8_pressed():
	if next == 1:
		$Key_1.text = "8"
	elif next == 2:
		$Key_2.text = "8"
	elif next == 3:
		$Key_3.text = "8"
	elif next == 4:
		$Key_4.text = "8"
	next = next+1.



func _on_button_9_pressed():
	if next == 1:
		$Key_1.text = "9"
	elif next == 2:
		$Key_2.text = "9"
	elif next == 3:
		$Key_3.text = "9"
	elif next == 4:
		$Key_4.text = "9"
	next = next+1.



func _on_button_10_pressed():
	if next == 1:
		$Key_1.text = "0"
	elif next == 2:
		$Key_2.text = "0"
	elif next == 3:
		$Key_3.text = "0"
	elif next == 4:
		$Key_4.text = "0"
	next = next+1.


func _on_button_11_pressed():
	self.visible = false
	$DisplayPasscode.visible = false


func _on_timer_timeout():
	self.visible = false
	$DisplayPasscode.visible = false
	owner.Reward()
	
	
