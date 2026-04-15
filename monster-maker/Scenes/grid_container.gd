extends GridContainer

func _ready() -> void:
	for card in Globals.player_inventory:
		$".".call_deferred("add_child", card.duplicate())
