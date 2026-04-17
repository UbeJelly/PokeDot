class_name VersionGroup extends Node


export var data: Dictionary = {
	"id": 0,
	"name": "",
	"order": 0,
	"generation": {
		"name": "",
		"url": ""
	},
	"move_learn_methods": [
		{
			"name": "",
			"url": ""
		}
	],
	"pokedexes": [
		{
			"name": "",
			"url": ""
		}
	],
	"regions": [
		{
			"name": "",
			"url": ""
		}
	],
	"versions": [
		{
			"name": "",
			"url": "https"
		}
	]
}


func set_data(_id: int = 0, _name: String = "", _order: int = 0, _generation: Dictionary = {}, _move_learn_methods: Array = [], _pokedexes: Array = [], _regions: Array = [], _versions: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"order": _order,
		"generation": _generation,
		"move_learn_methods": _move_learn_methods,
		"pokedexes": _pokedexes,
		"regions": _regions,
		"versions": _versions
	}


func get_data() -> Dictionary:
	return data
