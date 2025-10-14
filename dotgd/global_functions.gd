extends Node

@onready var transition_layer = preload("res://TSCN/MISC/TransitionLayer.tscn").instantiate()

func _ready():
	await get_tree().process_frame
	get_tree().root.add_child(transition_layer)
	  # wait one frame so children are ready

func transition_to_scene(scene_path: String, pos: Vector2):
	transition_layer.play_transition(scene_path, pos)
