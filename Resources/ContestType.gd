class_name ContestType extends Node


export var data: Dictionary = {
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


func set_data(_id: int = 0, _name: String = "", _berry_flavor: Dictionary = {}, _names: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"berry_flavor": _berry_flavor,
		"names": _names
	}


func get_data() -> Dictionary:
	return data
