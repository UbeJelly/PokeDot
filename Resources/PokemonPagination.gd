class_name PokemonPagination extends Node


export var data: Dictionary = {
	"count": 0,
	"next": "",
	"previous": null,
	"results": [],
}


func set_data(_count: int = 0, _next: String = "", _previous = null, _results: Array = []) -> void:
	data = {
		"count": _count,
		"next": _next,
		"previous": _previous,
		"results": _results,
	}


func get_data() -> Dictionary:
	return data
