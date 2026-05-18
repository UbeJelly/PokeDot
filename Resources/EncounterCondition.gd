class_name EncounterCondition extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"values": [
		{
			"name": "",
			"url": ""
		},
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


func set_data(id: int = 0, _name: String = "", values: Array = [], names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"values": values,
		"names": names
	}


func get_data() -> Dictionary:
	return data
