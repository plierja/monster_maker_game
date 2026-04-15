class_name Main extends Node2D
#@export var Shop: Node2D
#@export var MainMenu: Node2D
#@export var PlayerInventory: Node2D
#var inventory_open: bool = false
#var monster_screen_open: bool = false

func _ready() -> void:
	get_tree().change_scene_to_file.bind("res://Scenes/main_menu.tscn").call_deferred()
	#Shop.leave_shop_button.leave_shop.connect(on_leave_shop)
	#MainMenu.go_to_shop_button.change_screens.connect(on_change_screen)
	#remove_child($Shop)
	pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
#
#func on_leave_shop():
	#remove_child($Shop)
	#var main_menu = load("res://Scenes/main_menu.tscn")
	#var new_main_menu = main_menu.instantiate()
	#add_child(new_main_menu)
	#$MainMenu.go_to_shop_button.change_screens.connect(on_change_screen)
#
#func on_change_screen(screen):
	#if screen == "Shop":
		#add_child(Shop)
		#remove_child($MainMenu)
	#else:
		#pass
	#
#func _on_go_to_inventory_button_up() -> void:
	#if inventory_open:
		#$".".remove_child($PlayerInventory)
		#inventory_open = false
	#else:
		#inventory_open = true
		#var player_inventory = load("res://Scenes/player_inventory.tscn")
		#var new_player_inventory = player_inventory.instantiate()
		#add_child(new_player_inventory)
	#
#
#
#func _on_go_to_monster_button_up() -> void:
	#if monster_screen_open:
		#$".".remove_child($Monster)
		#monster_screen_open = false
	#else:
		#var monster_screen = load("res://Scenes/monster.tscn")
		#var new_monster_screen = monster_screen.instantiate()
		#add_child(new_monster_screen)
		#monster_screen_open = true
	#pass # Replace with function body.
