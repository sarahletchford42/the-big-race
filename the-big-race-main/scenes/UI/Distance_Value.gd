extends RichTextLabel

var distance = float(1)
@export var speed : float

func dist_add(dist_added):
	distance = "%.3f" % (float(distance) + dist_added)
	set_text(str(distance) + "m")

func _ready():
	pass


func _process(delta):
	for value in delta:
		value = float((delta * (speed * 2)))
		dist_add(value)

func speed_up():
	speed += .2
	print(speed)
	
func speed_down():
	speed = speed - .2
	print(speed)

