extends Control



const LINK        : PackedScene = preload("./link.tscn")
const COLOURS     : Array       = [
	Color(1.0, 0.0, 0.25),
	Color(0.0, 0.5, 1.0),
	Color(0.125, 1.0, 0.0),
	Color(1.0, 0.375, 0.0)
]
const BOARD_NONE  : Dictionary  = {0 : 0, 1 : 0, 2 : 0, 3 : 0, 4 : 0, 5 : 0, 6 : 0, 7 : 0, 8 : 0}
const BOARD_RESET : Dictionary  = {0 : 1, 1 : 1, 2 : 1, 3 : 1, 4 : 0, 5 : 1, 6 : 1, 7 : 1, 8 : 1}
const BOARD_ALL   : Dictionary  = {0 : 2, 1 : 2, 2 : 2, 3 : 2, 4 : 2, 5 : 2, 6 : 2, 7 : 2, 8 : 2}

export(int, 1, 4)                                    var player_count := 2
export(int, "Cross", "Nought", "Triangle", "Square") var turn         := 0 setget set_turn

var pending_player_count    : int
var playing                 : bool       = false
var time                    : float      = 0.0
var links                   : Array      = []
var allowed_boards_original : Dictionary = BOARD_RESET.duplicate()
var allowed_boards          : Dictionary = BOARD_RESET.duplicate()
var pending_link            : Node       = null
var pending_link_slot       : Node       = null
var won_boards              : Dictionary = {}



func set_turn(value : int) -> void:
	turn = value % player_count
	update_slots()
	for i in range($horizontal/menu/vertical/turn.get_child_count()):
		$horizontal/menu/vertical/turn.get_child(i).visible = i == turn

func update_small_boards() -> void:
	for small_board in $horizontal/board_container/board_margin/board.get_children():
		small_board.update_small_board(self)

func update_slots() -> void:
	for small_board in $horizontal/board_container/board_margin/board.get_children():
		for slot in small_board.get_node("grid").get_children():
			slot.update_slot(self)



func _ready() -> void:
	set_turn(0)
	show_reset(false)


func _physics_process(delta : float) -> void:
	if (pending_link):
		pending_link.points = PoolVector2Array([
			pending_link.points[0],
			pending_link.get_local_mouse_position()
		])
	if (playing):
		time += delta
	var hours   := int(floor(time / 60.0 / 60.0)) % 60
	var minutes := int(floor(time / 60.0)) % 60
	var seconds := int(floor(time)) % 60
	$horizontal/menu/vertical/timer.text = str(hours).pad_zeros(2) + ":" + str(minutes).pad_zeros(2) + ":" + str(seconds).pad_zeros(2)


func _input(event : InputEvent) -> void:
	if (event is InputEventMouseButton):
		if (event.button_index == BUTTON_RIGHT && ! event.pressed && pending_link):
			allowed_boards = allowed_boards_original.duplicate()
			pending_link.queue_free()
			pending_link = null
			pending_link_slot = null
			update_slots()



func show_reset(show_cancel : bool = true) -> void:
	set_player_count(2)
	playing              = false
	$panel/panel/vertical/horizontal/cancel.visible = show_cancel
	$panel/animation.play("main")


func set_player_count(value : int) -> void:
	pending_player_count = value
	for i in range($panel/panel/vertical/players.get_child_count()):
		$panel/panel/vertical/players.get_child(i).modulate.a = float(i < pending_player_count) * 0.75 + 0.25


func cancel_reset() -> void:
	playing = true
	$panel/animation.play_backwards("main")


func confirm_reset() -> void:
	player_count = pending_player_count
	playing = true
	time = 0.0
	set_turn(0)
	for i in range($horizontal/menu/vertical/players.get_child_count()):
		$horizontal/menu/vertical/players.get_child(i).visible = i < player_count
	$panel/animation.play_backwards("main")



func link_slot(next_slot : Node) -> void:
	if (pending_link):
		# Link was started. Solidify it and check for loops.
		pending_link.ends = [pending_link_slot, next_slot]
		pending_link.update_link(self)
		# Prepare next player's options.
		allowed_boards_original = BOARD_NONE.duplicate()
		allowed_boards_original[pending_link_slot.get_index()] += 1
		allowed_boards_original[next_slot.get_index()] += 1
		allowed_boards_original = validate_allowed_boards(allowed_boards_original)
		allowed_boards = allowed_boards_original.duplicate()
		var source := [pending_link_slot, next_slot, pending_link.side]
		pending_link = null
		pending_link_slot = null
		if (loop_found(links + [source], next_slot)):
			# Loop found. Collapse waveform.
			remove_links(collapse(links, next_slot, turn))
			update_wins()
		else:
			links.append(source)
		set_turn(turn + 1)
		update_small_boards()
	else:
		pending_link_slot = next_slot
		allowed_boards[next_slot.get_small_board_position()] -= 1
		allowed_boards = validate_allowed_boards(allowed_boards)
		add_pending_link()
	update_slots()


func validate_allowed_boards(boards : Dictionary) -> Dictionary:
	for i in boards.keys():
		if (boards[i] > 0 && $horizontal/board_container/board_margin/board.get_child(i).is_board_open(true)):
			return boards
	return(BOARD_ALL.duplicate())


func add_pending_link() -> void:
	var instance := LINK.instance()
	instance.update_link(self)
	$horizontal/board_container/board_margin/links.add_child(instance)
	instance.points = PoolVector2Array([instance.get_local_mouse_position()])
	pending_link = instance


func loop_found(links : Array, source : Node, passed : Array = []) -> bool:
	if (source in passed):
		return true
	for link in links:
		if (link[0] == source):
			var new_links := links.duplicate()
			new_links.erase(link)
			if (loop_found(new_links, link[1], passed + [source])):
				return true
		if (link[1] == source):
			var new_links := links.duplicate()
			new_links.erase(link)
			if (loop_found(new_links, link[0], passed + [source])):
				return true
	return false


func collapse(links : Array, source : Node, side : int, skip : Array = []) -> Array:
	if (source in skip):
		return []
	var res := [source]
	source.set_side(side)
	for link in links:
		if (link[0] == source):
			res += collapse(links, link[1], link[2], skip + [source])
		if (link[1] == source):
			res += collapse(links, link[0], link[2], skip + [source])
	return res


func remove_links(remove_links : Array) -> void:
	var new_links := []
	for link in links:
		if (! (link[0] in remove_links || link[1] in remove_links)):
			new_links.append(link)
	links = new_links
	for child in $horizontal/board_container/board_margin/links.get_children():
		if (child.ends[0] in remove_links || child.ends[1] in remove_links):
			child.queue_free()


func update_wins() -> void:
	for i in range($horizontal/board_container/board_margin/board.get_child_count()):
		var board := $horizontal/board_container/board_margin/board.get_child(i)
		if (won_boards.get(i, -1) == -1):
			won_boards[i] = board.calculate_winner()
			board.set_side(won_boards[i])



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
	found.erase(-1)
	if (len(found.keys()) == 1):
		return found.keys()[0]
	return -1


func generate_2d_board() -> Array:
	var board := [[], [], []]
	for i in $horizontal/board_container/board_margin/board.get_child_count():
		board[floor(i / 3.0)].append($horizontal/board_container/board_margin/board.get_child(i).side)
	return board
