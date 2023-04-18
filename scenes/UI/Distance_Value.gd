extends RichTextLabel

var velocity
var distance = float(1)
@export var speed : float

func dist_add(dist_added):
	distance = "%.3f" % (float(distance) + dist_added)
	set_text(str(distance) + "m")

func _ready():
	velocity = get_tree().root.get_node("Main_Scene/background_image1")


func _process(delta):
	var value = float(delta / (-velocity.velocity * speed))
	dist_add(value)

func speed_down():
	if speed < 0.99999:
		speed += .1
		print(speed)

	if speed >= 1:
		speed = 1.0
	
func speed_up():
	if speed > 0.10001:
		speed = speed - .1
		print(speed)
	if speed <= 0:
		speed = 0.1
