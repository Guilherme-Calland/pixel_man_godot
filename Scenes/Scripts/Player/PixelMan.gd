extends KinematicBody2D

var up = Vector2(0, -1)
var motion = Vector2()

var inputs

func _process(delta):
	$Input.connect("signal", self, "retrieveInputs")
	move_and_slide(motion, up)

func retrieveInputs(i):
	inputs = i
