class_name Region extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"locations": [
		{
			"name": "",
			"url": ""
		}
	],
	"main_generation": {
		"name": "",
		"url": ""
	},
	"names": [
		{
			"name": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"pokedexes": [
		{
			"name": "",
			"url": ""
		}
	],
	"version_groups": [
		{
			"name": "",
			"url": ""
		}
	]
}


func set_data(_id: int = 0, _name: String = "", _locations: Array = [], _main_generation: Dictionary = {}, _names: Array = [], _pokedexes: Array = [], _version_groups: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"locations": _locations,
		"main_generation": _main_generation,
		"names": _names,
		"pokedexes": _pokedexes,
		"version_groups": _version_groups,
	}


func get_data() -> Dictionary:
	return data
