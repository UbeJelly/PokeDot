class_name ItemAttribute extends Node


@export var data: Dictionary = {
	"descriptions": [
		{
			"description": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"id": 0,
	"items": [
		{
			"name": "",
			"url": ""
		}
	],
	"name": "",
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


func set_data(descriptions: Array = [], id: int = 0, items: Array = [], _name: String = "", names: Array = []) -> void:
	data = {
		"descriptions": descriptions,
		"id": id,
		"items": items,
		"name": _name,
		"names": names
	}


func get_data() -> Dictionary:
	return data
