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


func set_data(id: int = 0, _name: String = "", names: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"names": names
	}


func get_data() -> Dictionary:
	return data
