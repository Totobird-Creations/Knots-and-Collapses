extends Button


var game    : Node

var side    : int  = -1
var hovered : bool = false


func update_slot(new_game : Node) -> void:
	game = new_game
	var turn : int = game.turn
	if (side >= 0):
		turn = side
		$icon.modulate.a = 1.0
	else:
		$icon.modulate.a = 0.0

	for i in range($icon.get_child_count()):
		$icon.get_child(i).visible = turn == i

	disabled = side != -1 || game.allowed_boards[get_small_board_position()] <= 0


func mouse_entered() -> void:
	hovered = true

func mouse_exited() -> void:
	hovered = false

func pressed() -> void:
	game.link_slot(self)


func get_small_board_position() -> int:
	return get_parent().get_parent().get_index()
