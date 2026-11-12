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


## Sets encounter condition value data through Dictionary.
## [param id] is the id of an encounter condition value.
## [param _name] is the name of an encounter condition value.
## [param condition] are the conditions on how and when a wild Pokemon appears.
## [param names] are encounter condition value's names in different languages.
func set_data(id: int = 0, _name: String = "", condition: Dictionary = {}, names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"condition": condition,
		"names": names
	}


## Get the encounter condition value data after requesting it.
func get_data() -> Dictionary:
	return data
