extends GlobalState

var dungeon_scene = preload("res://Scenes/DungeonScenes/dungeon.tscn")
var previous_scene: String = ""

func enter(previous_state_path: String, _data := {}) -> void:
		previous_scene = previous_state_path
		var dungeon = dungeon_scene.instantiate()
		$"../..".add_child(dungeon)
	
func _leave_dungeon() -> void:
	finished.emit(previous_scene)
	$"../../Dungeon".queue_free()
	
