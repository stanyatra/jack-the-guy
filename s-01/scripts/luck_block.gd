extends Area2D

@onready var win_sound: AudioStreamPlayer2D = $WinSound


@onready var label: Label = $Label

func _ready():
	label.visible=false;

func _on_body_entered(body: Node2D) -> void:
	label.visible=true;
	
	win_sound.play()
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
