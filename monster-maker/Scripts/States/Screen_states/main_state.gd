extends GlobalState

var main_scene = preload("res://Scenes/main_menu.tscn")


func enter(_previous_state_path: String, _data := {}) -> void:
	var main_menu = main_scene.instantiate()
	$"../..".add_child(main_menu)
	$"../../MainMenu/ClickableHouse".enter_shop.connect(shop_button_press)
	main_menu.enter_inventory.connect(inventory_button_press)
	main_menu.enter_dungeon.connect(go_to_dungeon_button_press)
	pass
	
func shop_button_press() -> void:
	finished.emit(SHOP)
	$"../../MainMenu".queue_free()
	
func inventory_button_press() -> void:
	finished.emit(INVENTORY)
	$"../../MainMenu".queue_free()
	
func go_to_dungeon_button_press() -> void:
	finished.emit(DUNGEON)
	$"../../MainMenu".queue_free()
	pass
	
	
	
