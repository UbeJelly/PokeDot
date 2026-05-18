class_name PokemonPagination extends Node


@export var data: Dictionary = {
	"count": 0,
	"next": "",
	"previous": null,
	"results": [],
}


func set_data(count: int = 0, next: String = "", previous = null, results: Array = []) -> void:
	data = {
		"count": count,
		"next": next,
		"previous": previous,
		"results": results,
	}


func get_data() -> Dictionary:
	return data
