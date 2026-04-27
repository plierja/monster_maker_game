extends TextureRect


func _can_drop_data(_at_position: Vector2, _data: Variant) -> bool:
	return true

func _drop_data(_at_position: Vector2, data: Variant) -> void:
	if data:
		Globals.player_inventory.append(data)
		data.get_parent().remove_child(data)
	return 
