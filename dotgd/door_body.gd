extends StaticBody2D
@onready var door = get_node("../door_activation")
func _ready():
	add_to_group('interactable')

func activate():
	door.activate()
