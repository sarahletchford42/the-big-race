extends Sprite2D
var velocity: float = 266
var g_texture_width: float = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	g_texture_width = texture.get_size().x * scale.x

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not get_tree().current_scene.name == "main_ui":
		var speed = 0 if null else get_tree().get_first_node_in_group("get_speed").speed
		position.x -= (velocity * speed + velocity) * delta
	_attempt_reposition()
	
func _attempt_reposition():
	if position.x < -g_texture_width:
		position.x += 2 * g_texture_width
