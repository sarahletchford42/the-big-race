extends RichTextLabel


var distance = float(1)
@export var speed : float

func dist_add(dist_added):
	distance = "%.3f" % (float(distance) + dist_added)
	set_text(str(distance) + "m")

func _ready():
	pass


func _process(delta):
	var value = float(delta * speed)
	dist_add(value)

func speed_up():
	if speed < 0.99999:
		speed += .2
		print(speed)

	if speed >= 1:
		speed = 1.0
	
func speed_down():
	if speed > -7:
		speed = speed - .05
		print(speed)
	else:
		speed = -7

func _on_slow_down_timeout():
	speed_down()
