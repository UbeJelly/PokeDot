class_name Gender extends Node


export var data: Dictionary = {
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


func set_data(_id: int = 0, _name: String = "", _pokemon_species_details: Array = [], _required_for_evolution: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"pokemon_species_details": _pokemon_species_details,
		"required_for_evolution": _required_for_evolution
	}


func get_data() -> Dictionary:
	return data
