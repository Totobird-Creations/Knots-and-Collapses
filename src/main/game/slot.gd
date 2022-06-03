extends Button


var game      : Node

var side      : int  = -1
var hint_side : int  = -1
var hovered   : bool = false


func update_slot(new_game : Node) -> void:
	game = new_game

	disabled = side != -1 || get_parent().get_parent().side != -1 || game.allowed_boards[get_small_board_position()] <= 0


func set_side(value : int) -> void:
	side = value
	update_visual()


func set_hint_side(value : int) -> void:
	hint_side = value
	update_visual()


func update_visual() -> void:
	for i in range($icon.get_child_count()):
		var child := $icon.get_child(i)
		child.visible    = side == i || hint_side == i
		child.modulate.a = float(side == i) + float(side == -1 && hint_side == i) * 0.25


func mouse_entered() -> void:
	hovered = true
	if (! disabled):
		get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().update_hints(self)

func mouse_exited() -> void:
	hovered = false
	get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().update_hints(null)

func pressed() -> void:
	game.link_slot(self)
	mouse_entered()


func get_small_board_position() -> int:
	return get_parent().get_parent().get_index()
