extends TextureRect

@onready var thought
@onready var inv
@onready var rand_item
@onready var display
# Called when the node enters the scene tree for the first time.
func _ready():
	thought = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Thought_Bubble")
	inv = get_tree().root.get_node("Main_Scene/Camera2D/Main_UI/CanvasLayer/Inventory")
	food()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func food():
	rand_item = randi_range(0, inv.get_item_count() - 1)
	display = inv.get_item_icon(rand_item)
	thought.visible = true
	self.visible = true
	self.set_texture(display)
