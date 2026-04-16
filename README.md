# PokeDot

Simple [PokéApi](https://pokeapi.co/) wrapper via Godot.

# Usage
## Methods

- `PokeDotClient(BASE_URL, endpoint)` - main function that various methods uses. It returns 0 or 1 depending its error. It has `BASE_URL` and `endpoint` arguments.
  - `BASE_URL` - `https://pokeapi.co/api/v2/` by default.
  - `endpoint` - "" by default. It is determined by the method being used.

- `get_pokemon_pagination(endpoint, limit, offset)` - displays 1st page of 20 Pokemons and returns the data. It has `endpoint`, `limit`, and `offset` arguments.
  - `endpoint` - **"pokemon"** by default 
  - `limit` - **20** items by default
  - `offset` - **"0"** by default, used to move on pages
  - saves and loads data in `Resources/PokemonPagination.gd`, which is then returned by this method

- `get_ability(name_or_id)` - gets an ability metadata. `name_or_id` can be the `string` name or `int` id of ability.
- `get_berry(name_or_id)` - gets a berry metadata.
- `get_berry_flavor(name_or_id)` - gets a flavor metadata of berry.
- `get_berry_firmness(name_or_id)` - gets the firmness metadata of berry.
- `get_characteristic(id)` - gets Pokemon's highest stat.
- `get_contest_effect(id)` - gets the Pokemon moves' effects in contests.
- `get_contest_type(name_or_id)` - get what categories judges used to weigh a Pokemon's condition in contests.
- `get_egg_group(name_or_id)` - get the categories which determine which Pokemon are able to interbreed.
- `get_encounter_condition(name_or_id)` - get the conditions which affect what Pokemon might appear in the wild, e.g., day or night.
- `get_encounter_condition_value(name_or_id)` - get the various states that an encounter condition can have, e.g., time of day can be either day or night.
- `get_encounter_method(name_or_id)` - get the methods by which the player might can encounter Pokemon in the wild, e.g., walking in tall grass.
- `get_evolution_chain(id)` - get the Pokemon's family tree.
- `get_evolution_trigger(name_or_id)` - get the events and conditions that cause a Pokemon to evolve.
- `get_gender(name_or_id)` - get details about gender i.e. species, rate, and evolution requirements.
- `get_generation(name_or_id)` - get details about a grouping of the Pokemon games that are separated based on the Pokemon they include.
- `get_growth_rate(name_or_id)` - get the speed in which a Pokemon gain levels through experience.
- `get_item(name_or_id)` - get an object in the games which the player can pick up, keep in their bag, and use in some manner.
- `get_item_attribute(name_or_id)` - get the definition of particular aspects of items, e.g. "usable in battle" or "consumable".
- `get_item_category(name_or_id)` - get which categories determine where items will be placed in the players bag.
- `get_item_fling_effect(name_or_id)` - get the various effects of the move "Fling" when used with different items.
- `get_item_pocket(name_or_id)` - get the bag pocket used for storing items by category.
- `get_language(name_or_id)` - get the languages for translations of API resource information.
- `get_location(name_or_id)` - get the locations that can be visited within the games. They make up sizable portions of regions, like cities or routes.
- `get_location_area(name_or_id)` - get the sections of areas, such as floors in a building or cave. Each area has its own set of possible Pokémon encounters.
- `get_machine(id)` - get the items that teach moves to Pokemon. They vary from version to version, so it is not certain that one specific TM or HM corresponds to a single Machine.
- `get_move(name_or_id)` - get the skills of Pokémon in battle. In battle, a Pokémon uses one move each turn. Some moves (including those learned by Hidden Machine) can be used outside of battle as well, usually for the purpose of removing obstacles or exploring new areas.
- `get_move_ailment(name_or_id)` - get the status conditions which are caused by moves used during battle.
- `get_move_battle_style(name_or_id)` - get the styles of moves when used in the Battle Palace.
- `get_move_category(name_or_id)` - get the very general categories that loosely group move effects.
- `get_move_damage_class(name_or_id)` - get the damage classes moves can have, e.g. physical, special, or non-damaging.
- `get_move_learn_method(name_or_id)` - get the methods by which Pokemon can learn moves.
- `get_move_target(name_or_id)` - get the targets which moves can be directed at during battle. Targets can be Pokemon, environments or even other moves.
- `get_nature(name_or_id)` - get the influence on how a Pokemon's stats grow.

To see more info on what they return, please refer to [PokeDotClient.gd](https://github.com/UbeJelly/PokeDot/blob/master/PokeDotClient.gd) or [PokéApi](https://pokeapi.co/).

> [!NOTE]  
> Launch Godot with an external terminal to print all output.

By default, the `get_pokemon_pagination()` is called when main scene runs and it displays the following:
```JSONC
API URL: https://pokeapi.co/api/v2/pokemon/?limit=20&offset=1
PokeDotClient() status: OK // some codes to check if everything's OK
HTTP request code: RESULT_SUCCESS
HTTP response code: RESPONSE_OK

[ // headers
  "Date: Fri, 10 Apr 2026 16:36:37 GMT",
  "Content-Type: application/json; charset=utf-8",
  "Transfer-Encoding: chunked",
  "Connection: keep-alive",
  "Access-Control-Allow-Origin: *",
  "Cache-Control: public, max-age=86400, s-maxage=86400",
  // ...
]

{ // data
  "count": 1350,
  "next": "https://pokeapi.co/api/v2/pokemon/?offset=21&limit=20",
  "previous": "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=1",
  "results": [
    // ...
    {
      "name": "charmander",
      "url": "https://pokeapi.co/api/v2/pokemon/4/"
    },
    {
      "name": "charmeleon",
      "url": "https://pokeapi.co/api/v2/pokemon/5/"
    },
    {
      "name": "charizard",
      "url": "https://pokeapi.co/api/v2/pokemon/6/"
    },
    // ...
  ]
}
```