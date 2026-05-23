class_name PokeDotClient extends HTTPRequest

enum Get {
	POKEMON_PAGINATION,
	ABILITY,
	BERRY,
	BERRY_FLAVOR,
	BERRY_FIRMNESS,
	CHARACTERISTIC,
	CONTEST_EFFECT,
	CONTEST_TYPE,
	EGG_GROUP,
	ENCOUNTER_CONDITION,
	ENCOUNTER_CONDITION_VALUE,
	ENCOUNTER_METHOD,
	EVOLUTION_CHAIN,
	EVOLUTION_TRIGGER,
	GENDER,
	GENERATION,
	GROWTH_RATE,
	ITEM,
	ITEM_ATTRIBUTE,
	ITEM_CATEGORY,
	ITEM_FLING_EFFECT,
	ITEM_POCKET,
	LANGUAGE,
	LOCATION,
	LOCATION_AREA,
	MACHINE,
	MOVE,
	MOVE_AILMENT,
	MOVE_BATTLE_STYLE,
	MOVE_CATEGORY,
	MOVE_DAMAGE_CLASS,
	MOVE_LEARN_METHOD,
	MOVE_TARGET,
	NATURE,
	PAL_PARK_AREA,
	POKEATHLON_STAT,
	POKEDEX,
	POKEMON,
	POKEMON_COLOR,
	POKEMON_FORM,
	POKEMON_HABITAT,
	POKEMON_SHAPE,
	POKEMON_SPECIES,
	REGION,
	STAT,
	SUPER_CONTEST_EFFECT,
	TYPE,
	VERSION,
	VERSION_GROUP
}

const NAME_ID_ERROR: String = "ERROR: %s, <name_or_id> must be an int or String type."

## INFO: Toggle the visibility of callback status or requested data on terminal.
@export_category("Console Texts")
@export var print_stat: bool = true			## Show or hide the status of functions.
@export var print_data: bool = true			## Show or hide the requested data.
@export var print_result: bool = true		## Show or hide the result of requests.
@export var print_response: bool = true		## Show or hide the response of requests.
@export var print_headers: bool = false		## Show or hide the headers of requests.

var url: String = "https://pokeapi.co/api/v2/"
var query: int = 0

@onready var pokemon_pagination := PokemonPagination.new()
@onready var ability := Ability.new()
@onready var berry := Berry.new()
@onready var berry_flavor := BerryFlavor.new()
@onready var berry_firmness := BerryFirmness.new()
@onready var characteristic := Characteristic.new()
@onready var contest_effect := ContestEffect.new()
@onready var contest_type := ContestType.new()
@onready var egg_group := EggGroup.new()
@onready var encounter_condition := EncounterCondition.new()
@onready var encounter_condition_value := EncounterConditionValue.new()
@onready var encounter_method := EncounterMethod.new()
@onready var evolution_chain := EvolutionChain.new()
@onready var evolution_trigger := EvolutionTrigger.new()
@onready var gender := Gender.new()
@onready var generation := Generation.new()
@onready var growth_rate := GrowthRate.new()
@onready var item := Item.new()
@onready var item_attribute := ItemAttribute.new()
@onready var item_category := ItemCategory.new()
@onready var item_fling_effect := ItemFlingEffect.new()
@onready var item_pocket := ItemPocket.new()
@onready var language := Language.new()
@onready var location := Location.new()
@onready var location_area := LocationArea.new()
@onready var machine := Machine.new()
@onready var move := Move.new()
@onready var move_ailment := MoveAilment.new()
@onready var move_battle_style := MoveBattleStyle.new()
@onready var move_category := MoveCategory.new()
@onready var move_damage_class := MoveDamageClass.new()
@onready var move_learn_method := MoveLearnMethod.new()
@onready var move_target := MoveTarget.new()
@onready var nature := Nature.new()
@onready var pal_park_area := PalParkArea.new()
@onready var pokeathlon_stat := PokeAthlonStat.new()
@onready var pokedex := Pokedex.new()
@onready var pokemon := Pokemon.new()
@onready var pokemon_color := PokemonColor.new()
@onready var pokemon_form := PokemonForm.new()
@onready var pokemon_habitat := PokemonHabitat.new()
@onready var pokemon_shape := PokemonShape.new()
@onready var pokemon_species := PokemonSpecies.new()
@onready var region := Region.new()
@onready var stat := Stat.new()
@onready var super_contest_effect := SuperContestEffect.new()
@onready var type := Type.new()
@onready var version := Version.new()
@onready var version_group := VersionGroup.new()


## Main client that starts [param HTTPRequest] for any data. Returns a request error.
## [param main_url] is the main URL. Currently uses PokeAPI v2.
## [param endpoint] is the API endpoint to request data from.
## [param method] is the name of the method, e.g. 'get_ability', to return their request status.
func PokeDotClient(main_url: String = url, endpoint: String = "", method: String = "") -> void:
	print("Request endpoint: %s" % main_url + endpoint + "\n")

	if not main_url == "" or not endpoint == "":
		var error: int = 0
		error = request(main_url + endpoint, ["Accept: application/json"], HTTPClient.METHOD_GET)
		if error == OK: print("✓ %s() run successfully." % method)
		else: print("❌ %s() failed." % method)
	else:
		print("❌ PokeDotClient() failed. The main_url or endpoint cannot be empty.")


