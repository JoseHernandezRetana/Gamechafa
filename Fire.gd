extends Node2D



func _process(delta):
	$CPUParticles2D.position = get_global_mouse_position()
	if Input.is_action_just_pressed("MoveDown"):
		$CPUParticles2D.emitting = !$CPUParticles2D.emitting
