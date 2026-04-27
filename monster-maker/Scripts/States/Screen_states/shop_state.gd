extends GlobalState

var shop_scene = preload("res://Scenes/shop.tscn")
var previous_scene: String = ""

func enter(previous_state_path: String, _data := {}) -> void:
	previous_scene = previous_state_path
	var shop = shop_scene.instantiate()
	$"../..".add_child(shop)
	shop.leave_shop.connect(leave_shop_button_press)
	pass

func leave_shop_button_press() -> void:
	finished.emit(previous_scene)
	$"../../Shop".queue_free()
	pass
