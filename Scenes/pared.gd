extends Area2D




func _on_body_entered(body):
	if body.get_name() == "Player":
		print("el muro colisiono con: ", body)
		get_tree().reload_current_scene()
		
