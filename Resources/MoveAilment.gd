class_name MoveAilment extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
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


func set_data(_id: int = 0, _name: String = "", _moves: Array = [], _names: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"moves": _moves,
		"names": _names
	}


func get_data() -> Dictionary:
	return data
