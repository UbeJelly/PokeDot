class_name ContestType extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"berry_flavor": {
		"name": "",
		"url": ""
	},
	"names": [
		{
			"name": "",
			"color": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	]
}


func set_data(id: int = 0, _name: String = "", berry_flavor: Dictionary = {}, names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"berry_flavor": berry_flavor,
		"names": names
	}


func get_data() -> Dictionary:
	return data
