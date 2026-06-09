extends Node2D


@onready var player: CharacterBody2D = $Player


func _ready():
	var eyepowerup= $Area2D2
	var shoepowerup=$Area2D3
	eyepowerup.powerup_collected.connect(_on_powerup_collected)
	shoepowerup.powerup_collected2.connect(_on_powerup_collected2)
	
func _on_powerup_collected(body):
	body.activate_power_up() 

func _on_powerup_collected2(body):
	body.activate_shoe_collected()


func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
	



	
