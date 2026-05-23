class_name Ability extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"is_main_series": true,
	"generation": {
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
	"effect_entries": [
		{
			"effect": "",
			"short_effect": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"effect_changes": [
		{
			"version_group": {
				"name": "",
				"url": ""
			},
			"effect_entries": [
				{
					"effect": "",
					"language": {
						"name": "",
						"url": ""
					}
				}
			]
		}
	],
	"flavor_text_entries": [
		{
			"language": {
				"name": "",
				"url": ""
			},
			"version_group": {
				"name": "",
				"url": ""
			}
		}
	],
	"pokemon": [
		{
			"is_hidden": true,
			"slot": 0,
			"pokemon": {
				"name": "",
				"url": ""
			}
		}
	]
}


func set_data(id: int = 0, _name: String = "", is_main_series: bool = true, generation: Dictionary = {}, names: Array = [], effect_entries: Array = [], effect_changes: Array = [], flavor_text_entries: Array = [], pokemon: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"is_main_series": is_main_series,
		"generation": generation,
		"names": names,
		"effect_entries": effect_entries,
		"effect_changes": effect_changes,
		"flavor_text_entries": flavor_text_entries,
		"pokemon": pokemon
	}


func get_data() -> Dictionary:
	return data
