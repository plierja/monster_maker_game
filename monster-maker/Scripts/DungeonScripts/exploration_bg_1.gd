class_name ScrollingBackground extends Sprite2D
#
@export var layer = 1
var speedOffset = 0.5
var speed: float = 1

var posOffset: Vector2

func _ready():
	posOffset = position
	
func _process(delta):
	if $"../DungeonStateMachine".state.name == "Exploration":
		position.x -= speed
	if position.x < -621:
		position.x += 1242
	
