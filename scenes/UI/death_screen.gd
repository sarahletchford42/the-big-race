extends Control

var is_paused = false : set = set_is_paused

func go():
	self.is_paused = !is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused
	if visible == true:
		$quit_button.grab_focus()

func _on_ready():
	$quit_button.grab_focus()

func _on_quit_button_pressed():
	self.is_paused = false
	get_tree().change_scene_to_file("res://scenes/UI/title_screen.tscn");
	print("Title Screen")
