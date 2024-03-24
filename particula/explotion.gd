extends Node2D



func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		$CPUParticles2D.emitting = true
		
	if Input.is_action_just_pressed("MouseLeftClick"):
		$CPUParticles2D.position = get_global_mouse_position()
		$CPUParticles2D.emitting = true
