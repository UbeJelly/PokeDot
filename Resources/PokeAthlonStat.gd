class_name PokeAthlonStat extends Node


export var data: Dictionary = {
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


func set_data(_id: int = 0, _name: String = "", _affecting_natures: Dictionary = {}, _names: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"affecting_natures": _affecting_natures,
		"names": _names,
	}


func get_data() -> Dictionary:
	return data
