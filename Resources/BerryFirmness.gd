class_name BerryFirmness extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"berries": [
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


func set_data(_id: int = 0, _name: String = "", _berries: Array = [], _names: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"berries": _berries,
		"names": _names
	}


func get_data() -> Dictionary:
	return data
