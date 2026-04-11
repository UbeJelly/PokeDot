class_name Characteristic extends Node


export var data: Dictionary = {
	"id": 0,
	"gene_modulo": 0,
	"possible_values": [
		0,
		5,
		10,
		15,
		20,
		25,
		30
	],
	"highest_stat": {
		"name": "",
		"url": ""
	},
	"descriptions": [
		{
			"description": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	]
}


func set_data(_id: int = 0, _gene_modulo: int = 0, _possible_values: Array = [], _highest_stat: Dictionary = {}, _descriptions: Array = []) -> void:
	data = {
		"id": _id,
		"gene_modulo": _gene_modulo,
		"possible_values": _possible_values,
		"highest_stat": _highest_stat,
		"descriptions": _descriptions
	}


func get_data() -> Dictionary:
	return data
