class_name PokemonPagination extends Node


export var data: Dictionary = {
	"count": 0,
	"next": "",
	"previous": "",
	"results": [],
}
export var count: int = 0
export var next: String = ""
export var previous: String = ""
export var results: Array = []


func set_data(_count: int = 0, _next: String = "", _previous: String = "", _results: Array = []) -> void:
	data = {
		"count": _count,
		"next": _next,
		"previous": _previous,
		"results": _results,
	}
	count = _count
	next = _next
	previous = _previous
	results = _results


func get_data() -> Dictionary:
	return data
