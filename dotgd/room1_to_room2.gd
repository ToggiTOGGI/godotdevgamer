extends StaticBody2D

func _ready():
	add_to_group("interactable")

func activate():
	PlayerInfo.playerpos = Vector2(0,90)
	get_tree().change_scene_to_file("res://TSCN/room2.tscn")
