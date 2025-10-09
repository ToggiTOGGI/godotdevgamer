extends Area2D

func _ready():
	add_to_group("interactable")
	

func activate():
	PlayerInfo.playerpos = Vector2(-55,281)
	PlayerInfo.faced_dir = "up"
	get_tree().change_scene_to_file("res://TSCN/Rooms/room4.tscn")




func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.set_interactable(self)


func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.clear_interactable()
