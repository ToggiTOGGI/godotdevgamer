extends StaticBody2D
var treetest = get_tree()


func _ready():
	add_to_group("interactable")
func activate():
	print('hello!')
	print(treetest)
