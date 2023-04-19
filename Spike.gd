extends Area2D

var speed: float = 400

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= speed * delta

func _on_body_entered(_body):
	if _body.is_in_group("obstacles"):
		var player = get_tree().get_first_node_in_group("obstacles")
		get_node("CollisionShape2D").set_deferred("disabled", true)
		player.hit_by_spike()
		queue_free()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free() 
