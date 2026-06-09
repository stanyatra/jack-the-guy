extends Control




#This section is for connecting scenes
func _on_play_pressed() -> void:
	$Buttonpress.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	

func _on_quit_pressed() -> void:
	$Buttonpress.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().quit()
	

func _on_info_pressed() -> void:
	$Buttonpress.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://scenes/infopanel.tscn")
	

#This section is for controlling colors
func _on_play_mouse_entered() -> void:
	$Play.modulate=Color.AQUA
	


func _on_play_mouse_exited() -> void:
	$Play.modulate=Color.WHITE



func _on_info_mouse_entered() -> void:
	$Info.modulate=Color.AQUA


func _on_info_mouse_exited() -> void:
	$Info.modulate=Color.WHITE


func _on_quit_mouse_entered() -> void:
	$Quit.modulate=Color.AQUA


func _on_quit_mouse_exited() -> void:
	$Quit.modulate=Color.WHITE
