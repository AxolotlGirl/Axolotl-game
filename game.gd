extends Node
@export var enemy_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		if Input.is_action_just_pressed("spawn_enemy") and Input.is_action_pressed("spawn_enemy2"):
			
			var enemy = enemy_scene.instantiate()
			var velocity = Vector2(randf_range(150.0, 250.0), 0.0)
		
			add_child(enemy)
