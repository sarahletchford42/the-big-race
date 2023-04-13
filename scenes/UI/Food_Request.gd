extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	food()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func food():
	self.visible = true
	var thought = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Thought_Bubble")
	thought.visible = true
	var inv = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Inventory")
	var rand_item = randi_range(0, inv.get_item_count())
	var display = inv.get_item_icon(rand_item)
	self.set_texture(display)
