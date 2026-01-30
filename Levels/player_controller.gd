extends CharacterBody2D

@export var speed = 50
@export var jump_power = 100
#const SPEED = 300.0
#const JUMP_VELOCITY = -400.0

var direction = 0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = jump_power * -1

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * speed
		print(direction)
		if (direction == 1):
			$AnimatedSprite2D.flip_h = direction
		else:
			$AnimatedSprite2D.flip_h = 0
		$AnimatedSprite2D.play()
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		$AnimatedSprite2D.stop()

	

	move_and_slide()
