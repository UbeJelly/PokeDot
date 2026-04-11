class_name Berry extends Node


export var data: Dictionary = {
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


func set_data(_id: int = 0, _name: String = "", _growth_time: int = 0, _max_harvest: int = 0, _natural_gift_power: int = 0, _size: int = 0, _smoothness: int = 0, _soil_dryness: int = 0, _firmness: Dictionary = {}, _flavors: Array = [], _item: Dictionary = {}, _natural_gift_type: Dictionary = {}) -> void:
	data = {
		"id": _id,
		"name": _name,
		"growth_time": _growth_time,
		"max_harvest": _max_harvest,
		"natural_gift_power": _natural_gift_power,
		"size": _size,
		"smoothness": _smoothness,
		"soil_dryness": _soil_dryness,
		"firmness": _firmness,
		"flavors": _flavors,
		"item": _item,
		"natural_gift_type": _natural_gift_type
	}


func get_data() -> Dictionary:
	return data
