class_name ItemPocket extends Node


export var data: Dictionary = {
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


func set_data(_id: int = 0, _name: String = "", _categories: Array = [], _names: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"categories": _categories,
		"names": _names
	}


func get_data() -> Dictionary:
	return data