## Retrieves a list of Pokemons on a page and its position and stores it to PokemonPagination.
## [param endpoint] is the API endpoint to request data from. "pokemon" by default
## [param limit] is the number of Pokemons in a page. 20 items by default
## [param offset] is used to move between pages. 0 by default
func get_pokemon_pagination(endpoint: String = "pokemon", limit: int = 20, offset: int = 0) -> void:
	query = Get.POKEMON_PAGINATION
	PokeDotClient(url, "%s/?limit=%s&offset=%s" % [endpoint, limit, offset], "get_pokemon_pagination")


## Retrieves an ability data and stores it to Ability.
## [param name_or_id] is the name or id of an ability.
func get_ability(name_or_id) -> void:
	query = Get.ABILITY
	PokeDotClient(url, "ability/%s/" % str(name_or_id), "get_ability")


## Retrieves a berry data and stores it to Berry.
## [param name_or_id] is the name or id of a berry.
func get_berry(name_or_id) -> void:
	query = Get.BERRY
	PokeDotClient(url, "berry/%s/" % str(name_or_id), "get_berry")


## Retrieves a berry flavor data and stores it to BerryFlavor.
## [param name_or_id] is the name or id of a berry flavor.
func get_berry_flavor(name_or_id) -> void:
	query = Get.BERRY_FLAVOR
	PokeDotClient(url, "berry-flavor/%s/" % str(name_or_id), "get_berry_flavor")


## Retrieves a berry firmness data and stores it to BerryFirmness.
## [param name_or_id] is the name or id of a berry firmness.
func get_berry_firmness(name_or_id) -> void:
	query = Get.BERRY_FIRMNESS
	PokeDotClient(url, "berry-firmness/%s/" % str(name_or_id), "get_berry_firmness")


## Retrieves the Pokemon's highest stat and stores it to Characteristic.
## [param id] is the id of a characteristic.
func get_characteristic(id: int = 0) -> void:
	query = Get.CHARACTERISTIC
	PokeDotClient(url, "characteristic/%s/" % str(id), "get_characteristic")


## Retrieves the Pokemon moves' effects in contests and stores them to ContestEffect.
## [param id] is the id of a contest effect.
func get_contest_effect(id: int = 0) -> void:
	query = Get.CONTEST_EFFECT
	PokeDotClient(url, "contest-effect/%s/" % str(id), "get_contest_effect")


## Retrieves the categories that judges use to weigh a Pokemon's condition in contests, and stores them to ContestType.
## [param name_or_id] is the name or id of a contest type.
func get_contest_type(name_or_id) -> void:
	query = Get.CONTEST_TYPE
	PokeDotClient(url, "contest-type/%s/" % str(name_or_id), "get_contest_type")


## Retrieves the categories that determine which Pokemon are able to interbreed, and stores them to EggGroup.
## [param name_or_id] is the name or id of an egg group.
func get_egg_group(name_or_id) -> void:
	query = Get.EGG_GROUP
	PokeDotClient(url, "egg-group/%s/" % str(name_or_id), "get_egg_group")


## Retrieves the conditions that affect which Pokemon might appear in the wild, e.g., day or night, and stores them to EncounterCondition.
## [param name_or_id] is the name or id of an encounter condition.
func get_encounter_condition(name_or_id) -> void:
	query = Get.ENCOUNTER_CONDITION
	PokeDotClient(url, "encounter-condition/%s/" % str(name_or_id), "get_encounter_condition")


## Retrieves the various states that an encounter condition can have, e.g., time of day can be either day or night, and stores them to EncounterConditionValue.
## [param name_or_id] is the name or id of an encounter condition value.
func get_encounter_condition_value(name_or_id) -> void:
	query = Get.ENCOUNTER_CONDITION_VALUE
	PokeDotClient(url, "encounter-condition-value/%s/" % str(name_or_id), "get_encounter_condition_value")


## Retrieves the methods by which the player might can encounter Pokemon in the wild, e.g., walking in tall grass, and stores them to EncounterMethod.
## [param name_or_id] is the name or id of an encounter method.
func get_encounter_method(name_or_id) -> void:
	query = Get.ENCOUNTER_METHOD
	PokeDotClient(url, "encounter-method/%s/" % str(name_or_id), "get_encounter_method")


## Retrieves the Pokemon's family tree and stores it to EvolutionChain.
## [param id] is the id of an evolution chain.
func get_evolution_chain(id: int = 0) -> void:
	query = Get.EVOLUTION_CHAIN
	PokeDotClient(url, "evolution-chain/%s/" % str(id), "get_evolution_chain")


## Retrieves the events and conditions that cause a Pokemon to evolve and stores them to EvolutionTrigger.
## [param name_or_id] is the name or id of an evolution trigger.
func get_evolution_trigger(name_or_id) -> void:
	query = Get.EVOLUTION_TRIGGER
	PokeDotClient(url, "evolution-trigger/%s/" % str(name_or_id), "get_evolution_trigger")


