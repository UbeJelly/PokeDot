class_name MoveTarget extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"descriptions": [
		{
			"description": "",
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


func set_data(id: int = 0, _name: String = "", descriptions: Array = [], moves: Array = [], names: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"descriptions": descriptions,
		"moves": moves,
		"names": names
	}


func get_data() -> Dictionary:
	return data
