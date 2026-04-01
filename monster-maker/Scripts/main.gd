class_name Main extends Node2D
@export var Shop: Node2D
@export var MainMenu: Node2D

func _ready() -> void:
	Shop.leave_shop_button.leave_shop.connect(on_leave_shop)
	MainMenu.go_to_shop_button.go_to_shop.connect(on_go_to_shop)
	remove_child($Shop)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func on_leave_shop():
	remove_child($Shop)
	add_child($MainMenu)
	pass
func on_go_to_shop():
	add_child(Shop)
	remove_child($MainMenu)
	

	
