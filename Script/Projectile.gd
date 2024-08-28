extends Area3D

@export var speed: float = 10.0
@export var damage: int = 10


func _process(delta):
	global_translate(Vector3(0, 0, -speed) * delta)

func _on_body_entered(body):
	if body is CharacterBody3D:
		_on_impact(body)
		queue_free() 

func _on_impact(body):
	pass  
