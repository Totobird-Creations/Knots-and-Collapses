extends Line2D


var game : Node

var ends : Array = []
var side : int


func update_link(new_game : Node) -> void:
	game = new_game
	for point in get_children():
		for i in range(point.get_child(0).get_child_count()):
			point.get_child(0).get_child(i).visible = game.turn == i
	side          = game.turn
	default_color = game.COLOURS[game.turn]



func _physics_process(_delta : float) -> void:
	for i in range(len(points)):
		get_child(i).position = points[i]
