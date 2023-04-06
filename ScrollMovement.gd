extends Node

@export var scroll_speed = 5.5


func move():
	self.position.x-=scroll_speed
