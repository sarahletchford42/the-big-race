extends Node2D

var spike_scene = preload("res://scenes/spike.tscn")


func _ready():
	spawn_spikes()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
