extends Sprite2D

func _ready():
	visible=Engine.is_editor_hint()
func is_prompted(isclose: bool):
	if isclose:
		visible=true
	else:
		visible=false
	
	