## Retrieves the details about gender i.e. species, rate, and evolution requirements, and stores them to Gender.
## [param name_or_id] is the name or id of a gender.
func get_gender(name_or_id) -> void:
	query = Get.GENDER
	PokeDotClient(url, "gender/%s/" % str(name_or_id), "get_gender")


## Retrieves the details about a grouping of the Pokemon games that are separated based on the Pokemon they include and stores them to Generation.
## [param name_or_id] is the name or id of a generation.
func get_generation(name_or_id) -> void:
	query = Get.GENERATION
	PokeDotClient(url, "generation/%s/" % str(name_or_id), "get_generation")


## Retrieves the speed in which a Pokemon gain levels through experience and stores it to GrowthRate.
## [param name_or_id] is the name or id of growth rate.
func get_growth_rate(name_or_id) -> void:
	query = Get.GROWTH_RATE
	PokeDotClient(url, "growth-rate/%s/" % str(name_or_id), "get_growth_rate")


## Retrieves an object in the games which the player can pick up, keep in their bag, and use in some manner, and stores it to Item.
## [param name_or_id] is the name or id of an item.
func get_item(name_or_id) -> void:
	query = Get.ITEM
	PokeDotClient(url, "item/%s/" % str(name_or_id), "get_item")


## Retrieves the definition of particular aspects of items, e.g. "usable in battle" or "consumable", and stores it to ItemAttribute.
## [param name_or_id] is the name or id of an item attribute.
func get_item_attribute(name_or_id) -> void:
	query = Get.ITEM_ATTRIBUTE
	PokeDotClient(url, "item-attribute/%s/" % str(name_or_id), "get_item_attribute")


## Retrieves the category that determine where items will be placed in the players bag, and stores it to ItemCategory.
## [param name_or_id] is the name or id of an item category.
func get_item_category(name_or_id) -> void:
	query = Get.ITEM_CATEGORY
	PokeDotClient(url, "item-category/%s/" % str(name_or_id), "get_item_category")


## Retrieves the various effects of the move "Fling" when used with different items, and stores them to ItemFlingEffect.
## [param name_or_id] is the name or id of an item fling effect.
func get_item_fling_effect(name_or_id) -> void:
	query = Get.ITEM_FLING_EFFECT
	PokeDotClient(url, "item-fling-effect/%s/" % str(name_or_id), "get_item_fling_effect")


## Retrieves the bag pocket used for storing items by category and stores it ItemPocket.
## [param name_or_id] is the name or id of an item pocket.
func get_item_pocket(name_or_id) -> void:
	query = Get.ITEM_POCKET
	PokeDotClient(url, "item-pocket/%s/" % str(name_or_id), "get_item_pocket")


## Retrieves the languages for translations of API resource information, and stores them to Language.
## [param name_or_id] is the name or id of a language.
func get_language(name_or_id) -> void:
	query = Get.LANGUAGE
	PokeDotClient(url, "language/%s/" % str(name_or_id), "get_language")


## Retrieves the locations that can be visited within the games and stores them to Location.
## [param name_or_id] is the name or id of a location.
func get_location(name_or_id) -> void:
	query = Get.LOCATION
	PokeDotClient(url, "location/%s/" % str(name_or_id), "get_location")


## Retrieves the sections of areas, such as floors in a building or cave, and stores them to LocationArea.
## [param name_or_id] is the name or id of a location area.
func get_location_area(name_or_id) -> void:
	query = Get.LOCATION_AREA
	PokeDotClient(url, "location-area/%s/" % str(name_or_id), "get_location_area")


## Retrieves the items that teach moves to Pokemon and stores them to Machine.
## [param id] is the id of a machine.
func get_machine(id: int = 0) -> void:
	query = Get.MACHINE
	PokeDotClient(url, "machine/%s/" % str(id), "get_machine")


## Retrieves the skills of Pokemon in battle and stores them to Move.
## [param name_or_id] is the name or id of a move.
func get_move(name_or_id) -> void:
	query = Get.MOVE
	PokeDotClient(url, "move/%s/" % str(name_or_id), "get_move")


## Retrieves the status conditions which are caused by moves used during battle, and stores them to MoveAilment.
## [param name_or_id] is the name or id of a move ailment.
func get_move_ailment(name_or_id) -> void:
	query = Get.MOVE_AILMENT
	PokeDotClient(url, "move-ailment/%s/" % str(name_or_id), "get_move_ailment")


## Retrieves the styles of moves when used in the Battle Palace and stores them to MoveBattleStyle.
## [param name_or_id] is the name or id of a move battle style.
func get_move_battle_style(name_or_id) -> void:
	query = Get.MOVE_BATTLE_STYLE
	PokeDotClient(url, "move-battle-style/%s/" % str(name_or_id), "get_move_battle_style")


## Retrieves the very general categories that loosely group move effects and stores them to MoveCategory.
## [param name_or_id] is the name or id of a move category.
func get_move_category(name_or_id) -> void:
	query = Get.MOVE_CATEGORY
	PokeDotClient(url, "move-category/%s/" % str(name_or_id), "get_move_category")


