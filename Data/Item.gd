class_name Item extends Node


@export var data: Dictionary = {
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


func set_data(attributes: Array = [], category: Dictionary = {}, effect_entries: Array = [], flavor_text_entries: Array = [], game_indices: Array = [], names: Array = [], sprites: Dictionary = {}, held_by_pokemon: Array = [], baby_trigger_for: Dictionary = {}) -> void:
	data = {
		"attributes": attributes,
		"category": category,
		"effect_entries": effect_entries,
		"flavor_text_entries": flavor_text_entries,
		"game_indices": game_indices,
		"names": names,
		"sprites": sprites,
		"held_by_pokemon": held_by_pokemon,
		"baby_trigger_for": baby_trigger_for
	}


func get_data() -> Dictionary:
	return data
