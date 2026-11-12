class_name EncounterCondition extends Node


@export var data: Dictionary = {
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


## Sets encounter condition data through Dictionary.
## [param id] is the id of an encounter condition.
## [param _name] is the name of an encounter condition.
## [param values] are the values that determine how and when a wild Pokemon appears.
## [param names] are encounter condition's names in different languages.
func set_data(id: int = 0, _name: String = "", values: Array = [], names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"values": values,
		"names": names
	}


## Get the encounter condition data after requesting it.
func get_data() -> Dictionary:
	return data
