extends KinematicBody2D

var up = Vector2(0, -1)
var motion = Vector2()

var inputs
export var speed = 4
export var jumpForce = 16
export var gravity = 2

func _ready():
	$Input.connect("input", self, "retrieveInputs")
	$Movement.connect("movement", self, "retrieveMovements")

func _process(delta):
	$Movement.move(inputs, speed, jumpForce, gravity, is_on_floor())
	$Animation.animate(inputs, $AnimatedSprite, is_on_floor())

func retrieveInputs(i):
	inputs = i

func retrieveMovements(m):
	motion = m
	move_and_slide(motion, up)
 
