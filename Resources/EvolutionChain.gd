class_name EvolutionChain extends Node


export var data: Dictionary = {
	"id": 0,
	"baby_trigger_item": null,
	"chain": {
		"is_baby": true,
		"species": {
			"name": "",
			"url": ""
		},
		"evolution_details": null,
		"evolves_to": [
			{
				"is_baby": false,
				"species": {
					"name": "",
					"url": ""
				},
				"evolution_details": [
					{
						"item": null,
						"trigger": {
							"name": "",
							"url": ""
						},
						"gender": null,
						"held_item": null,
						"known_move": null,
						"known_move_type": null,
						"location": null,
						"min_level": 0,
						"min_happiness": null,
						"min_beauty": null,
						"min_affection": null,
						"needs_overworld_rain": false,
						"party_species": null,
						"party_type": null,
						"relative_physical_stats": null,
						"time_of_day": "",
						"trade_species": null,
						"turn_upside_down": false
					}
				],
				"evolves_to": []
			}
		]
	}
}


func set_data(_id: int = 0, _baby_trigger_item = null, _chain: Dictionary = {}) -> void:
	data = {
		"id": _id,
		"baby_trigger_item": _baby_trigger_item,
		"chain": _chain
	}


func get_data() -> Dictionary:
	return data
