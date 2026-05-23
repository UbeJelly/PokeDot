class_name MoveLearnMethod extends Node


@export var data: Dictionary = {
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


func set_data(id: int = 0, _name: String = "", names: Array = [], descriptions: Array = [], version_groups: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"names": names,
		"descriptions": descriptions,
		"version_groups": version_groups
	}


func get_data() -> Dictionary:
	return data
