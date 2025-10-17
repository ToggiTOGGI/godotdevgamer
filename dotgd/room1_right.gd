extends Area2D

func _ready():
	add_to_group("interactable")
	



func activate():
	PlayerInfo.faced_dir = "right"
	GlobalFunctions.transition_to_scene("res://TSCN/Rooms/room2.tscn",Vector2(-9,88))
#	PlayerInfo.playerpos = Vector2(-9,88)
#	get_tree().change_scene_to_file("res://TSCN/Rooms/room2.tscn")
	


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		activate()
		


func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.clear_interactable()
