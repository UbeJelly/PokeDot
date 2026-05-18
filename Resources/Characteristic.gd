class_name Characteristic extends Node


@export var data: Dictionary = {
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


func set_data(id: int = 0, gene_modulo: int = 0, possible_values: Array = [], highest_stat: Dictionary = {}, descriptions: Array = []) -> void:
	data = {
		"id": id,
		"gene_modulo": gene_modulo,
		"possible_values": possible_values,
		"highest_stat": highest_stat,
		"descriptions": descriptions
	}


func get_data() -> Dictionary:
	return data
