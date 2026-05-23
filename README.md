<p align="center">
    <img src="PokeDot_title.png"><br>
    A Pokemon API wrapper with Godot 4.
    Uses <a href="https://pokeapi.co/" target="_blank">PokéApi</a> v2
</p>

## Table of Contents
| Section                           | Description                                                       |
|-----------------------------------|-------------------------------------------------------------------|
| [Setup](#setup)                   | A guide on setting up the wrapper to a project.                   |
| [Usage](#usage)                   | Shows the gist of how it works and its examples to use.           |
| [Examples](#examples)             | Some examples on how to use it.                                   |
| [Structure](#structure)           | The structure of the entire project.                              |
| [Methods](#methods)               | The functions available from `PokeDotClient` main scene.          |
| [Main function](#main-function)   | The methods that abstract their purpose, e.g. `PokeDotClient()`.  |
| [API calls](#api-calls)           | Requests data and stores them to an object, e.g. `Pokemon`.       |
| [License](#license)               | The license of this project.                                      |

## Setup
1. Make a new Godot 4 project.
2. Copy the `Data` folder, `PokeDotClient.gd`, and `PokeDotClient.tscn` into the new project directory.
3. Instance `PokeDotClient` and add it as a child of your main scene.

## Usage
This is the main request function which is used by different methods for various data. It uses the `main_url` and `endpoint` parameters for `HTTPRequest.request()`, while the `method` shows what the request is and its status or error.

```gdscript
func PokeDotClient(main_url: String = url, endpoint: String = "", method: String = "") -> void:
	print("Request endpoint: %s" % main_url + endpoint + "\n")

	if not main_url == "" or not endpoint == "":
		var error: int = 0
		error = request(main_url + endpoint, ["Accept: application/json"], HTTPClient.METHOD_GET)
		if error == OK: print("✓ %s() run successfully." % method)
		else: print("❌ %s() failed." % method)
	else:
		print("❌ PokeDotClient() failed. The main_url or endpoint cannot be empty.")
```

The `get_pokemon_pagination()` the getter for the Pokemon pagination which requests and stores them to `PokemonPagination`.
```gdscript
func get_pokemon_pagination(endpoint: String = "pokemon", limit: int = 20, offset: int = 0) -> void:
	query = Get.POKEMON_PAGINATION
	PokeDotClient(url, "%s/?limit=%s&offset=%s" % [endpoint, limit, offset], "get_pokemon_pagination")
```

Together it works by simply calling the `get_pokemon_pagination` method, which then sets its parameters to `PokeDotClient()` to make a request.
```gdscript
func _ready() -> void:
	get_pokemon_pagination("pokemon", 20, 0)
```

### Examples
> [!NOTE]  
> For this example, if you're following this guide, then kindly go to `PokeDotClient.gd` or simply click the `PokeDotClient.tscn` main scene and disable the `Print Data`, `Print Result`, and `Print Response` in the properties tab i.e. `Inspector`.  
>  
> By default, every requests prints the following properties to the terminal, but by turning them off we'll only print specifically when we need to.

#### Requesting multiple data
```gdscript
extends Node

var pokeapi = preload("res://PokeDotClient.tscn").instantiate()

func _ready() -> void:
  add_child(pokeapi)
  pokeapi.get_ability(1)
  await pokeapi.request_completed
  pokeapi.get_pokemon("ditto")
```

So what happens here is that after instance and adding `PokeDotClient` as a child, we used its `get_ability` and `get_pokemon` methods.

As you can see, we `await` the `request_completed` signal because the first method here, `get_ability`, request is still running. It basically tells here to wait for `get_ability` to complete first before starting `get_pokemon` request.

---

#### Accessing the received data
After the requests, the data from `get_ability` and `get_pokemon` are then stored in `Ability` and `Pokemon` respectively.

These are the objects in `Data` directory, e.g. `/Data/Ability.gd` and `/Data/Pokemon.gd`, and are handled by `PokeDotClient`. Therefore, the data can be accessed as `PokeDotClient.ability` and `PokeDotClient.pokemon` respectively.

```gdscript
extends Node

var pokeapi = preload("res://PokeDotClient.tscn").instantiate()

func _ready() -> void:
	add_child(pokeapi)
	
	pokeapi.get_ability(1)
	await pokeapi.request_completed
	var ability: Dictionary = pokeapi.ability.data
	print("\n"+JSON.stringify(ability, "\t")+"\n")
	
	pokeapi.get_pokemon("ditto")
	await pokeapi.request_completed
	var pokemon: Dictionary = pokeapi.pokemon.get_data()
	print("\n"+JSON.stringify(pokemon, "\t")+"\n")
```

The data can be accessed as a member, e.g. `ability.data`, or with the objects' getter function `pokeapi.ability.get_data()`.

Here we assigned the received data to variables `ability` and `pokemon` after the request was completed. Then we simply print it on them on the console in a *prettified* JSON format.

**Output:**
```JSON
Request endpoint: https://pokeapi.co/api/v2/ability/1/

✓ get_ability() run successfully.

{
	"effect_changes": [
		{
			"effect_entries": [
				{
					"effect": "N'a aucun effet en combat.",
					"language": {
						"name": "fr",
						"url": "https://pokeapi.co/api/v2/language/5/"
...

Request endpoint: https://pokeapi.co/api/v2/pokemon/ditto/

✓ get_pokemon() run successfully.

{
	"abilities": [
		{
			"ability": {
				"name": "limber",
				"url": "https://pokeapi.co/api/v2/ability/7/"
			},
			"is_hidden": false,
			"slot": 1.0
...
```

---

### Creating an object to hold data
Just as we can instance and add a PokeDotClient as a child to our main scene, we can also do the same to our data containers in `res://Data`.

For this example we'll create a new Pokemon object for Pikachu.

```gdscript
extends Node

var pokeapi = preload("res://PokeDotClient.tscn").instantiate()

func _ready() -> void:
	add_child(pokeapi)

	pokeapi.get_pokemon("pikachu")
	await pokeapi.request_completed

	var pikachu: Pokemon = Pokemon.new()
	pikachu.name = "Pikachu"
	add_child(pikachu, true)

	var pokedex: Dictionary = pokeapi.pokemon.get_data()
	pikachu.data = pokedex

	print("\nPikachu's info:\n"+JSON.stringify(pikachu.data, "\t")+"\n")
```

Here we used `get_pokemon("pikachu")` to get their data, then we made a new `Pokemon` set to a `pikachu` variable. After setting its name, we used `add_child(pikachu, true)` where its 2nd parameter is set to `true` so its name is Pikachu in the *SceneTree*.

```bash
Node                  - main scene
  ├─ PokeDotClient    - pokeapi wrapper instance
  └─ Pikachu          - the new Pokemon
```

Then we get the actual data with `pokemon.get_data()` and set its value to `pikachu.data` by making a new `Dictionary`.

Finally in this example we just accessed `Pikachu.data` and printed them on terminal.

```JSON
Request endpoint: https://pokeapi.co/api/v2/pokemon/pikachu/

✓ get_pokemon() run successfully.

Pikachu's info:
{
	"abilities": [
		{
			"ability": {
				"name": "static",
				"url": "https://pokeapi.co/api/v2/ability/9/"
			},
			"is_hidden": false,
			"slot": 1.0
		},
		{
			"ability": {
				"name": "lightning-rod",
				"url": "https://pokeapi.co/api/v2/ability/31/"
			},
			"is_hidden": true,
			"slot": 3.0
		}
	],
	"base_experience": 112,
	"cries": {
		"latest": "https://raw.githubusercontent.com/PokeAPI/cries/main/cries/pokemon/latest/25.ogg",
		"legacy": "https://raw.githubusercontent.com/PokeAPI/cries/main/cries/pokemon/legacy/25.ogg"
	},
	"forms": [
		{
			"name": "pikachu",
			"url": "https://pokeapi.co/api/v2/pokemon-form/25/"
		}
	],
...
```

For a quick test you can also check out [PokeDotTest](https://github.com/UbeJelly/PokeDotTest).

# Structure
This is the structure of the entire project. This only shows the relevant directories and files for this API wrapper.

```bash
# Directory
res:// (root)
  ├─ Data                     - contains the objects that hold various data.
  │   ├─ Ability.gd           - stores get_ability() received data.
  │   ├─ ...
  │   └─ VersionGroup.gd      - stores get_version_group() received data.
  ├─ PokeDotClient.gd         - is the script of the pokeapi wrapper.
  └─ PokeDotClient.tscn       - is the pokeapi wrapper that handles all http requests.

# Main scene
Node                    - is the main scene of the new project.
  └─ PokeDotClient      - is the instanced pokeapi wrapper.
```

# Methods
These are the available functions to be used with this API wrapper.

## Main function

- `PokeDotClient(main_url, endpoint, method)` - is the main function that starts `HTTPRequest` for any data. Returns a request error.
  - `main_url` - is the main URL. Currently uses PokeAPI v2.
  - `endpoint` - is the API endpoint to request data from.
  - `method` - is the name of the method, e.g. 'get_ability', to return their request status.

## API calls
The actual functions that handles requests and retrieves data. The data are stored to respective objects under the `Data` directory, e.g. `get_berry()` → `Berry.gd`.

For more info check out the official documentation at https://pokeapi.co/docs/v2.

- `get_pokemon_pagination(endpoint, limit, offset)` - retrieves a list of Pokemons on a page and its position and stores it to `PokemonPagination`.
  - `endpoint` - is the API endpoint to request data from. "pokemon" by default
  - `limit` - is the number of Pokemons in a page. 20 items by default
  - `offset` - is used to move between pages. 0 by default

- `get_ability(name_or_id)` - retrieves an ability data and stores it to `Ability`.
- `get_berry(name_or_id)` - retrieves a berry data and stores it to `Berry`.
- `get_berry_flavor(name_or_id)` - retrieves a berry flavor data and stores it to `BerryFlavor`.
- `get_berry_firmness(name_or_id)` - retrieves a berry firmness data and stores it to `BerryFirmness`.
- `get_characteristic(id)` - retrieves the Pokemon's highest stat and stores it to `Characteristic`.
- `get_contest_effect(id)` - retrieves the Pokemon moves' effects in contests and stores them to `ContestEffect`.
- `get_contest_type(name_or_id)` - retrieves the categories that judges use to weigh a Pokemon's condition in contests, and stores them to `ContestType`.
- `get_egg_group(name_or_id)` - retrieves the categories that determine which Pokemon are able to interbreed, and stores them to `EggGroup`.
- `get_encounter_condition(name_or_id)` - retrieves the conditions that affect which Pokemon might appear in the wild, e.g., day or night, and stores them to `EncounterCondition`.
- `get_encounter_condition_value(name_or_id)` - retrieves the various states that an encounter condition can have, e.g., time of day can be either day or night, and stores them to `EncounterConditionValue`.
- `get_encounter_method(name_or_id)` - retrieves the methods by which the player might can encounter Pokemon in the wild, e.g., walking in tall grass, and stores them to `EncounterMethod`.
- `get_evolution_chain(id)` - retrieves the Pokemon's family tree and stores it to `EvolutionChain`.
- `get_evolution_trigger(name_or_id)` - retrieves the events and conditions that cause a Pokemon to evolve and stores them to `EvolutionTrigger`.
- `get_gender(name_or_id)` - retrieves the details about gender i.e. species, rate, and evolution requirements, and stores them to `Gender`.
- `get_generation(name_or_id)` - retrieves the details about a grouping of the Pokemon games that are separated based on the Pokemon they include and stores them to `Generation`.
- `get_growth_rate(name_or_id)` - retrieves the speed in which a Pokemon gain levels through experience and stores it to `GrowthRate`.
- `get_item(name_or_id)` - retrieves an object in the games which the player can pick up, keep in their bag, and use in some manner, and stores it to `Item`.
- `get_item_attribute(name_or_id)` - retrieves the definition of particular aspects of items, e.g. "usable in battle" or "consumable", and stores it to `ItemAttribute`.
- `get_item_category(name_or_id)` - retrieves the category that determine where items will be placed in the players bag, and stores it to `ItemCategory`.
- `get_item_fling_effect(name_or_id)` - retrieves the various effects of the move "Fling" when used with different items, and stores them to `ItemFlingEffect`.
- `get_item_pocket(name_or_id)` - retrieves the bag pocket used for storing items by category and stores it `ItemPocket`.
- `get_language(name_or_id)` - retrieves the languages for translations of API resource information, and stores them to `Language`.
- `get_location(name_or_id)` - retrieves the locations that can be visited within the games and stores them to `Location`.
- `get_location_area(name_or_id)` - retrieves the sections of areas, such as floors in a building or cave, and stores them to `LocationArea`.
- `get_machine(id)` - retrieves the items that teach moves to Pokemon and stores them to `Machine`.
- `get_move(name_or_id)` - retrieves the skills of Pokemon in battle and stores them to `Move`.
- `get_move_ailment(name_or_id)` - retrieves the status conditions which are caused by moves used during battle, and stores them to `MoveAilment`.
- `get_move_battle_style(name_or_id)` - retrieves the styles of moves when used in the Battle Palace and stores them to `MoveBattleStyle`.
- `get_move_category(name_or_id)` - retrieves the very general categories that loosely group move effects and stores them to `MoveCategory`.
- `get_move_damage_class(name_or_id)` - retrieves the damage classes moves can have, e.g. physical, special, or non-damaging, and stores them to `MoveDamageClass`.
- `get_move_learn_method(name_or_id)` - retrieves the methods by which Pokemon can learn moves and stores them to `MoveLearnMethod`.
- `get_move_target(name_or_id)` - retrieves the targets which moves can be directed at during battle, and stores them to `MoveTarget`.
- `get_nature(name_or_id)` - retrieves the influence on how a Pokemon's stats grow, and stores it to `Nature`.
- `get_pal_park_area(name_or_id)` - retrieves the areas used for grouping Pokemon encounters in Pal Park, and stores them to `PalParkArea`.
- `get_pokeathlon_stat(name_or_id)` - retrieves the different attributes of a Pokemon's performance in Pokeathlons, and stores them to `PokeAthlonStat`.
- `get_pokedex(name_or_id)` - retrieves a handheld electronic Pokemon encyclopedia device, and stores it to `Pokedex`.
- `get_pokemon(name_or_id)` - retrieves the creatures that inhabit the world of the Pokemon games, and stores them to `Pokemon`.
- `get_pokemon_color(name_or_id)` - retrieves the colors used for sorting Pokemon in a Pokedex, and stores them to `PokemonColor`.
- `get_pokemon_form(name_or_id)` - retrieves some visually different forms of a Pokemon, and stores them to `PokemonForm`.
- `get_pokemon_habitat(name_or_id)` - retrieves the different terrain where Pokemon can be found in, and stores them to `PokemonHabitat`.
- `get_pokemon_shape(name_or_id)` - retrieves the shapes used for sorting Pokemon in a Pokedex, and stores them to `PokemonShape`.
- `get_pokemon_species(name_or_id)` - retrieves the basis for at least one Pokemon and stores it to `PokemonSpecies`.
- `get_region(name_or_id)` - retrieves an organized area of the Pokemon world and stores it to `Region`.
- `get_stat(name_or_id)` - retrieves what determines certain aspects of battles and stores them to `Stat`.
- `get_super_contest_effect(name_or_id)` - retrieves the effects of moves when used in super contests, and stores them to `SuperContestEffect`.
- `get_type(name_or_id)` - retrieves the properties for Pokemon and their moves and stores them to `Type`.
- `get_version(name_or_id)` - retrieves the versions of the games, e.g., Red, Blue or Yellow, and stores them to `Version`.
- `get_version_group(name_or_id)` - retrieves the version groups which categorize highly similar versions of the games, and stores them to `VersionGroup`.

# License
Uses MIT license. See [LICENSE.md](LICENSE.md)