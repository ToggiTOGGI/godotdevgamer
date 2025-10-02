extends Node2D
@onready var chest_scene = preload("res://TSCN/object_chest.tscn")
func _ready():
	var chest_instance = chest_scene.instantiate()
	add_child(chest_instance)
