class_name PokemonColor extends Node


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


func set_data(id: int = 0, _name: String = "", names: Array = [], pokemon_species: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"names": names,
		"pokemon_species": pokemon_species
	}


func get_data() -> Dictionary:
	return data
