class_name Stat extends Node


@export var data: Dictionary = {
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


func set_data(id: int = 0, _name: String = "", game_index: int = 0, is_battle_only: bool = false, affecting_moves: Dictionary = {}, affecting_natures: Dictionary = {}, characteristics: Array = [], move_damage_class: Dictionary = {}, names: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"game_index": game_index,
		"is_battle_only": is_battle_only,
		"affecting_moves": affecting_moves,
		"affecting_natures": affecting_natures,
		"characteristics": characteristics,
		"move_damage_class": move_damage_class,
		"names": names
	}


func get_data() -> Dictionary:
	return data
