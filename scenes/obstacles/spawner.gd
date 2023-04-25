extends Node2D

@export var scenes_array = []
@export var scene: PackedScene

var Spike = [preload("res://scenes/obstacles/spike.tscn"), preload("res://scenes/obstacles/spike_2.tscn"),
					preload("res://scenes/obstacles/spike_3.tscn")]

var spikeImages = [preload("res://images/spikes/spike B.png"), preload("res://images/spikes/spike C.png"),
					preload("res://images/spikes/spike D.png")]

var rng = RandomNumberGenerator.new()
	

var random_scene = RandomNumberGenerator.new()
var selected_scene_index = 0

var min_spawn_time = 0.7
var max_spawn_time = 1.5


var random_time = RandomNumberGenerator.new()


func _on_timer_timeout():
	var Spike_inst = Spike.instantiate()
	var new_inst = Spike.instantiate()
	var num = rng.randi_range(0, 2)
	Spike_inst.position = self.global_position
	get_tree().root.add_child(Spike_inst)
	random_time.randomize()
	var temp = random_time.randf_range(min_spawn_time, max_spawn_time)
	print(temp)
	new_inst.get_node("sprite_node").texture = spikeImages[num]
	$Timer.wait_time = temp
	$Timer.start()


	
