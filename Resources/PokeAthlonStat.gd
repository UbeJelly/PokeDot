class_name PokeAthlonStat extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"affecting_natures": {
		"increase": [
			{
				"max_change": 0,
				"nature": {
					"name": "",
					"url": ""
				}
			}
		],
		"decrease": [
			{
				"max_change": -1,
				"nature": {
					"name": "",
					"url": ""
				}
			}
		]
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


func set_data(id: int = 0, _name: String = "", affecting_natures: Dictionary = {}, names: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"affecting_natures": affecting_natures,
		"names": names,
	}


func get_data() -> Dictionary:
	return data
