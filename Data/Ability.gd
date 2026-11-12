class_name Ability extends Node
## Data container for Pokemon's abilities.
## 
## Abilities provide passive effects for Pokemon in battle or in the overworld.
## Pokemon have multiple possible abilities but can have only one ability at a time.


@export var data: Dictionary = {
	"id": 0,
	"name": "",
	"is_main_series": true,
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
	"effect_entries": [
		{
			"effect": "",
			"short_effect": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"effect_changes": [
		{
			"version_group": {
				"name": "",
				"url": ""
			},
			"effect_entries": [
				{
					"effect": "",
					"language": {
						"name": "",
						"url": ""
					}
				}
			]
		}
	],
	"flavor_text_entries": [
		{
			"language": {
				"name": "",
				"url": ""
			},
			"version_group": {
				"name": "",
				"url": ""
			}
		}
	],
	"pokemon": [
		{
			"is_hidden": true,
			"slot": 0,
			"pokemon": {
				"name": "",
				"url": ""
			}
		}
	]
}


## Sets ability data through Dictionary.
## [param id] is the id of an ability.
## [param _name] is the name of an ability.
## [param is_main_series] tells whether an ability comes from the main series or not.
## [param generation] refers to what generations an ability belongs to.
## [param names] are ability's names in different languages.
## [param effect_entries] are ability's effects.
## [param effect_changes] are changes to an ability's effects.
## [param flavor_text_entries] are the short descriptions on how an ability is executed.
## [param pokemon] are the Pokemons who have this ability.
func set_data(id: int = 0, _name: String = "", is_main_series: bool = true, generation: Dictionary = {}, names: Array = [], effect_entries: Array = [], effect_changes: Array = [], flavor_text_entries: Array = [], pokemon: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"is_main_series": is_main_series,
		"generation": generation,
		"names": names,
		"effect_entries": effect_entries,
		"effect_changes": effect_changes,
		"flavor_text_entries": flavor_text_entries,
		"pokemon": pokemon
	}


## Get the ability data after requesting it.
func get_data() -> Dictionary:
	return data
