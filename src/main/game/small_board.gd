extends MarginContainer


var game     : Node

var side     : int  = -1
var disabled : bool = false


func update_small_board(new_game : Node) -> void:
	game = new_game
	if (! disabled && ! is_board_open(false)):
		$animation.play("main")
		disabled = true


func set_side(value : int) -> void:
	side = value
	if (side != -1):
		$animation.play("main")
		get_parent().get_parent().get_parent().get_parent().get_parent().remove_links($grid.get_children())
	for i in range($winner.get_child_count()):
		$winner.get_child(i).visible = i == side


func calculate_winner() -> int:
	var found : Dictionary = {}
	var board := generate_2d_board()
	for i in range(3):
		# Check for row
		var row : Array = board[i]
		if (row[0] == row[1] && row[1] == row[2]):
			if (! found.has(row[0])):
				found[row[0]] = 0
			found[row[0]] += 1
		# Check for column
		var column := [board[0][i], board[1][i], board[2][i]]
		if (column[0] == column[1] && column[1] == column[2]):
			if (! found.has(column[0])):
				found[column[0]] = 0
			found[column[0]] += 1
	# Check for diagonal (TLBR)
	var tlbr := [board[0][0], board[1][1], board[2][2]]
	if (tlbr[0] == tlbr[1] && tlbr[1] == tlbr[2]):
		if (! found.has(tlbr[0])):
			found[tlbr[0]] = 0
		found[tlbr[0]] += 1
	# Check for diagonal (TRBL)
	var trbl := [board[2][0], board[1][1], board[0][2]]
	if (trbl[0] == trbl[1] && trbl[1] == trbl[2]):
		if (! found.has(trbl[0])):
			found[trbl[0]] = 0
		found[trbl[0]] += 1
	# Return found winner
#warning-ignore:return_value_discarded
	found.erase(-1)
	if (len(found.keys()) == 1):
		return found.keys()[0]
	return -1


func generate_2d_board() -> Array:
	var board := [[], [], []]
	for i in $grid.get_child_count():
		board[floor(i / 3.0)].append($grid.get_child(i).side)
	return board


func is_board_open(include_side : bool = true) -> bool:
	if (! (side != -1 && include_side)):
		for slot in $grid.get_children():
			if (slot.side == -1):
				return true
	return false
