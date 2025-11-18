extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY =-512 #-725 at regular grav

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = (ProjectSettings.get_setting("physics/2d/default_gravity"))/2
var amplitude_out = 0

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		if Input.is_action_just_pressed("ui_accept"):
			velocity.y = 0
			velocity.y += (gravity*50) * delta
			print(position.y)
			print("amplitude out")
			amplitude_out = position.y*-0.0277+6.918
			print(amplitude_out)

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
