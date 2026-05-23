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


func set_data(id: int = 0, _name: String = "", berries: Array = [], names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"berries": berries,
		"names": names
	}


func get_data() -> Dictionary:
	return data
