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


## Sets contest type data through Dictionary.
## [param id] is the id of a contest type.
## [param _name] is the name of a contest type.
## [param berry_flavor] are the flavors of a berry, e.g. Spicy, Sweet, and Sour.
## [param generation] refers to what generations a contest type belongs to.
## [param names] are contest type's names in different languages.
func set_data(id: int = 0, _name: String = "", berry_flavor: Dictionary = {}, names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"berry_flavor": berry_flavor,
		"names": names
	}


## Get the contest type data after requesting it.
func get_data() -> Dictionary:
	return data
