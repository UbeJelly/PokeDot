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
	MOVE_DAMAGE_CLASS
}

onready var pokemon_pagination := PokemonPagination.new()
onready var ability := Ability.new()
onready var berry := Berry.new()
onready var berry_flavor := BerryFlavor.new()
onready var berry_firmness := BerryFirmness.new()
onready var characteristic := Characteristic.new()
onready var contest_effect := ContestEffect.new()
onready var contest_type := ContestType.new()
onready var egg_group := EggGroup.new()
onready var encounter_condition := EncounterCondition.new()
onready var encounter_condition_value := EncounterConditionValue.new()
onready var encounter_method := EncounterMethod.new()
onready var evolution_chain := EvolutionChain.new()
onready var evolution_trigger := EvolutionTrigger.new()
onready var gender := Gender.new()
onready var generation := Generation.new()
onready var growth_rate := GrowthRate.new()
onready var item := Item.new()
onready var item_attribute := ItemAttribute.new()
onready var item_category := ItemCategory.new()
onready var item_fling_effect := ItemFlingEffect.new()
onready var item_pocket := ItemPocket.new()
onready var language := Language.new()
onready var location := Location.new()
onready var location_area := LocationArea.new()
onready var machine := Machine.new()
onready var move := Move.new()
onready var move_ailment := MoveAilment.new()
onready var move_battle_style := MoveBattleStyle.new()
onready var move_category := MoveCategory.new()
onready var move_damage_class := MoveDamageClass.new()

var query: int = 0


func _ready() -> void:
	# Default endpoint & query method
	get_pokemon_pagination("pokemon", 20, 0)


func PokeDotClient(BASE_URL: String = "https://pokeapi.co/api/v2/", endpoint: String = "") -> int:
	print("API URL: %s" % BASE_URL + endpoint)

	if not BASE_URL == "" or not endpoint == "":
		var _request_status: int = request(
			BASE_URL + endpoint, PoolStringArray(
				["text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8"]
			), true, HTTPClient.METHOD_GET)

		print("PokeDotClient() status: OK")
		return 1
	print("PokeDotClient() status: ERROR")
	return 0


func get_pokemon_pagination(endpoint: String = "pokemon", limit: int = 20, offset: int = 0) -> Dictionary:
	query = Get.POKEMON_PAGINATION
	PokeDotClient("https://pokeapi.co/api/v2/", "%s/?limit=%s&offset=%s" % [endpoint, limit, offset])
	return pokemon_pagination.get_data()


func get_ability(name_or_id) -> Dictionary:
	query = Get.ABILITY
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "ability/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "ability/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_ability(<name_or_id>), <name_or_id> must be an int or String type.")
	return ability.get_data()


func get_berry(name_or_id) -> Dictionary:
	query = Get.BERRY
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "berry/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "berry/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_berry(<name_or_id>), <name_or_id> must be an int or String type.")
	return berry.get_data()


func get_berry_flavor(name_or_id) -> Dictionary:
	query = Get.BERRY_FLAVOR
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "berry-flavor/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "berry-flavor/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_berry_flavor(<name_or_id>), <name_or_id> must be an int or String type.")
	return berry_flavor.get_data()


func get_berry_firmness(name_or_id) -> Dictionary:
	query = Get.BERRY_FIRMNESS
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "berry-firmness/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "berry-firmness/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_berry_firmness(<name_or_id>), <name_or_id> must be an int or String type.")
	return berry_firmness.get_data()


func get_characteristic(id:int = 0) -> Dictionary:
	query = Get.CHARACTERISTIC
	PokeDotClient("https://pokeapi.co/api/v2/", "characteristic/%s/" % str(id))
	return characteristic.get_data()


func get_contest_effect(id:int = 0) -> Dictionary:
	query = Get.CONTEST_EFFECT
	PokeDotClient("https://pokeapi.co/api/v2/", "contest-effect/%s/" % str(id))
	return contest_effect.get_data()


func get_contest_type(name_or_id) -> Dictionary:
	query = Get.CONTEST_TYPE
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "contest-type/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "contest-type/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_contest_type(<name_or_id>), <name_or_id> must be an int or String type.")
	return contest_type.get_data()


func get_egg_group(name_or_id) -> Dictionary:
	query = Get.EGG_GROUP
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "egg-group/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "egg-group/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_egg_group(<name_or_id>), <name_or_id> must be an int or String type.")
	return egg_group.get_data()