## Retrieves the damage classes moves can have, e.g. physical, special, or non-damaging, and stores them to MoveDamageClass.
## [param name_or_id] is the name or id of a move damage class.
func get_move_damage_class(name_or_id) -> void:
	query = Get.MOVE_DAMAGE_CLASS
	PokeDotClient(url, "move-damage-class/%s/" % str(name_or_id), "get_move_damage_class")


## Retrieves the methods by which Pokemon can learn moves and stores them to MoveLearnMethod.
## [param name_or_id] is the name or id of a move learn method.
func get_move_learn_method(name_or_id) -> void:
	query = Get.MOVE_LEARN_METHOD
	PokeDotClient(url, "move-learn-method/%s/" % str(name_or_id), "get_move_learn_method")


## Retrieves the targets which moves can be directed at during battle, and stores them to MoveTarget.
## [param name_or_id] is the name or id of a move target.
func get_move_target(name_or_id) -> void:
	query = Get.MOVE_TARGET
	PokeDotClient(url, "move-target/%s/" % str(name_or_id), "get_move_target")


## Retrieves the influence on how a Pokemon's stats grow, and stores it to Nature.
## [param name_or_id] is the name or id of a nature.
func get_nature(name_or_id) -> void:
	query = Get.NATURE
	PokeDotClient(url, "nature/%s/" % str(name_or_id), "get_nature")


## Retrieves the areas used for grouping Pokemon encounters in Pal Park, and stores them to PalParkArea.
## [param name_or_id] is the name or id of a Pal Park area.
func get_pal_park_area(name_or_id) -> void:
	query = Get.PAL_PARK_AREA
	PokeDotClient(url, "pal-park-area/%s/" % str(name_or_id), "get_pal_park_area")


## Retrieves the different attributes of a Pokemon's performance in Pokeathlons, and stores them to PokeAthlonStat.
func get_pokeathlon_stat(name_or_id) -> void:
	query = Get.POKEATHLON_STAT
	PokeDotClient(url, "pokeathlon-stat/%s/" % str(name_or_id), "get_pokeathlon_stat")


## Retrieves a handheld electronic Pokemon encyclopedia device, and stores it to Pokedex.
## [param name_or_id] is the name or id of a Pokedex.
func get_pokedex(name_or_id) -> void:
	query = Get.POKEDEX
	PokeDotClient(url, "pokedex/%s/" % str(name_or_id), "get_pokedex")


## Retrieves the creatures that inhabit the world of the Pokemon games, and stores them to Pokemon.
## [param name_or_id] is the name or id of a Pokemon.
func get_pokemon(name_or_id) -> void:
	query = Get.POKEMON
	PokeDotClient(url, "pokemon/%s/" % str(name_or_id), "get_pokemon")


## Retrieves the colors used for sorting Pokemon in a Pokedex, and stores them to PokemonColor.
func get_pokemon_color(name_or_id) -> void:
	query = Get.POKEMON_COLOR
	PokeDotClient(url, "pokemon-color/%s/" % str(name_or_id), "get_pokemon_color")


## Retrieves some visually different forms of a Pokemon, and stores them to PokemonForm.
## [param name_or_id] is the name or id of a Pokemon form.
func get_pokemon_form(name_or_id) -> void:
	query = Get.POKEMON_FORM
	PokeDotClient(url, "pokemon-form/%s/" % str(name_or_id), "get_pokemon_form")


## Retrieves the different terrain where Pokemon can be found in, and stores them to PokemonHabitat.
## [param name_or_id] is the name or id of a Pokemon habitat.
func get_pokemon_habitat(name_or_id) -> void:
	query = Get.POKEMON_HABITAT
	PokeDotClient(url, "pokemon-habitat/%s/" % str(name_or_id), "get_pokemon_habitat")


## Retrieves the shapes used for sorting Pokemon in a Pokedex, and stores them to PokemonShape.
## [param name_or_id] is the name or id of a Pokemon shape.
func get_pokemon_shape(name_or_id) -> void:
	query = Get.POKEMON_SHAPE
	PokeDotClient(url, "pokemon-shape/%s/" % str(name_or_id), "get_pokemon_shape")


## Retrieves the basis for at least one Pokemon and stores it to PokemonSpecies.
## [param name_or_id] is the name or id of Pokemon species.
func get_pokemon_species(name_or_id) -> void:
	query = Get.POKEMON_SPECIES
	PokeDotClient(url, "pokemon-species/%s/" % str(name_or_id), "get_pokemon_species")


## Retrieves an organized area of the Pokemon world and stores it to Region.
## [param name_or_id] is the name or id of a region.
func get_region(name_or_id) -> void:
	query = Get.REGION
	PokeDotClient(url, "region/%s/" % str(name_or_id), "get_region")


## Retrieves what determines certain aspects of battles and stores them to Stat.
func get_stat(name_or_id) -> void:
	query = Get.STAT
	PokeDotClient(url, "stat/%s/" % str(name_or_id), "get_stat")


