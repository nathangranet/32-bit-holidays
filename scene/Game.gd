extends Node2D

const PIPE_CLASS = preload("res://scene/Pipe.tscn")


func _ready():
	randomize()
	var pipe = PIPE_CLASS.instance()
	pipe.position = Vector2(500, 0)
	self.add_child(pipe)


func _process(delta):
	pass


func _on_SpawnWallTimer_timeout():
	var y = rand_range(-200, 200) + 375
	var pipe = PIPE_CLASS.instance()
	pipe.position = Vector2(1200, y)
	self.add_child(pipe)
