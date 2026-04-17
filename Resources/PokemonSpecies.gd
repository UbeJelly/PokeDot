class_name PokemonSpecies extends Node


export var data: Dictionary = {
	"id": 0,
	"name": "",
	"order": 0,
	"gender_rate": 0,
	"capture_rate": 0,
	"base_happiness": 0,
	"is_baby": false,
	"is_legendary": false,
	"is_mythical": false,
	"hatch_counter": 0,
	"has_gender_differences": false,
	"forms_switchable": false,
	"growth_rate": {
		"name": "",
		"url": ""
	},
	"pokedex_numbers": [
		{
			"entry_number": 0,
			"pokedex": {
				"name": "",
				"url": ""
			}
		}
	],
	"egg_groups": [
		{
			"name": "",
			"url": ""
		}
	],
	"color": {
		"name": "",
		"url": ""
	},
	"shape": {
		"name": "",
		"url": ""
	},
	"evolves_from_species": {
		"name": "",
		"url": ""
	},
	"evolution_chain": {
		"url": ""
	},
	"habitat": null,
	"generation": {
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
	],
	"flavor_text_entries": [
		{
			"flavor_text": "",
			"language": {
				"name": "",
				"url": ""
			},
			"version": {
				"name": "",
				"url": ""
			}
		}
	],
	"form_descriptions": [
		{
			"description": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"genera": [
		{
			"genus": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"varieties": [
		{
			"is_default": true,
			"pokemon": {
				"name": "",
				"url": ""
			}
		}
	]
}


func set_data(_id: int = 0, _name: String = "", _order: int = 0, _gender_rate: int = 0, _capture_rate: int = 0, _base_happiness: int = 0, _is_baby: bool = false, _is_legendary: bool = false, _is_mythical: bool = false, _hatch_counter: int = 0, _has_gender_differences: bool = false, _forms_switchable: bool = false, _growth_rate: Dictionary = {}, _pokedex_numbers: Array = [], _egg_groups: Array = [], _color: Dictionary = {}, _shape: Dictionary = {}, _evolves_from_species: Dictionary = {}, _evolution_chain: Dictionary = {}, _habitat = null, _generation: Dictionary = {}, _names: Array = [], _flavor_text_entries: Array = [], _form_descriptions: Array = [], _genera: Array = [], _varieties: Array = []) -> void:

	data = {
		"id": _id,
		"name": _name,
		"order": _order,
		"gender_rate": _gender_rate,
		"capture_rate": _capture_rate,
		"base_happiness": _base_happiness,
		"is_baby": _is_baby,
		"is_legendary": _is_legendary,
		"is_mythical": _is_mythical,
		"hatch_counter": _hatch_counter,
		"has_gender_differences": _has_gender_differences,
		"forms_switchable": _forms_switchable,
		"growth_rate": _growth_rate,
		"pokedex_numbers": _pokedex_numbers,
		"egg_groups": _egg_groups,
		"color": _color,
		"shape": _shape,
		"evolves_from_species": _evolves_from_species,
		"evolution_chain": _evolution_chain,
		"habitat": _habitat,
		"generation": _generation,
		"names": _names,
		"flavor_text_entries": _flavor_text_entries,
		"form_descriptions": _form_descriptions,
		"genera": _genera,
		"varieties": _varieties
	}


func get_data() -> Dictionary:
	return data
