extends MeshInstance2D
@onready var player = get_node("/root/Node2D/CharacterBody2D")
@onready var object = $StaticBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
var speed = 20;
func _process(delta: float) -> void:
	position.x += speed * delta
	if player.position.y == -100:
		player.position.x+= speed * delta
	pass
