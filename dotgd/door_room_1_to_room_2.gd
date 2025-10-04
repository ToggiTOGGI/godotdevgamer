extends Area2D
func _ready():
	add_to_group("interactable")
	connect("body_entered", Callable(self, "_on_body_entered"))
	connect("body_exited", Callable(self, "_on_body_exitedd"))
	
func activate():
	PlayerInfo.playerpos = Vector2(0,90)
	get_tree().change_scene_to_file("res://TSCN/room2.tscn")




func _on_body_entered(body):
	if body.is_in_group("player"):
		body.set_interactable(self)


func _on_body_exited(body):
	if body.is_in_group("player"):
		body.clear_interactable()
