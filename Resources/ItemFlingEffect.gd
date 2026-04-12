class_name ItemFlingEffect extends Node


export var data: Dictionary = {
	"id": 0,
	"name": "",
	"effect_entries": [
		{
			"effect": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"items": [
		{
			"name": "",
			"url": ""
		}
	]
}


func set_data(_id: int = 0, _name: String = "", _effect_entries: Array = [], _items: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"effect_entries": _effect_entries,
		"items": _items
	}


func get_data() -> Dictionary:
	return data
