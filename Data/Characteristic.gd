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


## Sets characteristic data through Dictionary.
## [param id] is the id of a characteristic.
## [param gene_modulo] is the remainder of the highest stat's IV divided by 5.
## [param possible_values] is a list of possible values for the highest stat.
## [param highest_stat] is the highest stat of a characteristic.
## [param names] are characteristic's names in different languages.
func set_data(id: int = 0, gene_modulo: int = 0, possible_values: Array = [], highest_stat: Dictionary = {}, descriptions: Array = []) -> void:
	data = {
		"id": id,
		"gene_modulo": gene_modulo,
		"possible_values": possible_values,
		"highest_stat": highest_stat,
		"descriptions": descriptions
	}


## Get the characteristic data after requesting it.
func get_data() -> Dictionary:
	return data
