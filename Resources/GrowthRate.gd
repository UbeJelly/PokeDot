class_name GrowthRate extends Node


export var data: Dictionary = {
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


func set_data(_id: int = 0, _name: String = "", _formula: String = "", _descriptions: Array = [], _levels: Array = [], _pokemon_species: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"formula": _formula,
		"descriptions": _descriptions,
		"levels": _levels,
		"pokemon_species": _pokemon_species
	}


func get_data() -> Dictionary:
	return data
