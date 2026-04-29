class_name Dungeon extends Control

var floor_number: int = 1
var dungeon_grid: DungeonGrid = DungeonGrid.new()

func generate_map() -> void: 
	pass
	
func _ready() -> void:
	pass
#
#func _ready() -> void:
	#print("inside dunggeon class")
	#var dungeon_length = randi_range(7,10)
	#var dungeon_width = randi_range(7,10)
	#var dungeon_grid = DungeonGrid.new()
	#dungeon_grid.grid_size[0] = dungeon_length
	#dungeon_grid.grid_size[1] = dungeon_width
	#assemble_dungeon(dungeon_grid)
	#pass
	#
#func assemble_dungeon(grid: DungeonGrid):
	#$".".add_child(grid)
	#var w = grid.grid_size[0]
	#var l = grid.grid_size[1]
	#var current_coordinate = [0,0]
	#while current_coordinate[0] < w:
		#while current_coordinate[1] < l:
			#grid.add_child(generate_dungeon_room(current_coordinate))
			##create a room
			#current_coordinate[1] +=1
		#current_coordinate[0] +=1
		#current_coordinate[1] = 0
	#pass
#
#func generate_dungeon_room(coordinates):
	#var room: DungeonRoom = DungeonRoom.new()
	#room.room_coordinates[0] = coordinates[0]
	#room.room_coordinates[1] = coordinates[1]
	##check for start room
	#if coordinates == [0,0]:
		#room.north_face_image = load("res://Art Assets/Card Art/Hallway-BG-01.png")
	#else:
		#pass
	#return room
