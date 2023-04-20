extends RichTextLabel

var ui = null
var distance = float(1)
@export var speed : float
@export var string_dist : String
@export var final_distance : String

#func _enter_tree():
	#ui = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer")

func dist_add(dist_added):
	distance = "%.3f" % (float(distance) + dist_added)
	string_dist = str(distance) + "m"
	set_text(string_dist)
	
func ui_death():
	final_distance = distance
	print(final_distance)
	ui.visible = false
	distance = 0.0000000

	
func on_start():
	ui.visible = true
	distance = 1
	_process(0)

func _process(delta):
	var value = float(delta * speed)
	dist_add(value)

func speed_up():
	if speed < 0.99999:
		speed += .1
		print(speed)

	if speed >= 1:
		speed = 1.0
	
func speed_down():
	if speed > 0.10001:
		speed = speed - .1
		print(speed)
	if speed <= 0:
		speed = 0.1

