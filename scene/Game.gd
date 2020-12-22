extends Node2D

const PIPE_CLASS = preload("res://scene/Pipe.tscn")


func _ready():
	var pipe = PIPE_CLASS.instance()
	pipe.position = Vector2(500, 0)
	self.add_child(pipe)


func _process(delta):
	pass


func _on_SpawnWallTimer_timeout():
	var pipe = PIPE_CLASS.instance()
	pipe.position = Vector2(500, 0)
	self.add_child(pipe)
