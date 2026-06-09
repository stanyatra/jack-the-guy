extends Area2D


@onready var animation_player: AnimationPlayer = $PickupSound/AnimationPlayer



func _on_body_entered(body: Node2D) -> void:
	var ui_manager=get_node("/root/Game/Scorefix");
	ui_manager.collect_coin()
	animation_player.play("pickup")
	
