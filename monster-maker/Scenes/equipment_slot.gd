class_name EquipmentSlot extends TextureRect
	
var slot_name: String = "leg"
var slot_taken: bool = false
var slot_id: String = "leg-01"

func _ready() -> void:
	for card in Globals.player_inventory.filter(func(card): return card.equipped == true):
		if card.equipped_to_slot == slot_id:
			add_child(card)
			resize_card_to_fit_slot()
	pass

func _process(_delta: float) -> void:
	if get_child_count() < 1:
		slot_taken = false

func _can_drop_data(_at_position: Vector2, _data: Variant) -> bool:
	return true


func _drop_data(_at_position: Vector2, data: Variant) -> void:
	if slot_taken:
		pass
	elif data.socket_placements.has(slot_name):
		data.position = Vector2.ZERO
		data.get_parent().remove_child(data)
		add_child(data)
		resize_card_to_fit_slot()
		slot_taken = true
		var base_node = Globals.player_inventory.find_custom(func(node): return node.card_id == data.card_id)
		Globals.player_inventory[base_node].equipped = true
		Globals.player_inventory[base_node].equipped_to_slot = slot_id
	pass
	
func resize_card_to_fit_slot():
		var card = get_child(0)
		card.custom_minimum_size = Vector2(0,0)
		card.size = size
		
 
