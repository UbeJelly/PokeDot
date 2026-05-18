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


func set_data(id: int = 0, _name: String = "", moves: Array = [], names: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"moves": moves,
		"names": names
	}


func get_data() -> Dictionary:
	return data
