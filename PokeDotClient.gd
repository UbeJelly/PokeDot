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

var query: int = 0


func _ready() -> void:
	# Default endpoint & query method
	get_pokemon_pagination("pokemon", 20, 0)


## Main client that starts [param HTTPRequest] for any data. Returns 1 if OK
## [param BASE_URL] is the main URL. Currently uses PokeAPI v2.
## [param endpoint] is the API endpoint to request data from.
func PokeDotClient(BASE_URL: String = "https://pokeapi.co/api/v2/", endpoint: String = "") -> int:
	print("API URL: %s" % BASE_URL + endpoint)

	if not BASE_URL == "" or not endpoint == "":
		var _request_status: int = request(BASE_URL + endpoint, ["Accept: application/json"], HTTPClient.METHOD_GET)
		print("PokeDotClient() status: OK\n")
		return 1

	print("PokeDotClient() status: ERROR\n")
	return 0


## Returns a list of Pokemons based on a page and its position.
## [param endpoint] is the API endpoint to request data from. "pokemon" by default
## [param limit] is the number of Pokemons in a page. 20 items by default
## [param offset] is used to move between pages. 0 by default
func get_pokemon_pagination(endpoint: String = "pokemon", limit: int = 20, offset: int = 0) -> Dictionary:
	query = Get.POKEMON_PAGINATION
	PokeDotClient("https://pokeapi.co/api/v2/", "%s/?limit=%s&offset=%s" % [endpoint, limit, offset])
	return pokemon_pagination.get_data()


## Returns an ability information.
## [param name_or_id] is the name or id of an ability.
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


## Returns a berry information.
## [param name_or_id] is the name or id of a berry.
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


## Returns a berry flavor information.
## [param name_or_id] is the name or id of a berry flavor.
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


## Returns a berry firmness information.
## [param name_or_id] is the name or id of a berry firmness.
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


## Returns a Pokemon's highest stat.
## [param id] is the id of a characteristic.
func get_characteristic(id: int = 0) -> Dictionary:
	query = Get.CHARACTERISTIC
	PokeDotClient("https://pokeapi.co/api/v2/", "characteristic/%s/" % str(id))
	return characteristic.get_data()


## Returns a Pokemon moves' effects in contests.
## [param id] is the id of a contest effect.
func get_contest_effect(id: int = 0) -> Dictionary:
	query = Get.CONTEST_EFFECT
	PokeDotClient("https://pokeapi.co/api/v2/", "contest-effect/%s/" % str(id))
	return contest_effect.get_data()


## Returns what categories judges used to weigh a Pokemon's condition in contests.
## [param name_or_id] is the name or id of a contest type.
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


## Returns the categories which determine which Pokemon are able to interbreed.
## [param name_or_id] is the name or id of an egg group.
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


## Returns the conditions which affect what Pokemon might appear in the wild, e.g., day or night.
## [param name_or_id] is the name or id of an encounter condition.
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


## Returns the various states that an encounter condition can have, e.g., time of day can be either day or night.
## [param name_or_id] is the name or id of an encounter condition value.
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


## Returns the methods by which the player might can encounter Pokemon in the wild, e.g., walking in tall grass.
## [param name_or_id] is the name or id of an encounter method.
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


## Returns the Pokemon's family tree.
## [param id] is the id of an evolution chain.
func get_evolution_chain(id: int = 0) -> Dictionary:
	query = Get.EVOLUTION_CHAIN
	PokeDotClient("https://pokeapi.co/api/v2/", "evolution-chain/%s/" % str(id))
	return evolution_chain.get_data()


## Returns the events and conditions that cause a Pokemon to evolve.
## [param name_or_id] is the name or id of an evolution trigger.
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


## Returns the details about gender i.e. species, rate, and evolution requirements.
## [param name_or_id] is the name or id of a gender.
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


## Returns the details about a grouping of the Pokemon games that are separated based on the Pokemon they include.
## [param name_or_id] is the name or id of a generation.
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


## Returns the speed in which a Pokemon gain levels through experience.
## [param name_or_id] is the name or id of growth rate.
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


## Returns an object in the games which the player can pick up, keep in their bag, and use in some manner.
## [param name_or_id] is the name or id of an item.
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


