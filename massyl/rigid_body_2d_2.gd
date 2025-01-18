extends RigidBody2D

@onready var player = get_node("/root/Node2D/CharacterBody2D")
@onready var waterBucket = get_node("/root/Node2D/puddle")
@onready var text = get_node("/root/Node2D/puddle/Control/Label")
@onready var elegibleForPickup = false;
@onready var pickedUp = false;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for i in player.get_slide_collision_count():
		print(player.get_slide_collision(i).get_collider().name)
		if player.get_slide_collision(i).get_collider().name == "RigidBody2D-puddle":
			text.visible_characters = 100;
			elegibleForPickup = true;
		else:
			text.visible_characters = 0;
			elegibleForPickup = false;
	if pickedUp == true:
		waterBucket.position.x = player.position.x - 30;
		waterBucket.position.y = player.position.y - 20;
		
	pass

func _input(event):
	if event.is_action_pressed("item_pickup") and elegibleForPickup == true and pickedUp == false:
		print("pickup")
		pickedUp = true;
		remove_child($CollisionShape2D)
	pass
