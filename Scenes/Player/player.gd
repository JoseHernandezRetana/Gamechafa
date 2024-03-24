extends CharacterBody2D

func _process(delta):
	var movementVector = getMovementVector()
	var direction = movementVector.normalized()
	var targetVelocity = direction * 250
	var lerpWeight = 1 - exp(-delta * 50)
	
	velocity = velocity.lerp(targetVelocity, lerpWeight)
	move_and_slide()

func getMovementVector() -> Vector2:
	var xMovement = Input.get_action_strength("MoveRight") - Input.get_action_strength("MoveLeft")
	var yMovement = Input.get_action_strength("MoveDown") - Input.get_action_strength("MoveUp")
	return Vector2(xMovement, yMovement)
