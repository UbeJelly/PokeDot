class_name MoveBattleStyle extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
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


func set_data(_id: int = 0, _name: String = "", _names: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"names": _names
	}


func get_data() -> Dictionary:
	return data
