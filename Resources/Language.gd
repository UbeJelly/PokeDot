class_name Language extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"official": true,
	"iso639": "",
	"iso3166": "",
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


func set_data(_id: int = 0, _name: String = "", _official: bool = true, _iso639: String = "", _iso3166: String = "", _names: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"official": _official,
		"iso639": _iso639,
		"iso3166": _iso3166,
		"names": _names
	}


func get_data() -> Dictionary:
	return data
