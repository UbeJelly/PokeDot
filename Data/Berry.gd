class_name Berry extends Node
## Data container for berries.
## 
## Berries are small fruits that can provide HP and status condition restoration, stat enhancement, and even damage negation when eaten by Pokémon.


@export var data: Dictionary = {
	"id": 1,
	"name": "",
	"growth_time": 0,
	"max_harvest": 0,
	"natural_gift_power": 0,
	"size": 0,
	"smoothness": 0,
	"soil_dryness": 0,
	"firmness": {
		"name": "",
		"url": ""
	},
	"flavors": [
		{
			"potency": 0,
			"flavor": {
				"name": "",
				"url": ""
			}
		}
	],
	"item": {
		"name": "",
		"url": ""
	},
	"natural_gift_type": {
		"name": "",
		"url": ""
	}
}


## Sets berry data through Dictionary.
## [param id] is the id of a berry.
## [param name] is the name of a berry.
## [param growth_time] is the duration to grow a berry.
## [param max_harvest] is the max amount of harvest of a berry.
## [param natural_gift_power] is the power of a berry on Natural Gift.
## [param size] is the size of a berry.
## [param smoothness] is the smoothness of a berry.
## [param soil_dryness] is the rate how fast the soil dries out from a berry.
## [param firmness] is the firmness of a berry, e.g. Soft, Hard, and Super Hard.
## [param flavors] are the flavors of a berry, e.g. Spicy, Sweet, and Sour.
## [param item] are the items of a berry, e.g. what to plant on a soil.
## [param natural_gift_type] is the type of a berry on Natural Gift, e.g. Fire, Water, and Grass.
func set_data(id: int = 0, _name: String = "", growth_time: int = 0, max_harvest: int = 0, natural_gift_power: int = 0, size: int = 0, smoothness: int = 0, soil_dryness: int = 0, firmness: Dictionary = {}, flavors: Array = [], item: Dictionary = {}, natural_gift_type: Dictionary = {}) -> void:
	data = {
		"id": id,
		"name": _name,
		"growth_time": growth_time,
		"max_harvest": max_harvest,
		"natural_gift_power": natural_gift_power,
		"size": size,
		"smoothness": smoothness,
		"soil_dryness": soil_dryness,
		"firmness": firmness,
		"flavors": flavors,
		"item": item,
		"natural_gift_type": natural_gift_type
	}


## Get the berry data after requesting it.
func get_data() -> Dictionary:
	return data
