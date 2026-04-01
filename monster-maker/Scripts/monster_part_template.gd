class_name MonsterPart extends Node2D

@export var socket_placement: String = ""
@export var damage: float = 10
@export var card_name: String = ""
@export var defence: float = 10

var is_dragging = false
var offset = Vector2(0,0)




 
# Called when the node enters the scene tree for the first time.
func ready():
	
	pass # Replace with function body.

func set_image(image: Image): 
	var monster_part_image: Sprite2D = $MonsterPartImage/MonsterPartImage
	var image_texture = ImageTexture.create_from_image(image)
	monster_part_image.texture = image_texture

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_dragging:
		global_position  = get_global_mouse_position() + offset
	pass
	
func add_to_inventory(): 
#	when sprite is clicked by mouse add to inventory?
	pass



func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			offset = position - get_global_mouse_position()
			is_dragging = true
		else:
			is_dragging = false
	pass
