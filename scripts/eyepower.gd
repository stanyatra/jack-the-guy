extends Area2D

signal powerup_collected



func _on_body_entered(body) -> void:
	powerup_collected.emit(body)
	queue_free()
