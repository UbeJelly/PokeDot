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


func set_data(_id: int = 0, _name: String = "", _damage_relations: Dictionary = {}, _past_damage_relations: Array = [], _game_indices: Array = [], _generation: Dictionary = {}, _move_damage_class: Dictionary = {}, _names: Array = [], _pokemon: Array = [], _moves: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"damage_relations": _damage_relations,
		"past_damage_relations": _past_damage_relations,
		"game_indices": _game_indices,
		"generation": _generation,
		"move_damage_class": _move_damage_class,
		"names": _names,
		"pokemon": _pokemon,
		"moves": _moves
	}


func get_data() -> Dictionary:
	return data