## Retrieves the effects of moves when used in super contests, and stores them to SuperContestEffect.
## [param name_or_id] is the name or id of a super contest effect.
func get_super_contest_effect(name_or_id) -> void:
	query = Get.SUPER_CONTEST_EFFECT
	PokeDotClient(url, "super-contest-effect/%s/" % str(name_or_id), "get_super_contest_effect")


## Retrieves the properties for Pokemon and their moves and stores them to Type.
## [param name_or_id] is the name or id of a Pokemon type.
func get_type(name_or_id) -> void:
	query = Get.TYPE
	PokeDotClient(url, "type/%s/" % str(name_or_id), "get_type")


## Retrieves the versions of the games, e.g., Red, Blue or Yellow, and stores them to Version.
## [param name_or_id] is the name or id of a Pokemon version.
func get_version(name_or_id) -> void:
	query = Get.VERSION
	PokeDotClient(url, "version/%s/" % str(name_or_id), "get_version")


## Retrieves the version groups which categorize highly similar versions of the games, and stores them to VersionGroup.
## [param name_or_id] is the name or id of a Pokemon version group.
func get_version_group(name_or_id) -> void:
	query = Get.VERSION_GROUP
	PokeDotClient(url, "version-group/%s/" % str(name_or_id), "get_version_group")


