extends Button


var game    : Node

var side    : int  = -1
var hovered : bool = false


func update_slot(new_game : Node) -> void:
	game = new_game

	disabled = side != -1 || get_parent().get_parent().side != -1 #|| game.allowed_boards[get_small_board_position()] <= 0


func set_side(value : int) -> void:
	if (side != value):
		side = value
		for i in range($icon.get_child_count()):
			$icon.get_child(i).visible = side == i
		$animation.play("main")


func mouse_entered() -> void:
	hovered = true

func mouse_exited() -> void:
	hovered = false

func pressed() -> void:
	game.link_slot(self)


func get_small_board_position() -> int:
	return get_parent().get_parent().get_index()
