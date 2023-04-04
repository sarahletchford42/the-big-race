#extends CharacterBody2D


#func _ready():
	#var collision_shape = CollisionShape2D.new()
	#var shape = ConvexPolygonShape2D.new()
	#shape.set_points([Vector2(0,0), Vector2(32, 0), Vector2(32, 16), Vector2(0, 16)])
	#collision_shape.shape = shape
	#add_child(collision_shape)
	
	
#Moving the Platform...Not sure if we want the platforms to move or not 
#func _process(delta):
	#var motion = Vector2(0, 0)
	#motion.x = sin(OS.get_ticks_msec() / 1000) * 100
	#move_and_slide(motion * delta)
	
	
#func _on_Platform_body_entered(body):
	#if body.is_in_group("player"):
		#body.call("stick_to_platform", self)
