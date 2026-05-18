class_name VersionGroup extends Node


@export var data: Dictionary = {
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


func set_data(id: int = 0, _name: String = "", order: int = 0, generation: Dictionary = {}, move_learn_methods: Array = [], pokedexes: Array = [], regions: Array = [], versions: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"order": order,
		"generation": generation,
		"move_learn_methods": move_learn_methods,
		"pokedexes": pokedexes,
		"regions": regions,
		"versions": versions
	}


func get_data() -> Dictionary:
	return data