## Returns the definition of particular aspects of items, e.g. "usable in battle" or "consumable".
## [param name_or_id] is the name or id of an item attribute.
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


## Returns the category that determine where items will be placed in the players bag.
## [param name_or_id] is the name or id of an item category.
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


## Returns the various effects of the move "Fling" when used with different items.
## [param name_or_id] is the name or id of an item fling effect.
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


## Returns the bag pocket used for storing items by category.
## [param name_or_id] is the name or id of an item pocket.
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


## Returns the languages for translations of API resource information.
## [param name_or_id] is the name or id of a language.
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


## Returns the locations that can be visited within the games. They make up sizable portions of regions, like cities or routes.
## [param name_or_id] is the name or id of a location.
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


## Returns the sections of areas, such as floors in a building or cave. Each area has its own set of possible Pokemon encounters.
## [param name_or_id] is the name or id of a location area.
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


## Returns the items that teach moves to Pokemon. They vary from version to version, so it is not certain that one specific TM or HM corresponds to a single Machine.
## [param id] is the id of a machine.
func get_machine(id: int = 0) -> Dictionary:
	query = Get.MACHINE
	PokeDotClient("https://pokeapi.co/api/v2/", "machine/%s/" % str(id))
	return machine.get_data()


## Returns the skills of Pokemon in battle. In battle, a Pokemon uses one move each turn. Some moves (including those learned by Hidden Machine) can be used outside of battle as well, usually for the purpose of removing obstacles or exploring new areas.
## [param name_or_id] is the name or id of a move.
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


## Returns the status conditions which are caused by moves used during battle.
## [param name_or_id] is the name or id of a move ailment.
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


## Returns the styles of moves when used in the Battle Palace.
## [param name_or_id] is the name or id of a move battle style.
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


## Returns the very general categories that loosely group move effects.
## [param name_or_id] is the name or id of a move category.
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


## Returns the damage classes moves can have, e.g. physical, special, or non-damaging.
## [param name_or_id] is the name or id of a move damage class.
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


## Returns the methods by which Pokemon can learn moves.
## [param name_or_id] is the name or id of a move learn method.
func get_move_learn_method(name_or_id) -> Dictionary:
	query = Get.MOVE_LEARN_METHOD
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "move-learn-method/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "move-learn-method/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_move_learn_method(<name_or_id>), <name_or_id> must be an int or String type.")
	return move_learn_method.get_data()


## Returns the targets which moves can be directed at during battle. Targets can be Pokemon, environments or even other moves.
## [param name_or_id] is the name or id of a move target.
func get_move_target(name_or_id) -> Dictionary:
	query = Get.MOVE_TARGET
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "move-target/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "move-target/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_move_target(<name_or_id>), <name_or_id> must be an int or String type.")
	return move_target.get_data()


## Returns the influence on how a Pokemon's stats grow.
## [param name_or_id] is the name or id of a nature.
func get_nature(name_or_id) -> Dictionary:
	query = Get.NATURE
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "nature/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "nature/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_nature(<name_or_id>), <name_or_id> must be an int or String type.")
	return nature.get_data()


## Returns the areas used for grouping Pokemon encounters in Pal Park. They're like habitats that are specific to Pal Park.
## [param name_or_id] is the name or id of a Pal Park area.
func get_pal_park_area(name_or_id) -> Dictionary:
	query = Get.PAL_PARK_AREA
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "pal-park-area/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "pal-park-area/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_pal_park_area(<name_or_id>), <name_or_id> must be an int or String type.")
	return pal_park_area.get_data()


## Returns the different attributes of a Pokemon's performance in Pokeathlons. In Pokeathlons, competitions happen on different courses; one for each of the different Pokéathlon stats.
## [param name_or_id] is the name or id of a Pokeathlon stat.
func get_pokeathlon_stat(name_or_id) -> Dictionary:
	query = Get.POKEATHLON_STAT
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokeathlon-stat/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokeathlon-stat/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_pokeathlon_stat(<name_or_id>), <name_or_id> must be an int or String type.")
	return pokeathlon_stat.get_data()


