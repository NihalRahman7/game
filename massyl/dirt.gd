extends MeshInstance2D

@export var texture_new: Texture2D = preload("res://dirt.png")
@export var count: int = 500  
@export var offset_new_x = 16  
@export var count_y: int = 15;

func _ready():
	create_array()

func create_array():
	for i in range(count):
		for y in range(count_y):
			var sprite = Sprite2D.new()  
			var staticBody2d_local = StaticBody2D.new();
			var collisionShape = CollisionShape2D.new();
			var rectangleShape = RectangleShape2D.new()
			rectangleShape.extents = Vector2(8, 8)  
			collisionShape.shape = rectangleShape
			staticBody2d_local.add_child(collisionShape);
			sprite.add_child(staticBody2d_local);
			sprite.texture = texture  # Assign the texture
			sprite.position = Vector2(offset_new_x*i, 16*y) 
			add_child(sprite)  
