extends Area2D

signal powerup_collected2
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_body_entered(body) -> void:
	powerup_collected2.emit(body)
	audio_stream_player_2d.play();
	await get_tree().create_timer(0.15).timeout
	queue_free()
	
