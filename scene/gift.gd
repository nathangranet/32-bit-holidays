extends Sprite

func _process(delta):
	self.position.y += 400*delta
	self.position.x -= 200*delta
