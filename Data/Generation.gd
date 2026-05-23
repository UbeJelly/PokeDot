class_name Generation extends Node


@export var data: Dictionary = {
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


func set_data(id: int = 0, _name: String = "", abilities: Array = [], main_region: Dictionary = {}, moves: Array = [], names: Array = [], pokemon_species: Array = [], types: Array = [], version_groups: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"abilities": abilities,
		"main_region": main_region,
		"moves": moves,
		"names": names,
		"pokemon_species": pokemon_species,
		"types": types,
		"version_groups": version_groups
	}


func get_data() -> Dictionary:
	return data
