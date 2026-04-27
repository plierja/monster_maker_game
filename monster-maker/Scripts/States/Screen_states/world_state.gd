class_name GlobalState extends State

const BATTLE = "Battle"
const SHOP = "Shop"
const MAIN = "Main"
const INVENTORY = "Inventory"
const DUNGEON = "Dungeon"

var main: Main

func _ready() -> void:
	await owner.ready
	main = owner as Main
	#assert(main != null, "The MainState state type must be used only in the main scene. It needs the owner to be a main node")
