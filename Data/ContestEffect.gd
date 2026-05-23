class_name ContestEffect extends Node


@export var data: Dictionary = {
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


func set_data(id: int = 0, appeal: int = 0, jam: int = 0, effect_entries: Array = [], flavor_text_entries: Array = []) -> void:
	data = {
		"id": id,
		"appeal": appeal,
		"jam": jam,
		"effect_entries": effect_entries,
		"flavor_text_entries": flavor_text_entries
	}


func get_data() -> Dictionary:
	return data
