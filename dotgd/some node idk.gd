extends Sprite2D
func _ready():
	visible=false
func is_displayed(value: bool) -> void:
	if value:
		visible=true
	else:
		visible=false
