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


func set_data(_id: int = 0, _name: String = "", _descriptions: Array = [], _moves: Array = [], _names: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"descriptions": _descriptions,
		"moves": _moves,
		"names": _names
	}


func get_data() -> Dictionary:
	return data
