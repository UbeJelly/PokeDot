class_name Pokedex extends Node


@export var data: Dictionary = {
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


func set_data(id: int = 0, _name: String = "", is_main_series: bool = true, descriptions: Array = [], names: Array = [], pokemon_entries: Array = [], region: Dictionary = {}, version_groups: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"is_main_series": is_main_series,
		"descriptions": descriptions,
		"names": names,
		"pokemon_entries": pokemon_entries,
		"region": region,
		"version_groups": version_groups
	}


func get_data() -> Dictionary:
	return data
