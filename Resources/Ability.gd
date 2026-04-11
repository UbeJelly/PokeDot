class_name Ability extends Node


export var data: Dictionary = {
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


func set_data(_id: int = 0, _name: String = "", _is_main_series: bool = true, _generation: Dictionary = {}, _names: Array = [], _effect_entries: Array = [], _effect_changes: Array = [], _flavor_text_entries: Array = [], _pokemon: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"is_main_series": _is_main_series,
		"generation": _generation,
		"names": _names,
		"effect_entries": _effect_entries,
		"effect_changes": _effect_changes,
		"flavor_text_entries": _flavor_text_entries,
		"pokemon": _pokemon
	}


func get_data() -> Dictionary:
	return data
