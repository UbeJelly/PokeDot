class_name EncounterConditionValue extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"condition": {
		"name": "",
		"url": ""
	},
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


func set_data(id: int = 0, _name: String = "", condition: Dictionary = {}, names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"condition": condition,
		"names": names
	}


func get_data() -> Dictionary:
	return data
