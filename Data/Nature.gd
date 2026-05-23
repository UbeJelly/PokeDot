class_name Nature extends Node


@export var data: Dictionary = {
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


func set_data(id: int = 0, _name: String = "", decreased_stat = null, increased_stat = null, likes_flavor = null, hates_flavor = null, pokeathlon_stat_changes: Array = [], move_battle_style_preferences: Array = [], names: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"decreased_stat": decreased_stat,
		"increased_stat": increased_stat,
		"likes_flavor": likes_flavor,
		"hates_flavor": hates_flavor,
		"pokeathlon_stat_changes": pokeathlon_stat_changes,
		"move_battle_style_preferences": move_battle_style_preferences,
		"names": names,
	}


func get_data() -> Dictionary:
	return data
