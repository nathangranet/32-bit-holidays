extends Sprite

var speed = 200

func _process(delta):
	self.position.x -= speed * delta
	if self.position.x < -100:
		self.queue_free()


func _on_Area2D_area_entered(area):
	print("test")
	$"../".score += 1