## Returns a handheld electronic encyclopedia device; one which is capable of recording and retaining information of the various Pokemon in a given region with the exception of the national dex and some smaller dexes related to portions of a region.
## [param name_or_id] is the name or id of a Pokedex.
func get_pokedex(name_or_id) -> Dictionary:
	query = Get.POKEDEX
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokedex/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokedex/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_pokedex(<name_or_id>), <name_or_id> must be an int or String type.")
	return pokeathlon_stat.get_data()


## Returns the creatures that inhabit the world of the Pokemon games. They can be caught using Pokéballs and trained by battling with other Pokemon. Each Pokemon belongs to a specific species but may take on a variant which makes it differ from other Pokemon of the same species, such as base stats, available abilities and typings.
## [param name_or_id] is the name or id of a Pokemon.
func get_pokemon(name_or_id) -> Dictionary:
	query = Get.POKEMON
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokemon/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokemon/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_pokemon(<name_or_id>), <name_or_id> must be an int or String type.")
	return pokemon.get_data()


## Returns the colors used for sorting Pokemon in a Pokedex. The color listed in the Pokedex is usually the color most apparent or covering each Pokemon's body. No orange category exists; Pokemon that are primarily orange are listed as red or brown.
## [param name_or_id] is the name or id of a Pokemon color.
func get_pokemon_color(name_or_id) -> Dictionary:
	query = Get.POKEMON_COLOR
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokemon-color/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokemon-color/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_pokemon_color(<name_or_id>), <name_or_id> must be an int or String type.")
	return pokemon_color.get_data()


## Returns some visually different forms of a Pokemon. These differences are purely cosmetic. For variations within a Pokemon species, which do differ in more than just visuals, the 'Pokemon' entity is used to represent such a variety.
## [param name_or_id] is the name or id of a Pokemon form.
func get_pokemon_form(name_or_id) -> Dictionary:
	query = Get.POKEMON_FORM
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokemon-form/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokemon-form/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_pokemon_form(<name_or_id>), <name_or_id> must be an int or String type.")
	return pokemon_form.get_data()


## Returns the different terrain where Pokemon can be found in.
## [param name_or_id] is the name or id of a Pokemon habitat.
func get_pokemon_habitat(name_or_id) -> Dictionary:
	query = Get.POKEMON_HABITAT
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokemon-habitat/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokemon-habitat/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_pokemon_habitat(<name_or_id>), <name_or_id> must be an int or String type.")
	return pokemon_habitat.get_data()


## Returns the shapes used for sorting Pokemon in a Pokedex.
## [param name_or_id] is the name or id of a Pokemon shape.
func get_pokemon_shape(name_or_id) -> Dictionary:
	query = Get.POKEMON_SHAPE
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokemon-shape/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokemon-shape/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_pokemon_shape(<name_or_id>), <name_or_id> must be an int or String type.")
	return pokemon_shape.get_data()


## Returns the basis for at least one Pokemon. Attributes of a Pokemon species are shared across all varieties of Pokemon within the species. A good example is Wormadam; Wormadam is the species which can be found in three different varieties, Wormadam-Trash, Wormadam-Sandy and Wormadam-Plant.
## [param name_or_id] is the name or id of Pokemon species.
func get_pokemon_species(name_or_id) -> Dictionary:
	query = Get.POKEMON_SPECIES
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokemon-species/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "pokemon-species/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_pokemon_species(<name_or_id>), <name_or_id> must be an int or String type.")
	return pokemon_species.get_data()


## Returns an organized area of the Pokemon world. Most often, the main difference between regions is the species of Pokemon that can be encountered within them.
## [param name_or_id] is the name or id of a region.
func get_region(name_or_id) -> Dictionary:
	query = Get.REGION
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "region/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "region/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_region(<name_or_id>), <name_or_id> must be an int or String type.")
	return region.get_data()


## Returns what determines certain aspects of battles. Each Pokemon has a value for each stat which grows as they gain levels and can be altered momentarily by effects in battles.
## [param name_or_id] is the name or id of a stat.
func get_stat(name_or_id) -> Dictionary:
	query = Get.STAT
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "stat/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "stat/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_stat(<name_or_id>), <name_or_id> must be an int or String type.")
	return stat.get_data()


