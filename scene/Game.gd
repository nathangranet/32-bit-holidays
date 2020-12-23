extends Node2D

const PIPE_CLASS = preload("res://scene/Pipe.tscn")
const HOUSE_CLASS = preload("res://scene/House.tscn")
var score = -3 setget set_score

func _ready():
	randomize()

func _process(delta):
	pass

func _on_SpawnWallTimer_timeout():
	var y = rand_range(-200, 200) + 375
	var x = rand_range(-50, 50) + 1030
	var house = HOUSE_CLASS.instance()
	house.position = Vector2(x, 720)
	self.add_child(house)
	var pipe = PIPE_CLASS.instance()
	pipe.position = Vector2(1200, y)
	self.add_child(pipe)
	self.score += 1


func _on_Player_game_ended():
	$Node2D/Replay/Label.text = String(score) if score > 0 else "0"
	$Node2D/Replay.show()
	get_tree().set_pause(true)


func set_score(value):
	score = value
	if $Node2D/Label:
		if value >= 0:
			$Node2D/Label.text = String(value)
		else:
			$Node2D/Label.text = "0"
