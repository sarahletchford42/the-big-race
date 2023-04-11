extends ItemList


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_item_clicked(index, at_position, mouse_button_index):
	var food = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Thought_Bubble/Food_Request")
	var sp = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Distance_Value")
	if food.get_texture() == self.get_item_icon(index):
		sp.speed_down()
	else:
		sp.speed_up()
