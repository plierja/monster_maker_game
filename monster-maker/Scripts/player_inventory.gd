class_name Inventory extends Control

signal leave_inventory


func _on_ready() -> void:
	for card in Globals.player_inventory:
		if card.equipped == false:
			%InventoryGrid.add_child(card)
		pass
		#Generate a panel for each card in the player inventory. Do i need to create a scene
		#to create the panel? 
	pass # Replace with function body.


func _on_leave_inventory_button_button_up() -> void:
	for card in Globals.player_inventory:
		if card.get_parent() == %InventoryGrid:
			%InventoryGrid.remove_child(card)
	for node in $MonsterEquippedMenu.get_children():
		if node.get_child_count() < 1:
			pass
		else:
			node.remove_child(node.get_child(0))
	leave_inventory.emit()
	pass # Replace with function body.
