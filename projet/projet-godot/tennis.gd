extends Sprite2D

@export var speed = 400
var direction = Vector2.ZERO

func _ready():

	direction = Vector2(1, 0)

func _process(delta):
	position += direction * speed * delta


	var viewport_size = get_viewport_rect().size
	if position.x < 0 or position.x > viewport_size.x:
		position = viewport_size / 2
		direction = Vector2.ZERO

func _on_area_entered(area):
	if area.name == "panda":
		
		direction = Vector2(1, 0)
	elif area.name == "monkey":
		
		direction = Vector2(-1, 0)
