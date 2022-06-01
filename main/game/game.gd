extends Control



const LINK        : PackedScene = preload("./link.tscn")
const COLOURS     : Array       = [
	Color(1.0, 0.0, 0.25),
	Color(0.0, 0.5, 1.0)
]
const BOARD_NONE  : Dictionary  = {0 : 0, 1 : 0, 2 : 0, 3 : 0, 4 : 0, 5 : 0, 6 : 0, 7 : 0, 8 : 0}
const BOARD_RESET : Dictionary  = {0 : 1, 1 : 1, 2 : 1, 3 : 1, 4 : 0, 5 : 1, 6 : 1, 7 : 1, 8 : 1}

export(int, "Cross", "Nought") var turn := 0 setget set_turn

var link_slot            : Node       = null
var links                : Array      = []
var allowed_small_boards : Dictionary = BOARD_RESET.duplicate()



func set_turn(value : int) -> void:
	turn = value % 2
	update_slots()

func update_slots() -> void:
	for small_board in $horizontal/board_container/board_margin/board.get_children():
		for slot in small_board.get_children():
			slot.update_slot(self)



func _ready() -> void:
	update_slots()

func _physics_process(_delta : float) -> void:
	if (link_slot):
		var links := $horizontal/board_container/board_margin/links
		var link  := links.get_child(links.get_child_count() - 1)
		link.points = PoolVector2Array([
			link.points[0],
			link.get_local_mouse_position()
		])

func _input(event : InputEvent) -> void:
	if (event is InputEventMouseButton):
		if (event.button_index == BUTTON_RIGHT && ! event.pressed && link_slot):
			allowed_small_boards[link_slot.get_parent().get_index()] += 1
			link_slot = null
			var links := $horizontal/board_container/board_margin/links
			links.get_child(links.get_child_count() - 1).queue_free()
			update_slots()



func link_slot(slot : Node) -> void:
	if (link_slot):
		allowed_small_boards = BOARD_NONE.duplicate()
		allowed_small_boards[link_slot.get_index()] += 1
		allowed_small_boards[slot.get_index()] += 1
		var link := [link_slot, slot]
		links.append(link)
		if (loop_found(links, slot)):
			print("loop")
		link_slot = null
		set_turn(turn + 1)
	else:
		link_slot = slot
		allowed_small_boards[link_slot.get_parent().get_index()] -= 1
		var link := LINK.instance()
		link.update_link(self)
		$horizontal/board_container/board_margin/links.add_child(link)
		link.points = PoolVector2Array([link.get_local_mouse_position()])
	update_slots()


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
