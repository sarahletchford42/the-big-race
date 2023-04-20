extends Node2D

# Called when the node enters the scene tree for the first time.
func _enter_tree():
	$Camera2D/Main_UI/CanvasLayer/Distance_Value.ui = $Camera2D/Main_UI/CanvasLayer
	$Player.UI = $Camera2D/Main_UI/CanvasLayer/Distance_Value
	$Camera2D/Main_UI/CanvasLayer/Distance_Value.on_start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
