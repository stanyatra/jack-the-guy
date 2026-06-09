extends Node2D


var coinCount=0;

@onready var camera_2d: Camera2D = $"../Player/Camera2D"
@onready var score_label: Label = $Score_label

func collect_coin():
	coinCount+=1
	update_score()
# Called every frame. 'delta' is the elapsed time since the previous frame.

func collect_fruit():
	coinCount+=2
	update_score()



func _process(delta: float) -> void:
	global_position=camera_2d.global_position;

func update_score():
	score_label.text="Score: "+ str(coinCount)
