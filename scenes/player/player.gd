extends CharacterBody2D

const JUMP_VELOCITY = -500.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var dying = null
var fix = false

func _on_ready():
	dying = false
	$death_timer.stop()
	
func _physics_process(delta):
	if not dying:
		# Add the gravity.
		if not is_on_floor():
			velocity.y += gravity * delta
		# Handle Jump.
		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			velocity.y = JUMP_VELOCITY
		elif not Input.is_action_pressed("ui_accept"):
			if velocity.y < -100:
				velocity.y = -100
		move_and_slide()
	else:
		velocity.y = 0

func _on_death_timer_timeout():
	$CanvasLayer/death_screen.visible = true

func _on_area_2d_area_entered(area):
	if area.is_in_group("spike") and fix:
		print("hit by: ", area)
		dying = true
		$GPUParticles2D.set_emitting(true)
		$ColorRect.visible = false
		get_node("Area2D/CollisionShape2D").set_deferred("disabled", true)
		get_node("CollisionShape2D").set_deferred("disabled", true)
		$death_timer.start()

func _on_timer_timeout():
	fix = true
