#extends CharacterBody2D


#const FLOAT_AMPLITUDE = 10
#const FLOAT_PERIOD = 2

#var position_offset = Vector2.ZERO

#func _physics_process(delta):
	#var float_offset = Vector2(0, FLOAT_AMPLITUDE * sin(TAU * Engine.get_singleton('OS').get_ticks_usec() / 1000000.0 / FLOAT_PERIOD))
	#position_offset = float_offset
	#var motion = position_offset + delta * velocity
	#var collision = move_and_collide(motion)
	#if collision:
		#velocity = Vector2.ZERO

