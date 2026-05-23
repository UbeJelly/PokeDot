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


func set_data(id: int = 0, _name: String = "", locations: Array = [], main_generation: Dictionary = {}, names: Array = [], pokedexes: Array = [], version_groups: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"locations": locations,
		"main_generation": main_generation,
		"names": names,
		"pokedexes": pokedexes,
		"version_groups": version_groups,
	}


func get_data() -> Dictionary:
	return data
