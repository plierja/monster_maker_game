class_name Main extends Node2D

var main_scene = preload("res://Scenes/main_menu.tscn")
var shop_scene = preload("res://Scenes/shop.tscn")
var player_inventory_scene = preload("res://Scenes/player_inventory.tscn")

func _ready() -> void:
	#load_main_menu()
	pass # Replace with function body.

## Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
#func _enter_shop_from_main():
	#var shop = shop_scene.instantiate()
	#$".".add_child(shop)
	#shop.leave_shop.connect(_leave_shop_from_main)
	#$"."/MainMenu.queue_free()
	#
#func _leave_shop_from_main():
	#load_main_menu()
	#$"."/Shop.queue_free()
	#
		#
#func load_main_menu():
	#var main_menu = main_scene.instantiate()
	#$".".add_child(main_menu)
	#$"."/MainMenu/ClickableHouse.enter_shop.connect(_enter_shop_from_main)
	#main_menu.enter_inventory.connect(enter_player_inventory_from_main)
	#
#func enter_player_inventory_from_main():
	#var player_inventory = player_inventory_scene.instantiate()
	#$".".add_child(player_inventory)
	#player_inventory.leave_inventory.connect(_leave_player_inventory)
	#if player_inventory.is_connected("leave_inventory", $"."._leave_player_inventory):
		#print("signal connected")
	#$"."/MainMenu.queue_free()
#
#
#func _leave_player_inventory():
	#print("inside leave player inventory")
	#$".".remove_child($PlayerInventory)
	#load_main_menu()
	#
#func enter_dungeon():
	#
	#pass
	#
#func leave_dungeon():
	#pass
	#
#func _transition_scenes(previous_scene_path: String, new_scene_path: String) -> void:
	#pass
	#
