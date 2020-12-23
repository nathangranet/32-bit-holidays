extends Sprite

func _process(delta):
	position.x -= 60 * delta
	if position.x < -450:
		position.x = 1450
