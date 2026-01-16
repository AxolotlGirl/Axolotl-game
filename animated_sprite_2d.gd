extends AnimatedSprite2D
var speed

var screen_size
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	var axolotl_picture := preload("res://art/axolotl -1.png.png")
	screen_size = get_viewport_rect().size
	for rows in 5:
		for columns in 10:
			var axolotl := Sprite2D.new()
			axolotl.texture = axolotl_picture
			axolotl.position = Vector2(rows * 100, columns * 100)
			axolotl.scale *= 8
			add_child(axolotl)
			print("x:", rows," y:", columns)
	
func start(pos):
	position = pos
	show()
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
			
