class_name ItemAttribute extends Node


export var data: Dictionary = {
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


func set_data(_descriptions: Array = [], _id: int = 0, _items: Array = [], _name: String = "", _names: Array = []) -> void:
	data = {
		"descriptions": _descriptions,
		"id": _id,
		"items": _items,
		"name": _name,
		"names": _names
	}


func get_data() -> Dictionary:
	return data
