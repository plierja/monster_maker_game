class_name DungeonRoom extends Resource
var default_room_texture = load("res://Art Assets/Card Art/BgArt-Cobblestone01.png")
var walls: Dictionary = {
	"north": {
		"traversable": false,
		"texture": default_room_texture,
		"neighbor": [0,0]
	},
	"south": {
		"traversable": false,
		"texture": default_room_texture,
		"neighbor": [0,0]
	},
	"east": {
		"traversable": false,
		"texture": default_room_texture,
		"neighbor": [0,0]
	},
	"west": {
		"traversable": false,
		"texture": default_room_texture,
		"neighbor": [0,0]
	}
}
var room_coordinates: Array[int] = [0,0] 

#@export var north_face_image: Texture2D = null
#@export var west_face_image: Texture2D = null
#@export var east_face_image: Texture2D = null
#@export var south_face_image: Texture2D = null
#var room_coordinates: Array = [0,0]
#var room_name: String = ""
#var tile_type: String = ""
#
#func _ready() -> void:
	#var north_wall_face = RoomFace.new()
	#north_wall_face.texture = north_face_image
	#$".".add_child(north_wall_face) 
	#var south_wall_face = RoomFace.new()
	#south_wall_face.texture = north_face_image
	#$".".add_child(south_wall_face) 
	#var east_wall_face = RoomFace.new()
	#east_wall_face.texture = north_face_image
	#$".".add_child(east_wall_face) 
	#var west_wall_face = RoomFace.new()
	#west_wall_face.texture = north_face_image
	#$".".add_child(west_wall_face) 
	#render_wall("north")
	#pass
	#
#
#func render_wall(player_facing_direction) -> void:
	#match player_facing_direction:
		#"north":
			#self.get_child(0).texture = north_face_image
		#"south":
			#self.get_child(0).texture = south_face_image
		#"east":
			#self.get_child(0).texture = east_face_image
		#"west":
			#self.get_child(0).texture = west_face_image
	#pass
	#
#func _input(event: InputEvent) -> void:
	#if Globals.player_position == self.room_coordinates:
		#if $"../../DungeonStateMachine".state.name == "Exploration":
			#if event.is_action_pressed("up"):
					#print("inside match event", "up")
					#pass	
			#elif event.is_action_pressed("down"):
					#print("inside match event", "down")
					#pass