func get_encounter_condition(name_or_id) -> Dictionary:
	query = Get.ENCOUNTER_CONDITION
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "encounter-condition/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "encounter-condition/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_encounter_condition(<name_or_id>), <name_or_id> must be an int or String type.")
	return encounter_condition.get_data()


func get_encounter_condition_value(name_or_id) -> Dictionary:
	query = Get.ENCOUNTER_CONDITION_VALUE
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "encounter-condition-value/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "encounter-condition-value/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_encounter_condition_value(<name_or_id>), <name_or_id> must be an int or String type.")
	return encounter_condition_value.get_data()


func get_encounter_method(name_or_id) -> Dictionary:
	query = Get.ENCOUNTER_METHOD
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "encounter-method/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "encounter-method/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_encounter_method(<name_or_id>), <name_or_id> must be an int or String type.")
	return encounter_method.get_data()


func get_evolution_chain(id:int = 0) -> Dictionary:
	query = Get.EVOLUTION_CHAIN
	PokeDotClient("https://pokeapi.co/api/v2/", "evolution-chain/%s/" % str(id))
	return evolution_chain.get_data()


func get_evolution_trigger(name_or_id) -> Dictionary:
	query = Get.EVOLUTION_TRIGGER
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "evolution-trigger/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "evolution-trigger/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_evolution_trigger(<name_or_id>), <name_or_id> must be an int or String type.")
	return evolution_trigger.get_data()


func get_gender(name_or_id) -> Dictionary:
	query = Get.GENDER
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "gender/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "gender/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_gender(<name_or_id>), <name_or_id> must be an int or String type.")
	return gender.get_data()


func get_generation(name_or_id) -> Dictionary:
	query = Get.GENERATION
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "generation/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "generation/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_generation(<name_or_id>), <name_or_id> must be an int or String type.")
	return generation.get_data()


func get_growth_rate(name_or_id) -> Dictionary:
	query = Get.GROWTH_RATE
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "growth-rate/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "growth-rate/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_growth_rate(<name_or_id>), <name_or_id> must be an int or String type.")
	return growth_rate.get_data()


func get_item(name_or_id) -> Dictionary:
	query = Get.ITEM
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "item/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "item/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_item(<name_or_id>), <name_or_id> must be an int or String type.")
	return item.get_data()


func get_item_attribute(name_or_id) -> Dictionary:
	query = Get.ITEM_ATTRIBUTE
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "item-attribute/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "item-attribute/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_item_attribute(<name_or_id>), <name_or_id> must be an int or String type.")
	return item_attribute.get_data()


func get_item_category(name_or_id) -> Dictionary:
	query = Get.ITEM_CATEGORY
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "item-category/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "item-category/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_item_category(<name_or_id>), <name_or_id> must be an int or String type.")
	return item_category.get_data()


func get_item_fling_effect(name_or_id) -> Dictionary:
	query = Get.ITEM_FLING_EFFECT
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "item-fling-effect/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "item-fling-effect/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_item_fling_effect(<name_or_id>), <name_or_id> must be an int or String type.")
	return item_fling_effect.get_data()


func get_item_pocket(name_or_id) -> Dictionary:
	query = Get.ITEM_POCKET
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "item-pocket/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "item-pocket/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_item_pocket(<name_or_id>), <name_or_id> must be an int or String type.")
	return item_pocket.get_data()


func get_language(name_or_id) -> Dictionary:
	query = Get.LANGUAGE
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "language/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "language/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_language(<name_or_id>), <name_or_id> must be an int or String type.")
	return language.get_data()


func get_location(name_or_id) -> Dictionary:
	query = Get.LOCATION
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "location/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "location/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_location(<name_or_id>), <name_or_id> must be an int or String type.")
	return location.get_data()


func get_location_area(name_or_id) -> Dictionary:
	query = Get.LOCATION_AREA
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "location-area/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "location-area/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_location_area(<name_or_id>), <name_or_id> must be an int or String type.")
	return location_area.get_data()


func get_machine(id:int = 0) -> Dictionary:
	query = Get.MACHINE
	PokeDotClient("https://pokeapi.co/api/v2/", "machine/%s/" % str(id))
	return machine.get_data()


func get_move(name_or_id) -> Dictionary:
	query = Get.MOVE
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "move/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "move/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_move(<name_or_id>), <name_or_id> must be an int or String type.")
	return move.get_data()


