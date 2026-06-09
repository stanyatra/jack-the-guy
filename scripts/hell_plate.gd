extends Area2D

@onready var label: Label = $Label
@onready var label_2: Label = $Label2

func _ready():
	label.visible=false;
	label_2.visible=false;
	
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D



func _on_body_entered(body) -> void:
	label.visible=true;
	label_2.visible=true;
	audio_stream_player_2d.play();
	await get_tree().create_timer(5).timeout
	queue_free()
