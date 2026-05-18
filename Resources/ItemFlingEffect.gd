class_name ItemFlingEffect extends Node


@export var data: Dictionary = {
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


func set_data(id: int = 0, _name: String = "", effect_entries: Array = [], items: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"effect_entries": effect_entries,
		"items": items
	}


func get_data() -> Dictionary:
	return data