func _on_request_completed(result, response_code, headers, body) -> void:
	var data: Variant = null

	if print_result == true:
		if result == RESULT_SUCCESS:
			print("✓ HTTP request result code: %s" % _get_result(result))
		else:
			print("❌ HTTP request failed. Error: %s" % _get_result(result))

	if response_code == HTTPClient.RESPONSE_OK:
		if print_response == true:
			print("✓ HTTP request response code: %s\n" % _get_response(response_code))

		data = _parse_JSON(body)
		match query:
			Get.POKEMON_PAGINATION:
				pokemon_pagination.set_data(
					data.get("count"),
					data.get("next"),
					data.get("previous"),
					data.get("results")
				)

			Get.ABILITY:
				ability.set_data(
					data.get("id"),
					data.get("name"),
					data.get("is_main_series"),
					data.get("generation"),
					data.get("names"),
					data.get("effect_entries"),
					data.get("effect_changes"),
					data.get("flavor_text_entries"),
					data.get("pokemon")
				)

			Get.BERRY:
				berry.set_data(
					data.get("id"),
					data.get("name"),
					data.get("growth_time"),
					data.get("max_harvest"),
					data.get("natural_gift_power"),
					data.get("size"),
					data.get("smoothness"),
					data.get("soil_dryness"),
					data.get("firmness"),
					data.get("flavors"),
					data.get("item"),
					data.get("natural_gift_type")
				)

			Get.BERRY_FLAVOR:
				berry_flavor.set_data(
					data.get("id"),
					data.get("name"),
					data.get("berries"),
					data.get("contest_type"),
					data.get("names")
				)

			Get.BERRY_FIRMNESS:
				berry_firmness.set_data(
					data.get("id"),
					data.get("name"),
					data.get("berries"),
					data.get("names")
				)

			Get.CHARACTERISTIC:
				characteristic.set_data(
					data.get("id"),
					data.get("gene_modulo"),
					data.get("possible_values"),
					data.get("highest_stat"),
					data.get("descriptions")
				)

			Get.CONTEST_EFFECT:
				contest_effect.set_data(
					data.get("id"),
					data.get("appeal"),
					data.get("jam"),
					data.get("effect_entries"),
					data.get("flavor_text_entries")
				)

			Get.CONTEST_TYPE:
				contest_type.set_data(
					data.get("id"),
					data.get("name"),
					data.get("berry_flavor"),
					data.get("names")
				)

			Get.EGG_GROUP:
				egg_group.set_data(
					data.get("id"),
					data.get("name"),
					data.get("names"),
					data.get("pokemon_species")
				)

			Get.ENCOUNTER_CONDITION:
				encounter_condition.set_data(
					data.get("id"),
					data.get("name"),
					data.get("values"),
					data.get("names")
				)

			Get.ENCOUNTER_CONDITION_VALUE:
				encounter_condition_value.set_data(
					data.get("id"),
					data.get("name"),
					data.get("condition"),
					data.get("names")
				)

			Get.ENCOUNTER_METHOD:
				encounter_method.set_data(
					data.get("id"),
					data.get("name"),
					data.get("order"),
					data.get("names")
				)

			Get.EVOLUTION_CHAIN:
				evolution_chain.set_data(
					data.get("id"),
					data.get("baby_trigger_item"),
					data.get("chain")
				)

			Get.EVOLUTION_TRIGGER:
				evolution_trigger.set_data(
					data.get("id"),
					data.get("name"),
					data.get("names"),
					data.get("pokemon_species")
				)

			Get.GENDER:
				gender.set_data(
					data.get("id"),
					data.get("name"),
					data.get("pokemon_species_details"),
					data.get("required_for_evolution")
				)

			Get.GENERATION:
				generation.set_data(
					data.get("id"),
					data.get("name"),
					data.get("abilities"),
					data.get("main_region"),
					data.get("moves"),
					data.get("names"),
					data.get("pokemon_species"),
					data.get("types"),
					data.get("version_groups")
				)

			Get.GROWTH_RATE:
				growth_rate.set_data(
					data.get("id"),
					data.get("name"),
					data.get("formula"),
					data.get("descriptions"),
					data.get("levels"),
					data.get("pokemon_species")
				)

			Get.ITEM:
				item.set_data(
					data.get("attributes"),
					data.get("category"),
					data.get("effect_entries"),
					data.get("flavor_text_entries"),
					data.get("game_indices"),
					data.get("names"),
					data.get("sprites"),
					data.get("held_by_pokemon"),
					data.get("baby_trigger_for")
				)

			Get.ITEM_ATTRIBUTE:
				item_attribute.set_data(
					data.get("descriptions"),
					data.get("id"),
					data.get("items"),
					data.get("name"),
					data.get("names")
				)

			Get.ITEM_CATEGORY:
				item_category.set_data(
					data.get("id"),
					data.get("name"),
					data.get("items"),
					data.get("names"),
					data.get("pocket")
				)

			Get.ITEM_FLING_EFFECT:
				item_fling_effect.set_data(
					data.get("id"),
					data.get("name"),
					data.get("effect_entries"),
					data.get("items")
				)

			Get.ITEM_POCKET:
				item_pocket.set_data(
					data.get("id"),
					data.get("name"),
					data.get("categories"),
					data.get("names")
				)

			Get.LANGUAGE:
				language.set_data(
					data.get("id"),
					data.get("name"),
					data.get("official"),
					data.get("iso639"),
					data.get("iso3166"),
					data.get("names")
				)

			Get.LOCATION:
				location.set_data(
					data.get("id"),
					data.get("name"),
					data.get("region"),
					data.get("names"),
					data.get("game_indices"),
					data.get("areas")
				)

			Get.LOCATION_AREA:
				location_area.set_data(
					data.get("id"),
					data.get("name"),
					data.get("game_index"),
					data.get("encounter_method_rates"),
					data.get("location"),
					data.get("names"),
					data.get("pokemon_encounters")
				)

			Get.MACHINE:
				machine.set_data(
					data.get("id"),
					data.get("item"),
					data.get("move"),
					data.get("version_group")
				)

			Get.MOVE:
				move.set_data(
					data.get("id"),
					data.get("name"),
					data.get("accuracy"),
					data.get("effect_chance"),
					data.get("pp"),
					data.get("priority"),
					data.get("power"),
					data.get("contest_combos"),
					data.get("contest_type"),
					data.get("contest_effect"),
					data.get("damage_class"),
					data.get("effect_entries"),
					data.get("effect_changes"),
					data.get("generation"),
					data.get("meta"),
					data.get("names"),
					data.get("past_values"),
					data.get("stat_changes"),
					data.get("super_contest_effect"),
					data.get("target"),
					data.get("type"),
					data.get("learned_by_pokemon"),
					data.get("flavor_text_entries")
				)

			Get.MOVE_AILMENT:
				move_ailment.set_data(
					data.get("id"),
					data.get("name"),
					data.get("moves"),
					data.get("names")
				)

			Get.MOVE_BATTLE_STYLE:
				move_battle_style.set_data(
					data.get("id"),
					data.get("name"),
					data.get("names")
				)

			Get.MOVE_CATEGORY:
				move_category.set_data(
					data.get("id"),
					data.get("name"),
					data.get("descriptions"),
					data.get("moves")
				)

			Get.MOVE_DAMAGE_CLASS:
				move_damage_class.set_data(
					data.get("id"),
					data.get("name"),
					data.get("descriptions"),
					data.get("moves")
				)

			Get.MOVE_LEARN_METHOD:
				move_learn_method.set_data(
					data.get("id"),
					data.get("name"),
					data.get("names"),
					data.get("descriptions"),
					data.get("version_groups")
				)

			Get.MOVE_TARGET:
				move_target.set_data(
					data.get("id"),
					data.get("name"),
					data.get("descriptions"),
					data.get("moves"),
					data.get("names")
				)

			Get.NATURE:
				nature.set_data(
					data.get("id"),
					data.get("name"),
					data.get("decreased_stat"),
					data.get("increased_stat"),
					data.get("likes_flavor"),
					data.get("hates_flavor"),
					data.get("pokeathlon_stat_changes"),
					data.get("move_battle_style_preferences"),
					data.get("names")
				)

			Get.PAL_PARK_AREA:
				pal_park_area.set_data(
					data.get("id"),
					data.get("name"),
					data.get("names"),
					data.get("pokemon_encounters")
				)

			Get.POKEATHLON_STAT:
				pokeathlon_stat.set_data(
					data.get("id"),
					data.get("name"),
					data.get("affecting_natures"),
					data.get("names")
				)

			Get.POKEDEX:
				pokedex.set_data(
					data.get("id"),
					data.get("name"),
					data.get("is_main_series"),
					data.get("descriptions"),
					data.get("names"),
					data.get("pokemon_entries"),
					data.get("region"),
					data.get("version_groups")
				)

			Get.POKEMON:
				pokemon.set_data(
					data.get("id"),
					data.get("name"),
					data.get("base_experience"),
					data.get("height"),
					data.get("is_default"),
					data.get("order"),
					data.get("weight"),
					data.get("abilities"),
					data.get("forms"),
					data.get("game_indices"),
					data.get("held_items"),
					data.get("location_area_encounters"),
					data.get("moves"),
					data.get("species"),
					data.get("sprites"),
					data.get("cries"),
					data.get("stats"),
					data.get("types"),
					data.get("past_types"),
					data.get("past_abilities")
				)

			Get.POKEMON_COLOR:
				pokemon_color.set_data(
					data.get("id"),
					data.get("name"),
					data.get("names"),
					data.get("pokemon_species")
				)

			Get.POKEMON_FORM:
				pokemon_form.set_data(
					data.get("id"),
					data.get("name"),
					data.get("order"),
					data.get("form_order"),
					data.get("is_default"),
					data.get("is_battle_only"),
					data.get("is_mega"),
					data.get("form_name"),
					data.get("pokemon"),
					data.get("sprites"),
					data.get("types"),
					data.get("version_group")
				)

			Get.POKEMON_HABITAT:
				pokemon_habitat.set_data(
					data.get("id"),
					data.get("name"),
					data.get("names"),
					data.get("pokemon_species")
				)

			Get.POKEMON_SHAPE:
				pokemon_shape.set_data(
					data.get("id"),
					data.get("name"),
					data.get("awesome_names"),
					data.get("names"),
					data.get("pokemon_species")
				)

			Get.POKEMON_SPECIES:
				pokemon_species.set_data(
					data.get("id"),
					data.get("name"),
					data.get("order"),
					data.get("gender_rate"),
					data.get("capture_rate"),
					data.get("base_happiness"),
					data.get("is_baby"),
					data.get("is_legendary"),
					data.get("is_mythical"),
					data.get("hatch_counter"),
					data.get("has_gender_differences"),
					data.get("forms_switchable"),
					data.get("growth_rate"),
					data.get("pokedex_numbers"),
					data.get("egg_groups"),
					data.get("color"),
					data.get("shape"),
					data.get("evolves_from_species"),
					data.get("evolution_chain"),
					data.get("habitat"),
					data.get("generation"),
					data.get("names"),
					data.get("flavor_text_entries"),
					data.get("form_descriptions"),
					data.get("genera"),
					data.get("varieties")
				)

			Get.REGION:
				region.set_data(
					data.get("id"),
					data.get("name"),
					data.get("locations"),
					data.get("main_generation"),
					data.get("names"),
					data.get("pokedexes"),
					data.get("version_groups")
				)

			Get.STAT:
				stat.set_data(
					data.get("id"),
					data.get("name"),
					data.get("game_index"),
					data.get("is_battle_only"),
					data.get("affecting_moves"),
					data.get("affecting_natures"),
					data.get("characteristics"),
					data.get("move_damage_class"),
					data.get("names")
				)

			Get.SUPER_CONTEST_EFFECT:
				super_contest_effect.set_data(
					data.get("id"),
					data.get("appeal"),
					data.get("flavor_text_entries"),
					data.get("moves")
				)

			Get.TYPE:
				type.set_data(
					data.get("id"),
					data.get("name"),
					data.get("damage_relations"),
					data.get("past_damage_relations"),
					data.get("game_indices"),
					data.get("generation"),
					data.get("move_damage_class"),
					data.get("names"),
					data.get("pokemon"),
					data.get("moves")
				)

			Get.VERSION:
				version.set_data(
					data.get("id"),
					data.get("name"),
					data.get("names"),
					data.get("version_group")
				)

			Get.VERSION_GROUP:
				version_group.set_data(
					data.get("id"),
					data.get("name"),
					data.get("order"),
					data.get("generation"),
					data.get("move_learn_methods"),
					data.get("pokedexes"),
					data.get("regions"),
					data.get("versions")
				)

	else:
		if print_response == true:
			print("❌ Validation Error! HTTP request response code: %s\n" % _get_response(response_code))

	if print_headers == true:
		print("%s\n" % JSON.stringify(headers, "  "))


