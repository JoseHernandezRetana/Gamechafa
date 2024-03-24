extends Area2D





func _on_body_entered(body):
	if body.get_name() == "Player":
		print("has ganado")
		var CurrentWorldNumver: int = int(get_tree().current_scene.name.replace("level", "" ))
		var nextWorldNumber = CurrentWorldNumver + 1
		var WorldToLoad: String = str("res://Scenes/level", nextWorldNumber, ".tscn")
		get_tree().change_scene_to_file(WorldToLoad)
	
