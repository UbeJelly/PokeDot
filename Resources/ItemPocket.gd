class_name ItemPocket extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"categories": [
		{
			"name": "",
			"url": ""
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


func set_data(id: int = 0, _name: String = "", categories: Array = [], names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"categories": categories,
		"names": names
	}


func get_data() -> Dictionary:
	return data
