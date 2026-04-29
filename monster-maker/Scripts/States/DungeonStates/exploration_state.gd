extends DungeonState


func enter(_previous_state_path: String, _data := {}) -> void:
	$"../../ProgressBarPlayer".enter_battle.connect(battle_exit)
	pass
	
func battle_exit(_battle_number) -> void:
	finished.emit(BATTLE)
	pass
