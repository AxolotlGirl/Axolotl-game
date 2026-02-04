extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_setup_level()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _setup_level() -> void:
	var enimies = $TileMap
	for enemy in enimies.get_children():
		print("connecting signal")
		enemy.player_died.connect(_respawn)

func _respawn():
	$CharacterBody2D.respawn()
	print("respawning player")
