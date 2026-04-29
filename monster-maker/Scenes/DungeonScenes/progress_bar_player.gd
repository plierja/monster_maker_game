extends CharacterBody2D

var start_position: Vector2
signal enter_battle(battleid)

func _ready() -> void:
	start_position = position
	pass
	
func _physics_process(delta: float) -> void:
	if $"../DungeonStateMachine".state.name == "Exploration":
		velocity = Vector2(10,0)
		var collision = move_and_collide(velocity * delta)
		if collision:
			print("collided with battle1")


func _on_battle_marker_1_body_entered(body: Node2D) -> void:
	print("inside battle 1 collision")
	enter_battle.emit(1)
	pass # Replace with function body.
	pass # Replace with function body.
