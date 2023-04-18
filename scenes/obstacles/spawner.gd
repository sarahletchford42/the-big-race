extends Node2D

@export var scenes_array = []
@export var scene: PackedScene

var Spike = preload("res://scenes/obstacles/spike.tscn")



var random_scene = RandomNumberGenerator.new()
var selected_scene_index = 0

var min_spawn_time = 0.7
var max_spawn_time = 1.5


var random_time = RandomNumberGenerator.new()


func _on_timer_timeout():
	var Spike_inst = Spike.instantiate()
	Spike_inst.position = self.global_position
	get_tree().root.add_child(Spike_inst)
	random_time.randomize()
	var temp = random_time.randf_range(min_spawn_time, max_spawn_time)
	$Timer.wait_time = temp
	$Timer.start()
