extends CharacterBody2D

const speed = 300
const jumpheight = -100
func _physics_process(_delta):
	velocity.x = 0
	velocity.y = 0
	if Input.is_action_pressed("move_right"):
		velocity.x = speed
	elif Input.is_action_pressed("move_left"):
		velocity.x = -speed
	if Input.is_action_pressed("jump"):
		velocity.y = jumpheight
	move_and_slide()