## Parses JSON and returns as Dictionary.
## [param body] is the received object from a completed request.
func _parse_JSON(body: PackedByteArray) -> Dictionary:
	var json := JSON.new()
	var string: String = body.get_string_from_utf8()
	var error: int = json.parse(string)

	if error == OK:
		var data_got: Variant = json.data
		if typeof(data_got) == TYPE_DICTIONARY:
			if print_data == true:
				print(JSON.stringify(data_got, "\t")+"\n")
			return data_got
		else:
			if print_data == true:
				print("❌ _parse_JSON() failed. Unexpected data.")
			return {}
	else:
		if print_data == true:
			print("❌ _parse_JSON() error: ", json.get_error_message(), " in ", string, " at line ", json.get_error_line(), ".")
		return {}


## Returns a readable result code in.
## [param id] is the result code/id.
func _get_result(id: int) -> String:
	var status: String = ""
	match id:
		0: status = "RESULT_SUCCESS"
		1: status = "RESULT_CHUNKED_BODY_SIZE_MISMATCH"
		2: status = "RESULT_CANT_CONNECT"
		3: status = "RESULT_CANT_RESOLVE"
		4: status = "RESULT_CONNECTION_ERROR"
		5: status = "RESULT_TLS_HANDSHAKE_ERROR"
		6: status = "RESULT_NO_RESPONSE"
		7: status = "RESULT_BODY_SIZE_LIMIT_EXCEEDED"
		8: status = "RESULT_BODY_DECOMPRESS_FAILED"
		9: status = "RESULT_REQUEST_FAILED"
		10: status = "RESULT_DOWNLOAD_FILE_CANT_OPEN"
		11: status = "RESULT_DOWNLOAD_FILE_WRITE_ERROR"
		12: status = "RESULT_REDIRECT_LIMIT_REACHED"
		13: status = "RESULT_TIMEOUT"
	return status


