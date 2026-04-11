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
- `get_berry(name_or_id)` - gets a berry metadata. `name_or_id` can be the `string` name or `int` id of ability.

To see more info refer to [PokéApi](https://pokeapi.co/).

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
    {
      "name": "ivysaur",
      "url": "https://pokeapi.co/api/v2/pokemon/2/"
    },
    {
      "name": "venusaur",
      "url": "https://pokeapi.co/api/v2/pokemon/3/"
    },
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
    {
      "name": "squirtle",
      "url": "https://pokeapi.co/api/v2/pokemon/7/"
    },
    {
      "name": "wartortle",
      "url": "https://pokeapi.co/api/v2/pokemon/8/"
    },
    {
      "name": "blastoise",
      "url": "https://pokeapi.co/api/v2/pokemon/9/"
    },
    // ...
  ]
}
```