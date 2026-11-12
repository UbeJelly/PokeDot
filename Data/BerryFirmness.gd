class_name BerryFirmness extends Node
## Data container for berry firmness.
## 
## Berries can be soft or hard. They can be very soft, soft, hard, very hard, and super hard.


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"berries": [
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


## Sets berry firmness data through Dictionary.
## [param id] is the id of a berry firmness.
## [param _name] is the name of a berry firmness.
## [param berries] are the berries with this firmness.
## [param names] are berry firmness' names in different languages.
func set_data(id: int = 0, _name: String = "", berries: Array = [], names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"berries": berries,
		"names": names
	}


## Get the berry firmness data after requesting it.
func get_data() -> Dictionary:
	return data
