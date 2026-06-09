extends Control





func _on_back_mouse_entered() -> void:
	$Back.modulate=Color.AQUA



func _on_back_mouse_exited() -> void:
	$Back.modulate=Color.WHITE


func _on_back_pressed() -> void:
	$Buttonpress.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://scenes/menu.tscn");
