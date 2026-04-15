class_name Monster extends Control

@export var health_points: float = 0
@export var attack: float = 0
@export var defence: float = 0
@export var equipment_slots: Dictionary[String, Node2D] = {"": null}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	equipment_slots = {
		"head": null,
		"left_hand":null,
		"right_hand":null,
		"left_foot":null,
		"right_foot":null,
		"tail":null,
		"body":null
	}


	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func add_monster_part_to_monster_slot() -> void:
	pass 
