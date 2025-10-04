extends CollisionShape2D
func _ready():
	add_to_group("interactable")

func activate():
	get_tree().change_scene_to_file("res://TSCN/room2.tscn")
	set_player_pos
