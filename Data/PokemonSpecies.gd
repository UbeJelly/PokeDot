class_name PokemonSpecies extends Node


@export var data: Dictionary = {
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


func set_data(id: int = 0, _name: String = "", order: int = 0, gender_rate: int = 0, capture_rate: int = 0, base_happiness: int = 0, is_baby: bool = false, is_legendary: bool = false, is_mythical: bool = false, hatch_counter: int = 0, has_gender_differences: bool = false, forms_switchable: bool = false, growth_rate: Dictionary = {}, pokedex_numbers: Array = [], egg_groups: Array = [], color: Dictionary = {}, shape: Dictionary = {}, evolves_from_species: Dictionary = {}, evolution_chain: Dictionary = {}, habitat = null, generation: Dictionary = {}, names: Array = [], flavor_text_entries: Array = [], form_descriptions: Array = [], genera: Array = [], varieties: Array = []) -> void:

	data = {
		"id": id,
		"name": _name,
		"order": order,
		"gender_rate": gender_rate,
		"capture_rate": capture_rate,
		"base_happiness": base_happiness,
		"is_baby": is_baby,
		"is_legendary": is_legendary,
		"is_mythical": is_mythical,
		"hatch_counter": hatch_counter,
		"has_gender_differences": has_gender_differences,
		"forms_switchable": forms_switchable,
		"growth_rate": growth_rate,
		"pokedex_numbers": pokedex_numbers,
		"egg_groups": egg_groups,
		"color": color,
		"shape": shape,
		"evolves_from_species": evolves_from_species,
		"evolution_chain": evolution_chain,
		"habitat": habitat,
		"generation": generation,
		"names": names,
		"flavor_text_entries": flavor_text_entries,
		"form_descriptions": form_descriptions,
		"genera": genera,
		"varieties": varieties
	}


func get_data() -> Dictionary:
	return data
