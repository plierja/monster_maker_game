extends GlobalState

var player_inventory_scene = preload("res://Scenes/player_inventory.tscn")
var previous_scene: String = ""

func enter(previous_state_path: String, _data := {}) -> void:
		previous_scene = previous_state_path
		var inventory = player_inventory_scene.instantiate()
		$"../..".add_child(inventory)
		inventory.leave_inventory.connect(_leave_player_inventory) 
	
func _leave_player_inventory() -> void:
	finished.emit(previous_scene)
	$"../../PlayerInventory".queue_free()
	
