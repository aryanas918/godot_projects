extends Sprite2D
var speed = 400
var angular_speed = PI
func _process(d):
	
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
	rotation += angular_speed * d * direction
	var velocity = Vector2.UP.rotated(rotation) * speed * direction
	position += velocity * d
