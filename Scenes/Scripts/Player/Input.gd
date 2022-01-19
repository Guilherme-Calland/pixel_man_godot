extends Node2D

signal input
var inputs 

func _process(delta):
	inputs = {
		"right": false,
		"left": false,
		"jump": false,
		"grab": false
	}
	
	if Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		inputs["right"] = true
		print("right")
	elif Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		inputs["left"] = true
		print("left")
	
	if Input.is_action_just_pressed("jump"):
		inputs["jump"] = true
		print("jump")
	elif Input.is_action_pressed("grab"):
		inputs["grab"] = true
		print("grab")
		
	emit_signal("input", inputs)
	
