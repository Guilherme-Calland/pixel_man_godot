extends Node2D

func _on_Area2Trigger_body_entered(body):
	body.position.x += 10
	$Camera2D.position.x += 40
	$NewAreaTrigger.position.x += 40
	$PreviousAreaTrigger.position.x += 40

func _on_PreviousAreaTrigger_body_entered(body):
	body.position.x -= 10
	$Camera2D.position.x -= 40
	$PreviousAreaTrigger.position.x -= 40
	$NewAreaTrigger.position.x -= 40
