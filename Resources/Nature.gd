class_name Nature extends Node


export var data: Dictionary = {
	"id": 0,
	"name": "",
	"decreased_stat": {
		"name": "",
		"url": ""
	},
	"increased_stat": {
		"name": "",
		"url": ""
	},
	"likes_flavor": {
		"name": "",
		"url": ""
	},
	"hates_flavor": {
		"name": "",
		"url": ""
	},
	"pokeathlon_stat_changes": [
		{
			"max_change": -1,
			"pokeathlon_stat": {
				"name": "",
				"url": ""
			}
		}
	],
	"move_battle_style_preferences": [
		{
			"low_hp_preference": 0,
			"high_hp_preference": 0,
			"move_battle_style": {
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
	]
}


func set_data(_id: int = 0, _name: String = "", _decreased_stat = null, _increased_stat = null, _likes_flavor = null, _hates_flavor = null, _pokeathlon_stat_changes: Array = [], _move_battle_style_preferences: Array = [], _names: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"decreased_stat": _decreased_stat,
		"increased_stat": _increased_stat,
		"likes_flavor": _likes_flavor,
		"hates_flavor": _hates_flavor,
		"pokeathlon_stat_changes": _pokeathlon_stat_changes,
		"move_battle_style_preferences": _move_battle_style_preferences,
		"names": _names,
	}


func get_data() -> Dictionary:
	return data
