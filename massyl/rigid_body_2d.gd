extends RigidBody2D

@onready var player = get_node("/root/Node2D/CharacterBody2D")
@onready var waterBucket = get_node("/root/Node2D/WaterBucket")
@onready var text = get_node("/root/Node2D/WaterBucket/Control/Label")
@onready var elegibleForPickup = false;
@onready var pickedUp = false;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if pickedUp == true:
		waterBucket.position.x = player.position.x - 30;
		waterBucket.position.y = player.position.y - 20;
		
	pass
