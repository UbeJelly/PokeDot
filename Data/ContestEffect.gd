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


## Sets contest effect data through Dictionary.
## [param id] is the id of a contest effect.
## [param appeal] is the level of appeal of a contest effect.
## [param jam] is the level of jam of a contest effect.
## [param effect_entries] is a list of effect descriptions.
## [param flavor_text_entries] is a list of descriptions of actions with contest effects.
func set_data(id: int = 0, appeal: int = 0, jam: int = 0, effect_entries: Array = [], flavor_text_entries: Array = []) -> void:
	data = {
		"id": id,
		"appeal": appeal,
		"jam": jam,
		"effect_entries": effect_entries,
		"flavor_text_entries": flavor_text_entries
	}


## Get the contest effect data after requesting it.
func get_data() -> Dictionary:
	return data
