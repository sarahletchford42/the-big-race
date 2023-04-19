extends Control

func _on_ready():
	$quit_button.grab_focus()

func _on_quit_button_pressed():
	get_tree().change_scene_to_file("res://scenes/UI/title_screen.tscn");

func _on_retry_button_pressed():
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn");
