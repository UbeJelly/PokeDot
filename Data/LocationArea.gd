class_name LocationArea extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"game_index": 0,
	"encounter_method_rates": [
		{
			"encounter_method": {
				"name": "",
				"url": ""
			},
			"version_details": [
				{
					"rate": 0,
					"version": {
						"name": "",
						"url": ""
					}
				}
			]
		}
	],
	"location": {
		"name": "",
		"url": ""
	},
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
			"pokemon": {
				"name": "",
				"url": ""
			},
			"version_details": [
				{
					"version": {
						"name": "",
						"url": ""
					},
					"max_chance": 0,
					"encounter_details": [
						{
							"min_level": 0,
							"max_level": 0,
							"condition_values": [],
							"chance": 0,
							"method": {
								"name": "",
								"url": ""
							}
						}
					]
				}
			]
		}
	]
}


func set_data(id: int = 0, _name: String = "", game_index: int = 0, encounter_method_rates: Array = [], location: Dictionary = {}, names: Array = [], pokemon_encounters: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"game_index": game_index,
		"encounter_method_rates": encounter_method_rates,
		"location": location,
		"names": names,
		"pokemon_encounters": pokemon_encounters
	}


func get_data() -> Dictionary:
	return data
