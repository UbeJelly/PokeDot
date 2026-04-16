class_name MoveDamageClass extends Node


export var data: Dictionary = {
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


func set_data(_id: int = 0, _name: String = "", _descriptions: Array = [], _moves: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"descriptions": _descriptions,
		"moves": _moves
	}


func get_data() -> Dictionary:
	return data
