extends Control



const LINK        : PackedScene = preload("./link.tscn")
const COLOURS     : Array       = [
	Color(1.0, 0.0, 0.25),
	Color(0.0, 0.5, 1.0),
	Color(0.125, 1.0, 0.0),
	Color(1.0, 0.375, 0.0)
]
const BOARD_NONE  : Dictionary  = {0 : 0, 1 : 0, 2 : 0, 3 : 0, 4 : 0, 5 : 0, 6 : 0, 7 : 0, 8 : 0}
const BOARD_RESET : Dictionary  = {0 : 1, 1 : 1, 2 : 1, 3 : 1, 4 : 1, 5 : 1, 6 : 1, 7 : 1, 8 : 1}
const BOARD_ALL   : Dictionary  = {0 : 1, 1 : 1, 2 : 1, 3 : 1, 4 : 1, 5 : 1, 6 : 1, 7 : 1, 8 : 1}

export(int, "Cross", "Nought", "Triangle") var turn := 0 setget set_turn

var links                   : Array      = []
var allowed_boards_original : Dictionary = BOARD_RESET.duplicate()
var allowed_boards          : Dictionary = BOARD_RESET.duplicate()
var pending_link            : Node       = null
var pending_link_slot       : Node       = null
var won_boards              : Dictionary = {}



func set_turn(value : int) -> void:
	turn = value % 4
	update_slots()

func update_slots() -> void:
	for small_board in $horizontal/board_container/board_margin/board.get_children():
		for slot in small_board.get_node("grid").get_children():
			slot.update_slot(self)



func _ready() -> void:
	update_slots()

func _physics_process(_delta : float) -> void:
	if (pending_link):
		pending_link.points = PoolVector2Array([
			pending_link.points[0],
			pending_link.get_local_mouse_position()
		])

func _input(event : InputEvent) -> void:
	if (event is InputEventMouseButton):
		if (event.button_index == BUTTON_RIGHT && ! event.pressed && pending_link):
			allowed_boards = allowed_boards_original.duplicate()
			pending_link.queue_free()
			pending_link = null
			pending_link_slot = null
			update_slots()



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
		links.append(source)
		if (loop_found(links, next_slot)):
			# Loop found. Collapse waveform.
			remove_links(collapse(links, next_slot, turn))
			remove_links(collapse(links, pending_link_slot, turn))
			update_wins()
		set_turn(turn + 1)
	else:
		pending_link_slot = next_slot
		allowed_boards[next_slot.get_small_board_position()] -= 1
		allowed_boards = validate_allowed_boards(allowed_boards)
		add_pending_link()
	update_slots()


func validate_allowed_boards(boards : Dictionary) -> Dictionary:
	for i in boards.keys():
		if (boards[i] > 0 && $horizontal/board_container/board_margin/board.get_child(i).is_board_open()):
			return boards
	return(BOARD_ALL.duplicate())


func add_pending_link() -> void:
	var instance := LINK.instance()
	instance.update_link(self)
	$horizontal/board_container/board_margin/links.add_child(instance)
	instance.points = PoolVector2Array([instance.get_local_mouse_position()])
	pending_link = instance


func remove_links(remove_links : Array) -> void:
	var new_links := []
	for link in links:
		if (! (link[0] in remove_links || link[1] in remove_links)):
			new_links.append(link)
	links = new_links
	for child in $horizontal/board_container/board_margin/links.get_children():
		if (child.ends[0] in remove_links || child.ends[1] in remove_links):
			child.queue_free()


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


func collapse(links : Array, source : Node, side : int) -> Array:
	var res := [source]
	source.side = side
	for link in links:
		if (link[0] == source):
			links.erase(link)
			res += collapse(links, link[1], link[2])
		if (link[1] == source):
			links.erase(link)
			res += collapse(links, link[0], link[2])
	return res


func update_wins() -> void:
	for i in range($horizontal/board_container/board_margin/board.get_child_count()):
		var board := $horizontal/board_container/board_margin/board.get_child(i)
		if (won_boards.get(i, -1) == -1):
			won_boards[i] = board.calculate_winner()
		board.update_small_board(self)
