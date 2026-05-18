class_name Berry extends Node


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


func get_data() -> Dictionary:
	return data
