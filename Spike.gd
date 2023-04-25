extends Area2D

var velocity: float = 266

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not get_tree().current_scene.name == "main_ui":
		var speed = 0 if null else get_tree().get_first_node_in_group("get_speed").speed
		position.x -= (velocity * speed + velocity) * delta

func _on_body_entered(_body):
	if _body.is_in_group("obstacles"):
		print("hit")
		queue_free()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free() 
	
func die():
	queue_free()
