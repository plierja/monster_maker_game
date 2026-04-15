extends Control

var image_texture_path := "res://Art Assets/Card Art/Claw-Card-01.png"
var image_texture:= load(image_texture_path)
@export var card_cost_base: int = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MonsterPartTemplate.set_image(image_texture)
	$MonsterPartTemplate.card_name = "claw"
	$MonsterPartTemplate.card_cost = card_cost_base



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