## Returns a readable response code.
## [param id] is the response code/id.
func _get_response(id: int) -> String:
	var status: String = ""
	match id:
		100: status = "RESPONSE_CONTINUE"
		101: status = "RESPONSE_SWITCHING_PROTOCOLS"
		102: status = "RESPONSE_PROCESSING"
		200: status = "RESPONSE_OK"
		201: status = "RESPONSE_CREATED"
		202: status = "RESPONSE_ACCEPTED"
		203: status = "RESPONSE_NON_AUTHORITATIVE_INFORMATION"
		204: status = "RESPONSE_NO_CONTENT"
		205: status = "RESPONSE_RESET_CONTENT"
		206: status = "RESPONSE_PARTIAL_CONTENT"
		207: status = "RESPONSE_MULTI_STATUS"
		208: status = "RESPONSE_ALREADY_REPORTED"
		226: status = "RESPONSE_IM_USED"
		300: status = "RESPONSE_MULTIPLE_CHOICES"
		301: status = "RESPONSE_MOVED_PERMANENTLY"
		302: status = "RESPONSE_FOUND"
		303: status = "RESPONSE_SEE_OTHER"
		304: status = "RESPONSE_NOT_MODIFIED"
		305: status = "RESPONSE_USE_PROXY"
		306: status = "RESPONSE_SWITCH_PROXY"
		307: status = "RESPONSE_TEMPORARY_REDIRECT"
		308: status = "RESPONSE_PERMANENT_REDIRECT"
		400: status = "RESPONSE_BAD_REQUEST"
		401: status = "RESPONSE_UNAUTHORIZED"
		402: status = "RESPONSE_PAYMENT_REQUIRED"
		403: status = "RESPONSE_FORBIDDEN"
		404: status = "RESPONSE_NOT_FOUND"
		405: status = "RESPONSE_METHOD_NOT_ALLOWED"
		406: status = "RESPONSE_NOT_ACCEPTABLE"
		407: status = "RESPONSE_PROXY_AUTHENTICATION_REQUIRED"
		408: status = "RESPONSE_REQUEST_TIMEOUT"
		409: status = "RESPONSE_CONFLICT"
		410: status = "RESPONSE_GONE"
		411: status = "RESPONSE_LENGTH_REQUIRED"
		412: status = "RESPONSE_PRECONDITION_FAILED"
		413: status = "RESPONSE_REQUEST_ENTITY_TOO_LARGE"
		414: status = "RESPONSE_REQUEST_URI_TOO_LONG"
		415: status = "RESPONSE_UNSUPPORTED_MEDIA_TYPE"
		416: status = "RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE"
		417: status = "RESPONSE_EXPECTATION_FAILED"
		418: status = "RESPONSE_IM_A_TEAPOT"
		421: status = "RESPONSE_MISDIRECTED_REQUEST"
		422: status = "RESPONSE_UNPROCESSABLE_ENTITY"
		423: status = "RESPONSE_LOCKED"
		424: status = "RESPONSE_FAILED_DEPENDENCY"
		426: status = "RESPONSE_UPGRADE_REQUIRED"
		428: status = "RESPONSE_PRECONDITION_REQUIRED"
		429: status = "RESPONSE_TOO_MANY_REQUESTS"
		431: status = "RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE"
		451: status = "RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS"
		500: status = "RESPONSE_INTERNAL_SERVER_ERROR"
		501: status = "RESPONSE_NOT_IMPLEMENTED"
		502: status = "RESPONSE_BAD_GATEWAY"
		503: status = "RESPONSE_SERVICE_UNAVAILABLE"
		504: status = "RESPONSE_GATEWAY_TIMEOUT"
		505: status = "RESPONSE_HTTP_VERSION_NOT_SUPPORTED"
		506: status = "RESPONSE_VARIANT_ALSO_NEGOTIATES"
		507: status = "RESPONSE_INSUFFICIENT_STORAGE"
		508: status = "RESPONSE_LOOP_DETECTED"
		510: status = "RESPONSE_NOT_EXTENDED"
		511: status = "RESPONSE_NETWORK_AUTH_REQUIRED"
	return status
