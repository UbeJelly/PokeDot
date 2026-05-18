class_name MoveCategory extends Node


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
	]
}


func set_data(id: int = 0, _name: String = "", descriptions: Array = [], moves: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"descriptions": descriptions,
		"moves": moves
	}


func get_data() -> Dictionary:
	return data
