class_name PalParkArea extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"names": [
		{
			"name": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"pokemon_encounters": [
		{
			"base_score": 0,
			"rate": 0,
			"pokemon_species": {
				"name": "",
				"url": ""
			}
		}
	]
}


func set_data(id: int = 0, _name: String = "", names: Array = [], pokemon_encounters: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"names": names,
		"pokemon_encounters": pokemon_encounters
	}


func get_data() -> Dictionary:
	return data
