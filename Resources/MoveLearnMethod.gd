class_name MoveLearnMethod extends Node


export var data: Dictionary = {
	"id": 0,
	"name": "",
	"names": [
		{
			"name": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"descriptions": [
		{
			"description": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"version_groups": [
		{
			"name": "",
			"url": ""
		}
	]
}


func set_data(_id: int = 0, _name: String = "", _names: Array = [], _descriptions: Array = [], _version_groups: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"names": _names,
		"descriptions": _descriptions,
		"version_groups": _version_groups
	}


func get_data() -> Dictionary:
	return data
