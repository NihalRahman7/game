extends CharacterBody2D

@export var speed = 40
const gravity = 30

func get_input():
	var input_direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = input_direction * speed



func _physics_process(delta):
	velocity.y += gravity * delta
	
	get_input()
	move_and_slide()
