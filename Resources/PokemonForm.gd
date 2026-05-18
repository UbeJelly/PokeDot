class_name PokemonForm extends Node


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"order": 0,
	"form_order": 0,
	"is_default": false,
	"is_battle_only": false,
	"is_mega": false,
	"form_name": "",
	"pokemon": {
		"name": "",
		"url": ""
	},
	"sprites": {
		"back_default": "",
		"back_female": null,
		"back_shiny": "",
		"back_shiny_female": null,
		"front_default": "",
		"front_female": null,
		"front_shiny": "",
		"front_shiny_female": null
	},
	"types": [
		{
			"slot": 0,
			"type": {
				"name": "",
				"url": ""
			}
		}
	],
	"version_group": {
		"name": "",
		"url": ""
	}
}


func set_data(id: int = 0, _name: String = "", order: int = 0, form_order: int = 0, is_default: bool = false, is_battle_only: bool = false, is_mega: bool = false, form_name: String = "", pokemon: Dictionary = {}, sprites: Dictionary = {}, types: Array = [], version_group: Dictionary = {}) -> void:

	data = {
		"id": id,
		"name": _name,
		"order": order,
		"form_order": form_order,
		"is_default": is_default,
		"is_battle_only": is_battle_only,
		"is_mega": is_mega,
		"form_name": form_name,
		"pokemon": pokemon,
		"sprites": sprites,
		"types": types,
		"version_group": version_group
	}


func get_data() -> Dictionary:
	return data
