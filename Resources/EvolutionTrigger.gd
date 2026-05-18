class_name EvolutionTrigger extends Node


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
	"pokemon_species": [
		{
			"name": "",
			"url": ""
		}
	]
}


func set_data(_id: int = 0, _name: String = "", _names: Array = [], _pokemon_species: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"names": _names,
		"pokemon_species": _pokemon_species
	}


func get_data() -> Dictionary:
	return data
