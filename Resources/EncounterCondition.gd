class_name EncounterCondition extends Node


export var data: Dictionary = {
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


func set_data(_id: int = 0, _name: String = "", _values: Array = [], _names: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"values": _values,
		"names": _names
	}


func get_data() -> Dictionary:
	return data
