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


func set_data(_id: int = 0, _name: String = "", _accuracy: int = 0, _effect_chance = null, _pp: int = 0, _priority: int = 0, _power: int = 0, _contest_combos: Dictionary = {}, _contest_type: Dictionary = {}, _contest_effect: Dictionary = {}, _damage_class: Dictionary = {}, _effect_entries: Array = [], _effect_changes: Array = [], _generation: Dictionary = {}, _meta: Dictionary = {}, _names: Array = [], _past_values: Array = [], _stat_changes: Array = [], _super_contest_effect: Dictionary = {}, _target: Dictionary = {}, _type: Dictionary = {}, _learned_by_pokemon: Array = [], _flavor_text_entries: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"accuracy": _accuracy,
		"effect_chance": _effect_chance,
		"pp": _pp,
		"priority": _priority,
		"power": _power,
		"contest_combos": _contest_combos,
		"contest_type": _contest_type,
		"contest_effect": _contest_effect,
		"damage_class": _damage_class,
		"effect_entries": _effect_entries,
		"effect_changes": _effect_changes,
		"generation": _generation,
		"meta": _meta,
		"names": _names,
		"past_values": _past_values,
		"stat_changes": _stat_changes,
		"super_contest_effect": _super_contest_effect,
		"target": _target,
		"type": _type,
		"learned_by_pokemon": _learned_by_pokemon,
		"flavor_text_entries": _flavor_text_entries
	}


func get_data() -> Dictionary:
	return data
