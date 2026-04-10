# PokeDot

Simple [PokéApi](https://pokeapi.co/) wrapper via Godot.

# Usage
Currently supports `pokemon` endpoint that displays 1st page of 20 Pokemons.

```JSONC
{
  "count": 1350,
  "next": "https://pokeapi.co/api/v2/pokemon/?offset=20&limit=20",
  "previous": null,
  "results": [
    {
      "name": "bulbasaur",
      "url": "https://pokeapi.co/api/v2/pokemon/1/"
    },
    {
      "name": "ivysaur",
      "url": "https://pokeapi.co/api/v2/pokemon/2/"
    },
    {
      "name": "venusaur",
      "url": "https://pokeapi.co/api/v2/pokemon/3/"
    },
    // ...
  ]
}
```

Running the main scene should look something like this:
```JSONC
API URL: https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0
PokeDotClient() status: 1 (0:ERROR, 1:OK) // some status codes to see if everything's OK
HTTP request success. Error code: RESULT_SUCCESS
HTTP response code: RESPONSE_OK
[ // headers
  "Date: Fri, 10 Apr 2026 12:45:56 GMT",
  "Content-Type: application/json; charset=utf-8",
  "Transfer-Encoding: chunked",
  "Connection: keep-alive",
  "Access-Control-Allow-Origin: *",
  "cache-control: public, max-age=86400, s-maxage=86400",
  // ...
]
{ // body
  "count": 1350,
  "next": "https://pokeapi.co/api/v2/pokemon/?offset=20&limit=20",
  "previous": null,
  "results": [
    {
      "name": "bulbasaur",
      "url": "https://pokeapi.co/api/v2/pokemon/1/"
    },
    {
      "name": "ivysaur",
      "url": "https://pokeapi.co/api/v2/pokemon/2/"
    },
    {
      "name": "venusaur",
      "url": "https://pokeapi.co/api/v2/pokemon/3/"
    },
    // ...
  ]
}
```

Run them with terminal so there are no limits with print out.