extends CanvasLayer

var filter = ColorRect
var is_running = false

func _ready():
	visible = false
	filter = $PixelFilter


func play_transition(new_scene: String, player_pos: Vector2):
	print(player_pos)
	if is_running:
		return
	is_running = true
	visible = true

	# Pixelate (fade out)
	for i in range(49, 0, -1):
		filter.material.set_shader_parameter("pixel_size", i * 1.0)
		await get_tree().create_timer(0.01).timeout

	# Change scene
	get_tree().change_scene_to_file(new_scene)

	# Wait a frame so the new scene loads
	await get_tree().process_frame

	# Move player if available
	PlayerInfo.playerpos = player_pos

	# Unpixelate (fade in)
	for i in range(0, 50):
		filter.material.set_shader_parameter("pixel_size", i * 1.0)
		await get_tree().create_timer(0.01).timeout
	visible = false
	is_running = false
