extends Area2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.hide()
	$AnimatedSprite2D.flip_h = 1
	$AnimatedSprite2D.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
