extends CharacterBody2D

@export var push_force = 1000.0
@export var speed = 350

func _process(delta):
	var direction = Vector2.ZERO

	if Input.is_action_pressed("move_left_p2"):
		direction.x -= 1
	if Input.is_action_pressed("move_right_p2"):
		direction.x += 1
	if Input.is_action_pressed("move_up_p2"):
		direction.y -= 1
	if Input.is_action_pressed("move_down_p2"):
		direction.y += 1

	if direction != Vector2.ZERO:
		direction = direction.normalized()
		position += direction * speed * delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
	
	get_tree().reload_current_scene()
