extends MarginContainer


var game : Node

var side : int


func update_small_board(new_game : Node) -> void:
	game = new_game
	side = game.won_boards.get(get_index(), -1)
	for i in range($winner.get_child_count()):
		$winner.get_child(i).visible = i == side


func calculate_winner() -> int:
	var found : Array = []
	var board := generate_2d_board()
	for i in range(3):
		# Check for row
		var row : Array = board[i]
		if (row[0] == row[1] && row[1] == row[2]):
			found.append(row[0])
		# Check for column
		var column := [board[0][i], board[1][i], board[2][i]]
		if (column[0] == column[1] && column[1] == column[2]):
			found.append(column[0])
	# Check for diagonal (TLBR)
	var tlbr := [board[0][0], board[1][1], board[2][2]]
	if (tlbr[0] == tlbr[1] && tlbr[1] == tlbr[2]):
		found.append(tlbr[0])
	# Check for diagonal (TRBL)
	var trbl := [board[2][0], board[1][1], board[0][2]]
	if (trbl[0] == trbl[1] && trbl[1] == trbl[2]):
		found.append(trbl[0])
	# Return found winner
	if (found.has(0)):
		if (! found.has(1)):
			return 0
	elif (found.has(1)):
		return 1
	return -1


func generate_2d_board() -> Array:
	var board := [[], [], []]
	for i in $grid.get_child_count():
		board[floor(i / 3.0)].append($grid.get_child(i).side)
	return board


func is_board_open() -> bool:
	for slot in $grid.get_children():
		if (slot.side == -1):
			return true
	return false
