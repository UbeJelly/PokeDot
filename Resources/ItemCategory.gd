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


func set_data(id: int = 0, _name: String = "", items: Array = [], names: Array = [], pocket: Dictionary = {}) -> void:
	data = {
		"id": id,
		"name": _name,
		"items": items,
		"names": names,
		"pocket": pocket
	}


func get_data() -> Dictionary:
	return data
