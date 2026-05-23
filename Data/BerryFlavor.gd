class_name BerryFlavor extends Node


@export var data: Dictionary = {
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


func set_data(id: int = 0, _name: String = "", berries: Array = [], contest_type: Dictionary = {}, names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"berries": berries,
		"contest_type": contest_type,
		"names": names,
	}


func get_data() -> Dictionary:
	return data
