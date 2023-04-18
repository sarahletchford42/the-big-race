extends ItemList

@onready var timer = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Timer")
@onready var thought = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Thought_Bubble")
@onready var food = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Thought_Bubble/Food_Request")
@onready var inv = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Inventory")
@onready var sp = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Distance_Value")


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func timer_start():
	timer.start(randf_range(1, 3))
	thought.visible = false
	food.visible = false



func _on_timer_timeout():
	timer.stop()
	food.food()
	for i in range(inv.get_item_count()):
		inv.set_item_disabled(i, false)


func _on_item_selected(index):
	inv.deselect_all()
	if inv.is_item_disabled(0) == false:
		if food.get_texture() == self.get_item_icon(index):
			sp.speed_down()
		if food.get_texture() != self.get_item_icon(index):
			sp.speed_up()
	for i in range(inv.get_item_count()):
		inv.set_item_disabled(i, true)
	print("click")
	timer_start()
