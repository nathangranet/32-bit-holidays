extends Area2D

var speed = 200

func _process(delta):
	self.position.x -= speed * delta
	if self.position.x < -100:
		self.queue_free()
