class_name EncounterConditionValue extends Node


export var data: Dictionary = {
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


func set_data(_id: int = 0, _name: String = "", _condition: Dictionary = {}, _names: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"condition": _condition,
		"names": _names
	}


func get_data() -> Dictionary:
	return data
