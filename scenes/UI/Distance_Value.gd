extends RichTextLabel


var distance = float(1)
@export var speed : float
@onready var thought = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Thought_Bubble")


func dist_add(dist_added):
	distance = "%.3f" % (float(distance) + dist_added)
	set_text(str(distance) + "m")

func _ready():
	pass

func _process(delta):
	var value = float(delta * speed)
	dist_add(value)
	print(speed)
	if speed <= -7:
		speed = -7.0
	if speed >= 1:
		speed = 1.0

func speed_up():
	if speed < 0.99999:
		speed += .2
	if speed >= 1:
		speed = 1.0
	
func speed_down():
	if speed > -6.999999:
		if thought.visible:
			speed = speed - .17
			print("DOWN EXTRA!")
		else:
			speed = speed - .05
			print("DOWN NORMAL")
	if speed <= -7:
		speed = -7.0

func _on_slow_down_timeout():
	speed_down()
