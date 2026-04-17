class_name Stat extends Node


export var data: Dictionary = {
	"id": 0,
	"name": "",
	"game_index": 0,
	"is_battle_only": false,
	"affecting_moves": {
		"increase": [
			{
				"change": 0,
				"move": {
					"name": "",
					"url": ""
				}
			}
		],
		"decrease": [
			{
				"change": -1,
				"move": {
					"name": "",
					"url": ""
				}
			}
		]
	},
	"affecting_natures": {
		"increase": [
			{
				"name": "",
				"url": ""
			}
		],
		"decrease": [
			{
				"name": "",
				"url": ""
			}
		]
	},
	"characteristics": [
		{
			"url": ""
		}
	],
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
	]
}


func set_data(_id: int = 0, _name: String = "", _game_index: int = 0, _is_battle_only: bool = false, _affecting_moves: Dictionary = {}, _affecting_natures: Dictionary = {}, _characteristics: Array = [], _move_damage_class: Dictionary = {}, _names: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"game_index": _game_index,
		"is_battle_only": _is_battle_only,
		"affecting_moves": _affecting_moves,
		"affecting_natures": _affecting_natures,
		"characteristics": _characteristics,
		"move_damage_class": _move_damage_class,
		"names": _names
	}


func get_data() -> Dictionary:
	return data
