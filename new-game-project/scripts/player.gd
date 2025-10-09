extends CharacterBody2D
var gravity = 10000
var jump = -20000
const speed = 400
func _physics_process(delta):
	velocity.x = 0
	velocity.y = 0
	if Input.is_action_pressed("move_right"):
		velocity.x = speed
	elif Input.is_action_pressed("move_left"):
		velocity.x = -speed
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = jump
	move_and_slide()
