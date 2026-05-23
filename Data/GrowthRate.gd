class_name GrowthRate extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"formula": "",
	"descriptions": [
		{
			"description": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"levels": [
		{
			"level": 0,
			"experience": 0
		}
	],
	"pokemon_species": [
		{
			"name": "",
			"url": ""
		}
	]
}


func set_data(id: int = 0, _name: String = "", formula: String = "", descriptions: Array = [], levels: Array = [], pokemon_species: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"formula": formula,
		"descriptions": descriptions,
		"levels": levels,
		"pokemon_species": pokemon_species
	}


func get_data() -> Dictionary:
	return data
