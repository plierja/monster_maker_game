extends FlowContainer



func _on_ready() -> void:
	for card in Globals.player_inventory:
		card.get_node("MonsterPartTemplate").in_inventory = true
		$'.'.add_child(card.duplicate())
	pass # Replace with function body.
