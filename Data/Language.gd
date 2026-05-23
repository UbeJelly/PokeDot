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


func set_data(id: int = 0, _name: String = "", official: bool = true, iso639: String = "", iso3166: String = "", names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"official": official,
		"iso639": iso639,
		"iso3166": iso3166,
		"names": names
	}


func get_data() -> Dictionary:
	return data
