extends ItemList


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func timer_start():
	var timer = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Timer")
	var thought = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Thought_Bubble")
	var food = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Thought_Bubble/Food_Request")
	timer.start(randf_range(1, 3))
	thought.visible = false
	food.visible = false



func _on_timer_timeout():
	var food = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Thought_Bubble/Food_Request")
	var inv = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Inventory")
	var timer = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Timer")
	timer.stop()
	food.food()
	for i in range(inv.get_item_count()):
		inv.set_item_disabled(i, false)


func _on_item_selected(index):
	var food = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Thought_Bubble/Food_Request")
	var sp = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Distance_Value")
	var inv = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Inventory")	
	inv.deselect_all()
	for i in range(inv.get_item_count()):
		inv.set_item_disabled(i, true)
	timer_start()
	print("click")
	if food.get_texture() == self.get_item_icon(index):
		sp.speed_down()
	if food.get_texture() != self.get_item_icon(index):
		sp.speed_up()
