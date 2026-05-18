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


func set_data(id: int = 0, _name: String = "", order: int = 0, names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"order": order,
		"names": names
	}


func get_data() -> Dictionary:
	return data
