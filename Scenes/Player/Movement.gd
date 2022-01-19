extends Node2D

var motion = Vector2()
signal movement

func move(inputs, speed, jumpForce, gravity, isOnFloor):
	if inputs == null:
		return
	
	var left = inputs["left"]
	var right = inputs["right"]
	var jump = inputs["jump"]
	var grab = inputs["grab"]
	
	
	if left:
		motion.x = -speed
	elif right:
		motion.x = speed
	else:
		motion.x = 0
	
	if isOnFloor:
		if motion.y < 0:
			isOnFloor = false
##
	if isOnFloor:
		motion.y = gravity
		if jump:
			motion.y = -jumpForce
	else:
		motion.y += gravity
		
	emit_signal("movement", motion)
