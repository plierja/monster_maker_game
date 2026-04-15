extends Control
var image_texture_path := "res://Art Assets/Card Art/Mushroom-Head-Card-01.png"
var image_texture:= load(image_texture_path)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MonsterPartTemplate.set_image(image_texture)
	$MonsterPartTemplate.card_name = "mushroom_head"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

#function to heal monster after x timer

func _heal_monster():
	pass
