class_name MonsterPart extends Node2D
@export var socket_placement: String = ""
@export var damage: float = 10
@export var card_name: String = ""
@export var defence: float = 10
@export var card_cost: int = 0

var is_dragging = false
var is_inside_droppable_area: bool = false
var offset = Vector2(0,0)
var starting_position: Vector2 
@export var in_inventory: bool = false



 
# Called when the node enters the scene tree for the first time.
func _ready(): 
	#match_shape_to_sprite()
	starting_position = global_position
	pass # Replace with function body.

func set_image(image): 
	var monster_part_image: Sprite2D = $MonsterPartImage
	monster_part_image.texture = image

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if is_dragging:
		global_position  = get_global_mouse_position() + offset
	$"."/CardCost.text = str(card_cost)
	pass
	
func add_to_inventory(): 
	var card_string_to_add: String = "res://Scripts/CardLibrary/%s.tscn"
	var formatted_string = card_string_to_add % card_name
	var card_add_to_inventory = load(formatted_string)
	var card = card_add_to_inventory.instantiate()
	Globals.player_inventory.append(card)
	queue_free()
	

	pass # Replace with function body.


func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			offset = global_position - get_global_mouse_position()
			is_dragging = true
		else:
			if is_inside_droppable_area:
				add_to_inventory()
			is_dragging = false
			global_position = starting_position 

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("droppable"):
		is_inside_droppable_area = true


func _on_area_exited(area: Area2D) -> void:
	if area.is_in_group("droppable"):
		is_inside_droppable_area = false