func get_move_ailment(name_or_id) -> Dictionary:
	query = Get.MOVE_AILMENT
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "move-ailment/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "move-ailment/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_move_ailment(<name_or_id>), <name_or_id> must be an int or String type.")
	return move_ailment.get_data()


func get_move_battle_style(name_or_id) -> Dictionary:
	query = Get.MOVE_BATTLE_STYLE
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "move-battle-style/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "move-battle-style/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_move_battle_style(<name_or_id>), <name_or_id> must be an int or String type.")
	return move_battle_style.get_data()


func get_move_category(name_or_id) -> Dictionary:
	query = Get.MOVE_CATEGORY
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "move-category/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "move-category/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_move_category(<name_or_id>), <name_or_id> must be an int or String type.")
	return move_category.get_data()


func get_move_damage_class(name_or_id) -> Dictionary:
	query = Get.MOVE_DAMAGE_CLASS
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "move-damage-class/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "move-damage-class/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_move_damage_class(<name_or_id>), <name_or_id> must be an int or String type.")
	return move_damage_class.get_data()


func _on_request_completed(result, response_code, headers, body) -> void:
	var data: Dictionary = _parse_JSON(body)
	print("HTTP request code: %s" % _get_result(result))
	print("HTTP response code: %s\n" % _get_response(response_code))
	print("%s\n" % JSON.print(headers, "  "))
	#print(JSON.print(data, "  "))

	match query:
		Get.POKEMON_PAGINATION:
			pokemon_pagination.set_data(
				data.get("count"),
				data.get("next"),
				data.get("previous"),
				data.get("results")
			)
			print(JSON.print(pokemon_pagination.get_data(), "  "))

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
			print(JSON.print(ability.get_data(), "  "))

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
			print(JSON.print(berry.get_data(), "  "))

		Get.BERRY_FLAVOR:
			berry_flavor.set_data(
				data.get("id"),
				data.get("name"),
				data.get("berries"),
				data.get("contest_type"),
				data.get("names")
			)
			print(JSON.print(berry_flavor.get_data(), "  "))

		Get.BERRY_FIRMNESS:
			berry_firmness.set_data(
				data.get("id"),
				data.get("name"),
				data.get("berries"),
				data.get("names")
			)
			print(JSON.print(berry_firmness.get_data(), "  "))

		Get.CHARACTERISTIC:
			characteristic.set_data(
				data.get("id"),
				data.get("gene_modulo"),
				data.get("possible_values"),
				data.get("highest_stat"),
				data.get("descriptions")
			)
			print(JSON.print(characteristic.get_data(), "  "))

		Get.CONTEST_EFFECT:
			contest_effect.set_data(
				data.get("id"),
				data.get("appeal"),
				data.get("jam"),
				data.get("effect_entries"),
				data.get("flavor_text_entries")
			)
			print(JSON.print(contest_effect.get_data(), "  "))

		Get.CONTEST_TYPE:
			contest_type.set_data(
				data.get("id"),
				data.get("name"),
				data.get("berry_flavor"),
				data.get("names")
			)
			print(JSON.print(contest_type.get_data(), "  "))

		Get.EGG_GROUP:
			egg_group.set_data(
				data.get("id"),
				data.get("name"),
				data.get("names"),
				data.get("pokemon_species")
			)
			print(JSON.print(egg_group.get_data(), "  "))

		Get.ENCOUNTER_CONDITION:
			encounter_condition.set_data(
				data.get("id"),
				data.get("name"),
				data.get("values"),
				data.get("names")
			)
			print(JSON.print(encounter_condition.get_data(), "  "))

		Get.ENCOUNTER_CONDITION_VALUE:
			encounter_condition_value.set_data(
				data.get("id"),
				data.get("name"),
				data.get("condition"),
				data.get("names")
			)
			print(JSON.print(encounter_condition_value.get_data(), "  "))

		Get.ENCOUNTER_METHOD:
			encounter_method.set_data(
				data.get("id"),
				data.get("name"),
				data.get("order"),
				data.get("names")
			)
			print(JSON.print(encounter_method.get_data(), "  "))

		Get.EVOLUTION_CHAIN:
			evolution_chain.set_data(
				data.get("id"),
				data.get("baby_trigger_item"),
				data.get("chain")
			)
			print(JSON.print(evolution_chain.get_data(), "  "))

		Get.EVOLUTION_TRIGGER:
			evolution_trigger.set_data(
				data.get("id"),
				data.get("name"),
				data.get("names"),
				data.get("pokemon_species")
			)
			print(JSON.print(evolution_trigger.get_data(), "  "))

		Get.GENDER:
			gender.set_data(
				data.get("id"),
				data.get("name"),
				data.get("pokemon_species_details"),
				data.get("required_for_evolution")
			)
			print(JSON.print(gender.get_data(), "  "))

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
			print(JSON.print(generation.get_data(), "  "))

		Get.GROWTH_RATE:
			growth_rate.set_data(
				data.get("id"),
				data.get("name"),
				data.get("formula"),
				data.get("descriptions"),
				data.get("levels"),
				data.get("pokemon_species")
			)
			print(JSON.print(growth_rate.get_data(), "  "))

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
			print(JSON.print(item.get_data(), "  "))

		Get.ITEM_ATTRIBUTE:
			item_attribute.set_data(
				data.get("descriptions"),
				data.get("id"),
				data.get("items"),
				data.get("name"),
				data.get("names")
			)
			print(JSON.print(item_attribute.get_data(), "  "))

		Get.ITEM_CATEGORY:
			item_category.set_data(
				data.get("id"),
				data.get("name"),
				data.get("items"),
				data.get("names"),
				data.get("pocket")
			)
			print(JSON.print(item_category.get_data(), "  "))

		Get.ITEM_FLING_EFFECT:
			item_fling_effect.set_data(
				data.get("id"),
				data.get("name"),
				data.get("effect_entries"),
				data.get("items")
			)
			print(JSON.print(item_fling_effect.get_data(), "  "))

		Get.ITEM_POCKET:
			item_pocket.set_data(
				data.get("id"),
				data.get("name"),
				data.get("categories"),
				data.get("names")
			)
			print(JSON.print(item_pocket.get_data(), "  "))

		Get.LANGUAGE:
			language.set_data(
				data.get("id"),
				data.get("name"),
				data.get("official"),
				data.get("iso639"),
				data.get("iso3166"),
				data.get("names")
			)
			print(JSON.print(language.get_data(), "  "))

		Get.LOCATION:
			location.set_data(
				data.get("id"),
				data.get("name"),
				data.get("region"),
				data.get("names"),
				data.get("game_indices"),
				data.get("areas")
			)
			print(JSON.print(location.get_data(), "  "))

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
			print(JSON.print(location_area.get_data(), "  "))

		Get.MACHINE:
			machine.set_data(
				data.get("id"),
				data.get("item"),
				data.get("move"),
				data.get("version_group")
			)
			print(JSON.print(machine.get_data(), "  "))

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
			print(JSON.print(move.get_data(), "  "))

		Get.MOVE_AILMENT:
			move_ailment.set_data(
				data.get("id"),
				data.get("name"),
				data.get("moves"),
				data.get("names")
			)
			print(JSON.print(move_ailment.get_data(), "  "))

		Get.MOVE_BATTLE_STYLE:
			move_battle_style.set_data(
				data.get("id"),
				data.get("name"),
				data.get("names")
			)
			print(JSON.print(move_battle_style.get_data(), "  "))

		Get.MOVE_CATEGORY:
			move_category.set_data(
				data.get("id"),
				data.get("name"),
				data.get("descriptions"),
				data.get("moves")
			)
			print(JSON.print(move_category.get_data(), "  "))

		Get.MOVE_DAMAGE_CLASS:
			move_damage_class.set_data(
				data.get("id"),
				data.get("name"),
				data.get("descriptions"),
				data.get("moves")
			)
			print(JSON.print(move_damage_class.get_data(), "  "))


