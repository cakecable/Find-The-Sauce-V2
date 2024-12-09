extends CharacterBody2D

var interactable: Node = null
const SPEED = 300.0

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("Right"):
		position.x += -SPEED * delta
	if Input.is_action_pressed("Left"):
		position.x += SPEED * delta
	if Input.is_action_pressed("Forward"):
		position.y += -SPEED * delta
	if Input.is_action_pressed("Down"):
		position.y += SPEED * delta
	if Input.is_action_just_pressed("Interact") and interactable:
		interactable.interact()
	move_and_slide()
