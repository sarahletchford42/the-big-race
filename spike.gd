extends CharacterBody2D


func _ready():
	var collision_shape = CollisionShape2D.new()
	var shape = ConvexPolygonShape2D.new()
	shape.set_points([Vector2(0,0), Vector2(32, 0), Vector2(16, 32)])
	collision_shape.shape = shape
	add_child(collision_shape)
	
	
func _process(delta):
	set_position(position + Vector2(0, 100 * delta))
	
	
func _on_Spike_body_entered(body):
	if body.is_in_group("player"):
		body.call("lose_life")
