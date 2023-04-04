extends CharacterBody2D

var spawn_timer: Timer
var spawn_interval: float = 2.0
var spike_scene: PackedScene


func _ready():
	spawn_timer = Timer.new()
	add_child(spawn_timer)
	spawn_timer.set_wait_time(spawn_interval)
	spawn_timer.set_one_shot(false)
	spawn_timer.connect("timeout", self, "_on_spawn_timer_timeout")
	spawn_timer.start()
	
