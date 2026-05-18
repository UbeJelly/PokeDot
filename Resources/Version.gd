class_name Version extends Node


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
	"version_group": {
		"name": "",
		"url": ""
	}
}


func set_data(_id: int = 0, _name: String = "", _names: Array = [], _version_group: Dictionary = {}) -> void:

	data = {
		"id": _id,
		"name": _name,
		"names": _names,
		"version_group": _version_group
	}


func get_data() -> Dictionary:
	return data
