class_name SuperContestEffect extends Node


@export var data: Dictionary = {
	"id": 0,
	"appeal": 0,
	"flavor_text_entries": [
		{
			"flavor_text": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"moves": [
		{
			"name": "",
			"url": ""
		}
	]
}


func set_data(_id: int = 0, _appeal: int = 0, _flavor_text_entries: Array = [], _moves: Array = []) -> void:

	data = {
		"id": _id,
		"appeal": _appeal,
		"flavor_text_entries": _flavor_text_entries,
		"moves": _moves,
	}


func get_data() -> Dictionary:
	return data