func _parse_JSON(body: PoolByteArray) -> Dictionary:
	var body_result: String = body.get_string_from_utf8()
	var json_result: JSONParseResult = JSON.parse(body_result)
	var data : Dictionary = json_result.get_result()
	return data


func _get_result(id: int) -> String:
	var codes: Dictionary = {
		0: "RESULT_SUCCESS",
		1: "RESULT_CHUNKED_BODY_SIZE_MISMATCH",
		2: "RESULT_CANT_CONNECT",
		3: "RESULT_CANT_RESOLVE",
		4: "RESULT_CONNECTION_ERROR",
		5: "RESULT_SSL_HANDSHAKE_ERROR",
		6: "RESULT_NO_RESPONSE",
		7: "RESULT_BODY_SIZE_LIMIT_EXCEEDED",
		8: "RESULT_REQUEST_FAILED",
		9: "RESULT_DOWNLOAD_FILE_CANT_OPEN",
		10: "RESULT_DOWNLOAD_FILE_WRITE_ERROR",
		11: "RESULT_REDIRECT_LIMIT_REACHED",
		12: "RESULT_TIMEOUT",
	}
	return codes.get(id)


func _get_response(id: int) -> String:
	var codes: Dictionary = {
		100: "RESPONSE_CONTINUE",
		101: "RESPONSE_SWITCHING_PROTOCOLS",
		102: "RESPONSE_PROCESSING",
		200: "RESPONSE_OK",
		201: "RESPONSE_CREATED",
		202: "RESPONSE_ACCEPTED",
		203: "RESPONSE_NON_AUTHORITATIVE_INFORMATION",
		204: "RESPONSE_NO_CONTENT",
		205: "RESPONSE_RESET_CONTENT",
		206: "RESPONSE_PARTIAL_CONTENT",
		207: "RESPONSE_MULTI_STATUS",
		208: "RESPONSE_ALREADY_REPORTED",
		226: "RESPONSE_IM_USED",
		300: "RESPONSE_MULTIPLE_CHOICES",
		301: "RESPONSE_MOVED_PERMANENTLY",
		302: "RESPONSE_FOUND",
		303: "RESPONSE_SEE_OTHER",
		304: "RESPONSE_NOT_MODIFIED",
		305: "RESPONSE_USE_PROXY",
		306: "RESPONSE_SWITCH_PROXY",
		307: "RESPONSE_TEMPORARY_REDIRECT",
		308: "RESPONSE_PERMANENT_REDIRECT",
		400: "RESPONSE_BAD_REQUEST",
		401: "RESPONSE_UNAUTHORIZED",
		402: "RESPONSE_PAYMENT_REQUIRED",
		403: "RESPONSE_FORBIDDEN",
		404: "RESPONSE_NOT_FOUND",
		405: "RESPONSE_METHOD_NOT_ALLOWED",
		406: "RESPONSE_NOT_ACCEPTABLE",
		407: "RESPONSE_PROXY_AUTHENTICATION_REQUIRED",
		408: "RESPONSE_REQUEST_TIMEOUT",
		409: "RESPONSE_CONFLICT",
		410: "RESPONSE_GONE",
		411: "RESPONSE_LENGTH_REQUIRED",
		412: "RESPONSE_PRECONDITION_FAILED",
		413: "RESPONSE_REQUEST_ENTITY_TOO_LARGE",
		414: "RESPONSE_REQUEST_URI_TOO_LONG",
		415: "RESPONSE_UNSUPPORTED_MEDIA_TYPE",
		416: "RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE",
		417: "RESPONSE_EXPECTATION_FAILED",
		418: "RESPONSE_IM_A_TEAPOT",
		421: "RESPONSE_MISDIRECTED_REQUEST",
		422: "RESPONSE_UNPROCESSABLE_ENTITY",
		423: "RESPONSE_LOCKED",
		424: "RESPONSE_FAILED_DEPENDENCY",
		426: "RESPONSE_UPGRADE_REQUIRED",
		428: "RESPONSE_PRECONDITION_REQUIRED",
		429: "RESPONSE_TOO_MANY_REQUESTS",
		431: "RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE",
		451: "RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS",
		500: "RESPONSE_INTERNAL_SERVER_ERROR",
		501: "RESPONSE_NOT_IMPLEMENTED",
		502: "RESPONSE_BAD_GATEWAY",
		503: "RESPONSE_SERVICE_UNAVAILABLE",
		504: "RESPONSE_GATEWAY_TIMEOUT",
		505: "RESPONSE_HTTP_VERSION_NOT_SUPPORTED",
		506: "RESPONSE_VARIANT_ALSO_NEGOTIATES",
		507: "RESPONSE_INSUFFICIENT_STORAGE",
		508: "RESPONSE_LOOP_DETECTED",
		510: "RESPONSE_NOT_EXTENDED",
		511: "RESPONSE_NETWORK_AUTH_REQUIRED",
	}
	return codes.get(id)
