extends Sprite2D

@export var speed = 200

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
for i in range(get_slide_collision_count()):
 
		var collision = get_slide_collision(i)
 
		if collision.get_collider() is RigidBody2D:
 
			var rigid_body = collision.get_collider()
 
			var push_direction = -collision.get_normal()
