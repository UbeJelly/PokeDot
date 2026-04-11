class_name ContestEffect extends Node


export var data: Dictionary = {
	"id": 0,
	"appeal": 0,
	"jam": 0,
	"effect_entries": [
		{
			"effect": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"flavor_text_entries": [
		{
			"flavor_text": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	]
}


func set_data(_id: int = 0, _appeal: int = 0, _jam: int = 0, _effect_entries: Array = [], _flavor_text_entries: Array = []) -> void:
	data = {
		"id": _id,
		"appeal": _appeal,
		"jam": _jam,
		"effect_entries": _effect_entries,
		"flavor_text_entries": _flavor_text_entries
	}


func get_data() -> Dictionary:
	return data
