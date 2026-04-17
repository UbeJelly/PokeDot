class_name PokemonShape extends Node


export var data: Dictionary = {
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


func set_data(_id: int = 0, _name: String = "", _awesome_names: Array = [], _names: Array = [], _pokemon_species: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"awesome_names": _awesome_names,
		"names": _names,
		"pokemon_species": _pokemon_species
	}


func get_data() -> Dictionary:
	return data
