extends Node2D

func _ready():
	await get_tree().process_frame
	var player = get_tree().get_first_node_in_group("player")
	var bounds = get_node_or_null("CameraBounds")
	if player and bounds:
		player.set_camera_limits_from_area(bounds)
