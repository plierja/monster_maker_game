extends Node

@export var shop_items: Array[PackedScene] = []
@export var shop_slot_count: int = 3
@export var player_inventory: Array[Control] = []
@export var global_id_count: int = 0
var player_position: Array[int] = [0,0]
var player_facing_direction: String = "north"
func generate_id():
	var id = global_id_count + 1
	global_id_count +=1
	return id

@export var dungeon_tile_storage: Array[Resource] = []
