class_name DungeonState extends State

const BATTLE = "Battle"
const EXPLORATION = "Exploration"
const SHOP = "Shop"


var main: Dungeon

func _ready() -> void:
	await owner.ready
	main = owner as Dungeon
	#assert(main != null, "The MainState state type must be used only in the main scene. It needs the owner to be a main node")
