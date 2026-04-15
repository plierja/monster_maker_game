#extends Control
#
#
#
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#var claw_texture = Image.load_from_file("res://Art Assets/Card Art/claw_icon.png")
	#$MonsterPartTemplate.set_image(claw_texture)
#
#
#
#func _on_monster_part_template_on_add_to_inventory() -> void:
	#var card_add_to_inventory = load("res://Scripts/CardLibrary/claw.tscn")
	#var card = card_add_to_inventory.instantiate()
	#print("inside add to inventory claw")
	#Globals.player_inventory.append(card)
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass

extends Control
var image_texture_path:= "res://Art Assets/Card Art/Claw-Card-01.png"
var image_texture = load(image_texture_path)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MonsterPartTemplate.set_image(image_texture)
	$MonsterPartTemplate.card_name = "claw"


	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

#function to heal monster after x timer

func _heal_monster():
	pass


func _on_monster_part_template_on_add_to_inventory() -> void:
	var card_add_to_inventory = load("res://Scripts/CardLibrary/claw.tscn")
	var card = card_add_to_inventory.instantiate()
	Globals.player_inventory.append(card)
	queue_free()
	pass # Replace with function body.
