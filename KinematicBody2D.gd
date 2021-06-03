extends KinematicBody2D

const SPEED = 30



var velocity = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity.x -= SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x += SPEED
	else:
		velocity.x = 0
	if Input.is_action_pressed("ui_up"):
		velocity.y -= SPEED
	elif Input.is_action_pressed("ui_down"):
		velocity.y += SPEED
	else:
		velocity.y = 0
	move_and_slide(velocity)

		



