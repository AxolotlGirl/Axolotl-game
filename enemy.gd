extends Area2D

signal player_died
var speed = 5
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var enemy_types = Array($AnimatedSprite2D.sprite_frames.get_animation_names())
	$AnimatedSprite2D.animation = enemy_types.pick_random()
	$AnimatedSprite2D.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#position.x += speed
	#position.y += speed
	pass



func _on_body_entered(body: Node2D) -> void:
	if body.name == ("CharacterBody2D"):
		print("WAAAAAAAAAaaaaAAAAAHhhhHH")
		emit_signal("player_died")
		
