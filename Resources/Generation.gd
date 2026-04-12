class_name Generation extends Node


export var data: Dictionary = {
	"id": 0,
	"name": "",
	"abilities": [],
	"main_region": {
		"name": "",
		"url": ""
	},
	"moves": [
		{
			"name": "",
			"url": ""
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
	"pokemon_species": [
		{
			"name": "",
			"url": ""
		}
	],
	"types": [
		{
			"name": "",
			"url": ""
		}
	],
	"version_groups": [
		{
			"name": "",
			"url": ""
		}
	]
}


func set_data(_id: int = 0, _name: String = "", _abilities: Array = [], _main_region: Dictionary = {}, _moves: Array = [], _names: Array = [], _pokemon_species: Array = [], _types: Array = [], _version_groups: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"abilities": _abilities,
		"main_region": _main_region,
		"moves": _moves,
		"names": _names,
		"pokemon_species": _pokemon_species,
		"types": _types,
		"version_groups": _version_groups
	}


func get_data() -> Dictionary:
	return data
