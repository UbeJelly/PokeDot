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