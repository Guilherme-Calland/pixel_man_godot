extends Node2D

func animate(inputs, sprite, isOnFloor):
	if inputs == null:
		return
	
	var left = inputs["left"]
	var right = inputs["right"]
	var grab = inputs["grab"]
	
	if left:
		sprite.play("walk")
		sprite.flip_h = true
	elif right:
		sprite.play("walk")
		sprite.flip_h = false
	else:
		sprite.play("idle")
	
	if not isOnFloor:
		sprite.play("jump")
	
