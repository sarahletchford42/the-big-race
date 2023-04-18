extends Control

var is_paused = false : set = set_is_paused

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused
	if visible == true:
		$retry_button.grab_focus()


func _on_quit_button_pressed():
	self.is_paused = false
	get_tree().change_scene_to_file("res://scenes/UI/title_screen.tscn");


func _on_retry_button_pressed():
	self.is_paused = false
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn");
