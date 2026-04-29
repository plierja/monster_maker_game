extends DungeonState


func enter(_previous_state_path: String, _data := {}) -> void:
	pass
	
func exit() -> void:
	finished.emit(EXPLORATION)
	pass
