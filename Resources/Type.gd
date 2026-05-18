class_name Type extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"damage_relations": {
		"no_damage_to": [
			{
				"name": "",
				"url": ""
			}
		],
		"half_damage_to": [
			{
				"name": "",
				"url": ""
			}
		],
		"double_damage_to": [
			{
				"name": "",
				"url": ""
			}
		],
		"no_damage_from": [
			{
				"name": "",
				"url": ""
			}
		],
		"half_damage_from": [
			{
				"name": "",
				"url": ""
			}
		],
		"double_damage_from": [
			{
				"name": "",
				"url": ""
			}
		]
	},
	"past_damage_relations": [
		{
			"generation": {
				"name": "",
				"url": ""
			},
			"damage_relations": {
				"no_damage_to": [
					{
						"name": "",
						"url": ""
					}
				],
				"half_damage_to": [
					{
						"name": "",
						"url": ""
					}
				],
				"double_damage_to": [
					{
						"name": "",
						"url": ""
					}
				],
				"no_damage_from": [
					{
						"name": "",
						"url": ""
					}
				],
				"half_damage_from": [
					{
						"name": "",
						"url": ""
					}
				],
				"double_damage_from": [
					{
						"name": "",
						"url": ""
					}
				]
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
	"generation": {
		"name": "",
		"url": ""
	},
	"move_damage_class": {
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
	"pokemon": [
		{
			"slot": 0,
			"pokemon": {
				"name": "",
				"url": ""
			}
		}
	],
	"moves": [
		{
			"name": "",
			"url": ""
		}
	]
}


func set_data(id: int = 0, _name: String = "", damage_relations: Dictionary = {}, past_damage_relations: Array = [], game_indices: Array = [], generation: Dictionary = {}, move_damage_class: Dictionary = {}, names: Array = [], pokemon: Array = [], moves: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"damage_relations": damage_relations,
		"past_damage_relations": past_damage_relations,
		"game_indices": game_indices,
		"generation": generation,
		"move_damage_class": move_damage_class,
		"names": names,
		"pokemon": pokemon,
		"moves": moves
	}


func get_data() -> Dictionary:
	return data
