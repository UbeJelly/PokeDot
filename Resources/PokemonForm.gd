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


func set_data(_id: int = 0, _name: String = "", _order: int = 0, _form_order: int = 0, _is_default: bool = false, _is_battle_only: bool = false, _is_mega: bool = false, _form_name: String = "", _pokemon: Dictionary = {}, _sprites: Dictionary = {}, _types: Array = [], _version_group: Dictionary = {}) -> void:

	data = {
		"id": _id,
		"name": _name,
		"order": _order,
		"form_order": _form_order,
		"is_default": _is_default,
		"is_battle_only": _is_battle_only,
		"is_mega": _is_mega,
		"form_name": _form_name,
		"pokemon": _pokemon,
		"sprites": _sprites,
		"types": _types,
		"version_group": _version_group
	}


func get_data() -> Dictionary:
	return data
