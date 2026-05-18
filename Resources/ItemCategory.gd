class_name ItemCategory extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"items": [
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
	],
	"pocket": {
		"name": "",
		"url": ""
	}
}


func set_data(_id: int = 0, _name: String = "", _items: Array = [], _names: Array = [], _pocket: Dictionary = {}) -> void:
	data = {
		"id": _id,
		"name": _name,
		"items": _items,
		"names": _names,
		"pocket": _pocket
	}


func get_data() -> Dictionary:
	return data
