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


func set_data(id: int = 0, appeal: int = 0, flavor_text_entries: Array = [], moves: Array = []) -> void:

	data = {
		"id": id,
		"appeal": appeal,
		"flavor_text_entries": flavor_text_entries,
		"moves": moves,
	}


func get_data() -> Dictionary:
	return data
