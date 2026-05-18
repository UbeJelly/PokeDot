class_name Gender extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"pokemon_species_details": [
		{
			"rate": 0,
			"pokemon_species": {
				"name": "",
				"url": ""
			}
		}
	],
	"required_for_evolution": [
		{
			"name": "",
			"url": ""
		}
	]
}


func set_data(id: int = 0, _name: String = "", pokemon_species_details: Array = [], required_for_evolution: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"pokemon_species_details": pokemon_species_details,
		"required_for_evolution": required_for_evolution
	}


func get_data() -> Dictionary:
	return data
