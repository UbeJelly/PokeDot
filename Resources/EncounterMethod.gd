class_name EncounterMethod extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"order": 0,
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


func set_data(_id: int = 0, _name: String = "", _order: int = 0, _names: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"order": _order,
		"names": _names
	}


func get_data() -> Dictionary:
	return data
