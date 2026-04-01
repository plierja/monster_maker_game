extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var claw_texture = Image.load_from_file("res://Art Assets/Card Art/mushroom_head_icon.png")
	$MonsterPartTemplate.set_image(claw_texture)


	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#function to heal monster after x timer

func _heal_monster():
	pass
