class_name BerryFlavor extends Node
## Data container for berry flavor.
## 
## Flavors determine whether a Pokemon will benefit or suffer from eating a berry based on their [Nature].


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


## Sets berry flavor data through Dictionary.
## [param id] is the id of a berry flavor.
## [param _name] is the name of a berry flavor.
## [param berries] are the berries with this flavor.
## [param contest_type] is the type of this berry flavor in a Pokemon contest.
## [param names] are berry flavor's names in different languages.
func set_data(id: int = 0, _name: String = "", berries: Array = [], contest_type: Dictionary = {}, names: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"berries": berries,
		"contest_type": contest_type,
		"names": names,
	}


## Get the berry flavor data after requesting it.
func get_data() -> Dictionary:
	return data
