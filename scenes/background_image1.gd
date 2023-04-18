extends Sprite2D
var velocity: float = -5
var g_texture_width: float = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	g_texture_width = texture.get_size().x * scale.x

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	position.x += velocity
	_attempt_reposition()
	
func _attempt_reposition():
	if position.x < -g_texture_width:
		position.x += 2 * g_texture_width
