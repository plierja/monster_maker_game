extends Node2D

@export var go_to_shop_button: Node2D

signal enter_inventory
signal enter_dungeon

func _ready() -> void:
	pass # Replace with function body.

func _process(_delta: float) -> void:
	pass


func _on_go_to_inventory_button_button_up() -> void:
	enter_inventory.emit()
	pass # Replace with function body.


func _on_go_to_dungeon_button_up() -> void:
	enter_dungeon.emit()
	pass # Replace with function body.
