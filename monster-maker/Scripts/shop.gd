class_name Shop extends Node2D
@export var leave_shop_button: Button
var card_archive: Array[PackedScene] = []

signal leave_shop


func load_all_cards():
	var path = "res://Scripts/CardLibrary/"
	var dir = DirAccess.open(path)
	if dir:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			if dir.current_is_dir():
				print("Found directory: " + file_name)
			else:
				if file_name.get_extension() == "tscn":
					var full_path = path.path_join(file_name)
					card_archive.append(load(full_path))
			file_name = dir.get_next()
	else:
		print("An error occurred when trying to access the path.")

		
func randomize_cards():
	await load_all_cards()
	var new_shop_item: PackedScene = null
	var i = 0
	#create a card in the shop for each card at random
	while i < Globals.shop_slot_count:
		new_shop_item = card_archive.pick_random()
		var new_node = new_shop_item.instantiate()
		#new_node.position = $ShopSlots.get_child(i).position
		$ShopSlots.add_child(new_node)
		i += 1 
		
		
		
func update_global_shop():
	Globals.shop_items = card_archive
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Globals.shop_items.is_empty:
		randomize_cards()
		update_global_shop()
	else:
		print("shop has items")
		return
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_leave_shop_button_button_up() -> void:
	leave_shop.emit()
	pass # Replace with function body.
