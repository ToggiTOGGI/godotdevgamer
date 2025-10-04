extends StaticBody2D
@onready var door = get_node("")
func _ready():
	add_to_group('interactable')

func activate():
	door.activate()
