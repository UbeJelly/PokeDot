class_name Move extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"accuracy": 0,
	"effect_chance": null,
	"pp": 0,
	"priority": 0,
	"power": 0,
	"contest_combos": {
		"normal": {
			"use_before": [
				{
					"name": "",
					"url": ""
				},
				{
					"name": "",
					"url": ""
				},
				{
					"name": "",
					"url": ""
				}
			],
			"use_after": null
		},
		"super": {
			"use_before": null,
			"use_after": null
		}
	},
	"contest_type": {
		"name": "",
		"url": ""
	},
	"contest_effect": {
		"url": ""
	},
	"damage_class": {
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
	"effect_changes": [],
	"generation": {
		"name": "",
		"url": ""
	},
	"meta": {
		"ailment": {
			"name": "",
			"url": ""
		},
		"category": {
			"name": "",
			"url": ""
		},
		"min_hits": null,
		"max_hits": null,
		"min_turns": null,
		"max_turns": null,
		"drain": 0,
		"healing": 0,
		"crit_rate": 0,
		"ailment_chance": 0,
		"flinch_chance": 0,
		"stat_chance": 0
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
	"past_values": [],
	"stat_changes": [],
	"super_contest_effect": {
		"url": ""
	},
	"target": {
		"name": "",
		"url": ""
	},
	"type": {
		"name": "",
		"url": ""
	},
	"learned_by_pokemon": [
		{
			"name": "",
			"url": ""
		}
	],
	"flavor_text_entries": [
		{
			"flavor_text": "",
			"language": {
				"url": "",
				"name": ""
			},
			"version_group": {
				"url": "",
				"name": ""
			}
		}
	]
}


func set_data(id: int = 0, _name: String = "", accuracy: int = 0, effect_chance = null, pp: int = 0, priority: int = 0, power: int = 0, contest_combos: Dictionary = {}, contest_type: Dictionary = {}, contest_effect: Dictionary = {}, damage_class: Dictionary = {}, effect_entries: Array = [], effect_changes: Array = [], generation: Dictionary = {}, meta: Dictionary = {}, names: Array = [], past_values: Array = [], stat_changes: Array = [], super_contest_effect: Dictionary = {}, target: Dictionary = {}, type: Dictionary = {}, learned_by_pokemon: Array = [], flavor_text_entries: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"accuracy": accuracy,
		"effect_chance": effect_chance,
		"pp": pp,
		"priority": priority,
		"power": power,
		"contest_combos": contest_combos,
		"contest_type": contest_type,
		"contest_effect": contest_effect,
		"damage_class": damage_class,
		"effect_entries": effect_entries,
		"effect_changes": effect_changes,
		"generation": generation,
		"meta": meta,
		"names": names,
		"past_values": past_values,
		"stat_changes": stat_changes,
		"super_contest_effect": super_contest_effect,
		"target": target,
		"type": type,
		"learned_by_pokemon": learned_by_pokemon,
		"flavor_text_entries": flavor_text_entries
	}


func get_data() -> Dictionary:
	return data
