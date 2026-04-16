class_name Pokedex extends Node


export var data: Dictionary = {
	"id": 0,
	"name": "",
	"is_main_series": true,
	"descriptions": [
		{
			"description": "",
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
	"pokemon_entries": [
		{
			"entry_number": 1,
			"pokemon_species": {
				"name": "",
				"url": ""
			}
		}
	],
	"region": {
		"name": "",
		"url": ""
	},
	"version_groups": [
		{
			"name": "",
			"url": ""
		}
	]
}


func set_data(_id: int = 0, _name: String = "", _is_main_series: bool = true, _descriptions: Array = [], _names: Array = [], _pokemon_entries: Array = [], _region: Dictionary = {}, _version_groups: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"is_main_series": _is_main_series,
		"descriptions": _descriptions,
		"names": _names,
		"pokemon_entries": _pokemon_entries,
		"region": _region,
		"version_groups": _version_groups
	}


func get_data() -> Dictionary:
	return data