## Returns the effects of moves when used in super contests.
## [param name_or_id] is the name or id of a super contest effect.
func get_super_contest_effect(name_or_id) -> Dictionary:
	query = Get.SUPER_CONTEST_EFFECT
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "super-contest-effect/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "super-contest-effect/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_super_contest_effect(<name_or_id>), <name_or_id> must be an int or String type.")
	return super_contest_effect.get_data()


## Returns the properties for Pokemon and their moves. Each type has three properties: which types of Pokemon it is super effective against, which types of Pokemon it is not very effective against, and which types of Pokemon it is completely ineffective against.
## [param name_or_id] is the name or id of a Pokemon type.
func get_type(name_or_id) -> Dictionary:
	query = Get.TYPE
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "type/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "type/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_type(<name_or_id>), <name_or_id> must be an int or String type.")
	return type.get_data()


## Returns the versions of the games, e.g., Red, Blue or Yellow.
## [param name_or_id] is the name or id of a Pokemon version.
func get_version(name_or_id) -> Dictionary:
	query = Get.VERSION
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "version/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "version/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_version(<name_or_id>), <name_or_id> must be an int or String type.")
	return version.get_data()


## Returns the version groups which categorize highly similar versions of the games.
## [param name_or_id] is the name or id of a Pokemon version group.
func get_version_group(name_or_id) -> Dictionary:
	query = Get.VERSION_GROUP
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "version-group/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "version-group/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_version_group(<name_or_id>), <name_or_id> must be an int or String type.")
	return version_group.get_data()


