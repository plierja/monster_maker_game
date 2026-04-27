class_name MonsterPart extends Control
var socket_placements: Array[String]
var damage: float = 10
var card_name: String = ""
var defence: float = 10
var card_cost: int = 0
var in_inventory: bool = false
var equipped: bool = false
var card_id: int = 0
var equipped_to_slot: String = ""


 


 
# Called when the node enters the scene tree for the first time.
func _ready(): 
	card_id = Globals.generate_id()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#if is_dragging:
		#global_position  = get_global_mouse_position() + offset
	#$"."/CardCost.text = str(card_cost)
	pass

	
