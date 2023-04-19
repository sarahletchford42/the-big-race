extends CharacterBody2D

const JUMP_VELOCITY = -500.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var dying = null

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

func hit_by_spike():
	dying = true
	$GPUParticles2D.set_emitting(true)
	print("hit")
	$ColorRect.visible = false
	get_node("CollisionShape2D").set_deferred("disabled", true)
	$death_timer.start()

func _on_death_timer_timeout():
	dying = false
	$CanvasLayer/death_screen.visible = true
