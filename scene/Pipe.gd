extends Area2D


var speed = 200


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	self.position.x -= speed * delta
	if self.position.x < -100:
		self.queue_free()
