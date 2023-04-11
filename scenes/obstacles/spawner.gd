extends Node2D

@export var scenes_array = []
@export var scene: PackedScene

var Spike = preload("res://scenes/obstacles/spike.tscn")



var random_scene = RandomNumberGenerator.new()
var selected_scene_index = 0




func _on_timer_timeout():
	#var spawner = get_node("res://scenes/spawner.tscn")
	#random_scene.randomize()
	#selected_scene_index = random_scene.randi_range(0, scenes_array.size()+5)
	#var tmp = scenes_array[selected_scene_index].instance()
	#add_sibling(self, tmp)
	var Spike_inst = Spike.instantiate()
	Spike_inst.position = self.global_position
	get_tree().root.add_child(Spike_inst)
	
