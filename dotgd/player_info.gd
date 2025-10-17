extends Node
var inventory = []
var health = 100
var playerpos: Vector2 = Vector2.ZERO
var faced_dir: String = "down"
var player_speed = 120.0
var player_freeze: bool = false


func _ready():
	print(inventory)
	print(Vector2.ZERO)
