class_name PokemonShape extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"awesome_names": [
		{
			"awesome_name": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
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


func set_data(id: int = 0, _name: String = "", awesome_names: Array = [], names: Array = [], pokemon_species: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"awesome_names": awesome_names,
		"names": names,
		"pokemon_species": pokemon_species
	}


func get_data() -> Dictionary:
	return data
