extends MeshInstance2D

@export var texture_new: Texture2D = preload("res://grass_block_side.png")
@export var count: int = 500  # Number of duplicates
@export var offset_new: Vector2 = Vector2(16, 0)  # Spacing between duplicates in pixels

func _ready():
	create_array()

func create_array():
	for i in range(count):
		var sprite = Sprite2D.new() 
		var staticBody2d_local = StaticBody2D.new();
		var collisionShape = CollisionShape2D.new();
		var rectangleShape = RectangleShape2D.new()
		rectangleShape.extents = Vector2(8, 8)  # Set the extents to half of 16px to define the full size as 16x16
		collisionShape.shape = rectangleShape
		staticBody2d_local.add_child(collisionShape);
		sprite.add_child(staticBody2d_local);
		sprite.texture = texture  # Assign the texture
		sprite.position = offset_new * i  # Position based on index and offset
		add_child(sprite)  # Add the sprite as a child
