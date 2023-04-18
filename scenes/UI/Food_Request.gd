extends TextureRect

@onready var thought = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Thought_Bubble")
@onready var inv = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Inventory")
@onready var rand_item = randi_range(0, inv.get_item_count())
@onready var display = inv.get_item_icon(rand_item)
# Called when the node enters the scene tree for the first time.
func _ready():
	food()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func food():
	thought.visible = true
	self.visible = true
	self.set_texture(display)