func _on_request_completed(result, response_code, headers, body) -> void:
	var data: Dictionary = _parse_JSON(body)
	print("HTTP request code: %s" % _get_result(result))
	print("HTTP response code: %s\n" % _get_response(response_code))
	print("%s\n" % JSON.stringify(headers, "  "))
	#print(JSON.print(data, "  "))

	match query:
		Get.POKEMON_PAGINATION:
			pokemon_pagination.set_data(
				data.get("count"),
				data.get("next"),
				data.get("previous"),
				data.get("results")
			)
			print(JSON.stringify(pokemon_pagination.get_data(), "  "))

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
			print(JSON.stringify(ability.get_data(), "  "))

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
			print(JSON.stringify(berry.get_data(), "  "))

		Get.BERRY_FLAVOR:
			berry_flavor.set_data(
				data.get("id"),
				data.get("name"),
				data.get("berries"),
				data.get("contest_type"),
				data.get("names")
			)
			print(JSON.stringify(berry_flavor.get_data(), "  "))

		Get.BERRY_FIRMNESS:
			berry_firmness.set_data(
				data.get("id"),
				data.get("name"),
				data.get("berries"),
				data.get("names")
			)
			print(JSON.stringify(berry_firmness.get_data(), "  "))

		Get.CHARACTERISTIC:
			characteristic.set_data(
				data.get("id"),
				data.get("gene_modulo"),
				data.get("possible_values"),
				data.get("highest_stat"),
				data.get("descriptions")
			)
			print(JSON.stringify(characteristic.get_data(), "  "))

		Get.CONTEST_EFFECT:
			contest_effect.set_data(
				data.get("id"),
				data.get("appeal"),
				data.get("jam"),
				data.get("effect_entries"),
				data.get("flavor_text_entries")
			)
			print(JSON.stringify(contest_effect.get_data(), "  "))

		Get.CONTEST_TYPE:
			contest_type.set_data(
				data.get("id"),
				data.get("name"),
				data.get("berry_flavor"),
				data.get("names")
			)
			print(JSON.stringify(contest_type.get_data(), "  "))

		Get.EGG_GROUP:
			egg_group.set_data(
				data.get("id"),
				data.get("name"),
				data.get("names"),
				data.get("pokemon_species")
			)
			print(JSON.stringify(egg_group.get_data(), "  "))

		Get.ENCOUNTER_CONDITION:
			encounter_condition.set_data(
				data.get("id"),
				data.get("name"),
				data.get("values"),
				data.get("names")
			)
			print(JSON.stringify(encounter_condition.get_data(), "  "))

		Get.ENCOUNTER_CONDITION_VALUE:
			encounter_condition_value.set_data(
				data.get("id"),
				data.get("name"),
				data.get("condition"),
				data.get("names")
			)
			print(JSON.stringify(encounter_condition_value.get_data(), "  "))

		Get.ENCOUNTER_METHOD:
			encounter_method.set_data(
				data.get("id"),
				data.get("name"),
				data.get("order"),
				data.get("names")
			)
			print(JSON.stringify(encounter_method.get_data(), "  "))

		Get.EVOLUTION_CHAIN:
			evolution_chain.set_data(
				data.get("id"),
				data.get("baby_trigger_item"),
				data.get("chain")
			)
			print(JSON.stringify(evolution_chain.get_data(), "  "))

		Get.EVOLUTION_TRIGGER:
			evolution_trigger.set_data(
				data.get("id"),
				data.get("name"),
				data.get("names"),
				data.get("pokemon_species")
			)
			print(JSON.stringify(evolution_trigger.get_data(), "  "))

		Get.GENDER:
			gender.set_data(
				data.get("id"),
				data.get("name"),
				data.get("pokemon_species_details"),
				data.get("required_for_evolution")
			)
			print(JSON.stringify(gender.get_data(), "  "))

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
			print(JSON.stringify(generation.get_data(), "  "))

		Get.GROWTH_RATE:
			growth_rate.set_data(
				data.get("id"),
				data.get("name"),
				data.get("formula"),
				data.get("descriptions"),
				data.get("levels"),
				data.get("pokemon_species")
			)
			print(JSON.stringify(growth_rate.get_data(), "  "))

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
			print(JSON.stringify(item.get_data(), "  "))

		Get.ITEM_ATTRIBUTE:
			item_attribute.set_data(
				data.get("descriptions"),
				data.get("id"),
				data.get("items"),
				data.get("name"),
				data.get("names")
			)
			print(JSON.stringify(item_attribute.get_data(), "  "))

		Get.ITEM_CATEGORY:
			item_category.set_data(
				data.get("id"),
				data.get("name"),
				data.get("items"),
				data.get("names"),
				data.get("pocket")
			)
			print(JSON.stringify(item_category.get_data(), "  "))

		Get.ITEM_FLING_EFFECT:
			item_fling_effect.set_data(
				data.get("id"),
				data.get("name"),
				data.get("effect_entries"),
				data.get("items")
			)
			print(JSON.stringify(item_fling_effect.get_data(), "  "))

		Get.ITEM_POCKET:
			item_pocket.set_data(
				data.get("id"),
				data.get("name"),
				data.get("categories"),
				data.get("names")
			)
			print(JSON.stringify(item_pocket.get_data(), "  "))

		Get.LANGUAGE:
			language.set_data(
				data.get("id"),
				data.get("name"),
				data.get("official"),
				data.get("iso639"),
				data.get("iso3166"),
				data.get("names")
			)
			print(JSON.stringify(language.get_data(), "  "))

		Get.LOCATION:
			location.set_data(
				data.get("id"),
				data.get("name"),
				data.get("region"),
				data.get("names"),
				data.get("game_indices"),
				data.get("areas")
			)
			print(JSON.stringify(location.get_data(), "  "))

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
			print(JSON.stringify(location_area.get_data(), "  "))

		Get.MACHINE:
			machine.set_data(
				data.get("id"),
				data.get("item"),
				data.get("move"),
				data.get("version_group")
			)
			print(JSON.stringify(machine.get_data(), "  "))

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
			print(JSON.stringify(move.get_data(), "  "))

		Get.MOVE_AILMENT:
			move_ailment.set_data(
				data.get("id"),
				data.get("name"),
				data.get("moves"),
				data.get("names")
			)
			print(JSON.stringify(move_ailment.get_data(), "  "))

		Get.MOVE_BATTLE_STYLE:
			move_battle_style.set_data(
				data.get("id"),
				data.get("name"),
				data.get("names")
			)
			print(JSON.stringify(move_battle_style.get_data(), "  "))

		Get.MOVE_CATEGORY:
			move_category.set_data(
				data.get("id"),
				data.get("name"),
				data.get("descriptions"),
				data.get("moves")
			)
			print(JSON.stringify(move_category.get_data(), "  "))

		Get.MOVE_DAMAGE_CLASS:
			move_damage_class.set_data(
				data.get("id"),
				data.get("name"),
				data.get("descriptions"),
				data.get("moves")
			)
			print(JSON.stringify(move_damage_class.get_data(), "  "))

		Get.MOVE_LEARN_METHOD:
			move_learn_method.set_data(
				data.get("id"),
				data.get("name"),
				data.get("names"),
				data.get("descriptions"),
				data.get("version_groups")
			)
			print(JSON.stringify(move_learn_method.get_data(), "  "))

		Get.MOVE_TARGET:
			move_target.set_data(
				data.get("id"),
				data.get("name"),
				data.get("descriptions"),
				data.get("moves"),
				data.get("names")
			)
			print(JSON.stringify(move_target.get_data(), "  "))

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
			print(JSON.stringify(nature.get_data(), "  "))

		Get.PAL_PARK_AREA:
			pal_park_area.set_data(
				data.get("id"),
				data.get("name"),
				data.get("names"),
				data.get("pokemon_encounters")
			)
			print(JSON.stringify(pal_park_area.get_data(), "  "))

		Get.POKEATHLON_STAT:
			pokeathlon_stat.set_data(
				data.get("id"),
				data.get("name"),
				data.get("affecting_natures"),
				data.get("names")
			)
			print(JSON.stringify(pokeathlon_stat.get_data(), "  "))

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
			print(JSON.stringify(pokedex.get_data(), "  "))

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
			print(JSON.stringify(pokemon.get_data(), "  "))

		Get.POKEMON_COLOR:
			pokemon_color.set_data(
				data.get("id"),
				data.get("name"),
				data.get("names"),
				data.get("pokemon_species")
			)
			print(JSON.stringify(pokemon_color.get_data(), "  "))

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
			print(JSON.stringify(pokemon_form.get_data(), "  "))

		Get.POKEMON_HABITAT:
			pokemon_habitat.set_data(
				data.get("id"),
				data.get("name"),
				data.get("names"),
				data.get("pokemon_species")
			)
			print(JSON.stringify(pokemon_habitat.get_data(), "  "))

		Get.POKEMON_SHAPE:
			pokemon_shape.set_data(
				data.get("id"),
				data.get("name"),
				data.get("awesome_names"),
				data.get("names"),
				data.get("pokemon_species")
			)
			print(JSON.stringify(pokemon_shape.get_data(), "  "))

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
			print(JSON.stringify(pokemon_species.get_data(), "  "))

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
			print(JSON.stringify(region.get_data(), "  "))

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
			print(JSON.stringify(stat.get_data(), "  "))

		Get.SUPER_CONTEST_EFFECT:
			super_contest_effect.set_data(
				data.get("id"),
				data.get("appeal"),
				data.get("flavor_text_entries"),
				data.get("moves")
			)
			print(JSON.stringify(super_contest_effect.get_data(), "  "))

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
			print(JSON.stringify(type.get_data(), "  "))

		Get.VERSION:
			version.set_data(
				data.get("id"),
				data.get("name"),
				data.get("names"),
				data.get("version_group")
			)
			print(JSON.stringify(version.get_data(), "  "))

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
			print(JSON.stringify(version_group.get_data(), "  "))


## Parses JSON and returns as Dictionary.
## [param body] is the received object from a completed request.
func _parse_JSON(body: PackedByteArray) -> Dictionary:
	var json := JSON.new()
	var string: String = body.get_string_from_utf8()
	var error: int = json.parse(string)

	if error == OK:
		var data_got: Variant = json.data
		if typeof(data_got) == TYPE_DICTIONARY:
			#print(JSON.stringify(data_got, "\t"))
			return data_got
		else:
			print("Unexpected data.\n")
			return {}
	else:
		print("JSON Parse Error: ", json.get_error_message(), " in ", string, " at line ", json.get_error_line(), ".\n")
		return {}


## Returns a readable result code in.
## [param id] is the result code/id.
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


## Returns a readable response code.
## [param id] is the response code/id.
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
