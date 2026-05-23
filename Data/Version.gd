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


func set_data(id: int = 0, _name: String = "", names: Array = [], version_group: Dictionary = {}) -> void:

	data = {
		"id": id,
		"name": _name,
		"names": names,
		"version_group": version_group
	}


func get_data() -> Dictionary:
	return data
