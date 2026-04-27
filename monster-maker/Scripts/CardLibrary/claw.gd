extends MonsterPart

var image_texture_path := "res://Art Assets/Card Art/Claw-Card-01.png"
var image_texture:= load(image_texture_path)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	card_cost = 1
	socket_placements = ["torso","leg","arm"]
	card_name = "claw"
	$Label.text = str(card_cost)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func _get_drag_data(_at_position: Vector2) -> Variant:
	var data = self
	var prev = TextureRect.new()
	prev.texture = $TextureRect.texture
	prev.self_modulate.a = 0.5
	set_drag_preview(prev)
	return data
