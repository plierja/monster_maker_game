class_name inventory_grid extends GridContainer


func _can_drop_data(_at_position: Vector2, _data: Variant) -> bool:
	return true


func _drop_data(_at_position: Vector2, data: Variant) -> void:
	if self.is_ancestor_of(data):
		pass
	else:
		data.get_parent().remove_child(data)
		data.custom_minimum_size = Vector2(120, 144)
		$".".add_child(data)
	pass
