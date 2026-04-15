extends Button


func _on_button_up() -> void:
	get_tree().change_scene_to_file.bind("res://Scenes/player_inventory.tscn").call_deferred()
	pass # Replace with function body.
