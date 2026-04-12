class_name Item extends Node


export var data: Dictionary = {
	"id": 0,
	"name": "",
	"cost": 0,
	"fling_power": 0,
	"fling_effect": {
		"name": "",
		"url": ""
	},
	"attributes": [
		{
			"name": "",
			"url": ""
		}
	],
	"category": {
		"name": "",
		"url": ""
	},
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
	"flavor_text_entries": [
		{
			"text": "",
			"version_group": {
				"name": "",
				"url": ""
			},
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"game_indices": [
		{
			"game_index": 0,
			"generation": {
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
	"sprites": {
		"default": ""
	},
	"held_by_pokemon": [
		{
			"pokemon": {
				"name": "",
				"url": ""
			},
			"version_details": [
			{
				"rarity": 0,
				"version": {
					"name": "",
					"url": ""
				}
			}
			]
		}
	],
	"baby_trigger_for": {
		"url": ""
	}
}


func set_data(_id: int = 0, _name: String = "", _cost: int = 0, _fling_power: int = 0, _fling_effect: Dictionary = {}, _attributes: Array = [], _category: Dictionary = {}, _effect_entries: Array = [], _flavor_text_entries: Array = [], _game_indices: Array = [], _names: Array = [], _sprites: Dictionary = {}, _held_by_pokemon: Array = [], _baby_trigger_for: Dictionary = {}) -> void:
	data = {
		"id": _id,
		"name": _name,
		"cost": _cost,
		"fling_power": _fling_power,
		"fling_effect": _fling_effect,
		"attributes": _attributes,
		"category": _category,
		"effect_entries": _effect_entries,
		"flavor_text_entries": _flavor_text_entries,
		"game_indices": _game_indices,
		"names": _names,
		"sprites": _sprites,
		"held_by_pokemon": _held_by_pokemon,
		"baby_trigger_for": _baby_trigger_for
	}


func get_data() -> Dictionary:
	return data
