class_name BerryFlavor extends Node


export var data: Dictionary = {
	"id": 0,
	"name": "",
	"berries": [
		{
			"potency": 0,
			"berry": {
				"name": "",
				"url": ""
			}
		}
	],
	"contest_type": {
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


func set_data(_id: int = 0, _name: String = "", _berries: Array = [], _contest_type: Dictionary = {}, _names: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"berries": _berries,
		"contest_type": _contest_type,
		"names": _names,
	}


func get_data() -> Dictionary:
	return data
