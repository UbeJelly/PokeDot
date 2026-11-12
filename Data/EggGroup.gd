class_name EggGroup extends Node


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


## Sets egg group data through Dictionary.
## [param id] is the id of an egg group.
## [param _name] is the name of an egg group.
## [param names] are egg group's names in different languages.
## [param pokemon_species] are the basis for at least one Pokemon.
func set_data(id: int = 0, _name: String = "", names: Array = [], pokemon_species: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"names": names,
		"pokemon_species": pokemon_species
	}


## Get the egg group data after requesting it.
func get_data() -> Dictionary:
	return data
