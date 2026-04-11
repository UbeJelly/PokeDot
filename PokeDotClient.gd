class_name PokeDotClient extends HTTPRequest


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
	PokeDotClient("https://pokeapi.co/api/v2/", "%s/?limit=%s&offset=%s" % [endpoint, limit, offset])
	return pokemon_pagination.get_data()


func get_ability(name_or_id) -> Dictionary:
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "ability/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "ability/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_ability(<name_or_id>), <name_or_id> must be an int or String type.")
	return ability.get_data()


func get_berry(name_or_id) -> Dictionary:
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "berry/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "berry/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_berry(<name_or_id>), <name_or_id> must be an int or String type.")
	return berry.get_data()


func get_berry_flavor(name_or_id) -> Dictionary:
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "berry-flavor/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "berry-flavor/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_berry_flavor(<name_or_id>), <name_or_id> must be an int or String type.")
	return berry_flavor.get_data()


func get_berry_firmness(name_or_id) -> Dictionary:
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "berry-firmness/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "berry-firmness/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_berry_firmness(<name_or_id>), <name_or_id> must be an int or String type.")
	return berry_firmness.get_data()


func get_characteristic(id:int = 0) -> Dictionary:
	PokeDotClient("https://pokeapi.co/api/v2/", "characteristic/%s/" % str(id))
	return characteristic.get_data()


func get_contest_effect(id:int = 0) -> Dictionary:
	PokeDotClient("https://pokeapi.co/api/v2/", "contest-effect/%s/" % str(id))
	return contest_effect.get_data()


func get_contest_type(name_or_id) -> Dictionary:
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "contest-type/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "contest-type/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_contest_type(<name_or_id>), <name_or_id> must be an int or String type.")
	return contest_type.get_data()


func get_egg_group(name_or_id) -> Dictionary:
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "egg-group/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "egg-group/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_egg_group(<name_or_id>), <name_or_id> must be an int or String type.")
	return egg_group.get_data()


func get_encounter_condition(name_or_id) -> Dictionary:
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "encounter-condition/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "encounter-condition/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_encounter_condition(<name_or_id>), <name_or_id> must be an int or String type.")
	return encounter_condition.get_data()


func get_encounter_condition_value(name_or_id) -> Dictionary:
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "encounter-condition-value/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "encounter-condition-value/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_encounter_condition_value(<name_or_id>), <name_or_id> must be an int or String type.")
	return encounter_condition_value.get_data()


func get_encounter_method(name_or_id) -> Dictionary:
	match typeof(name_or_id):
		TYPE_STRING:
			PokeDotClient("https://pokeapi.co/api/v2/", "encounter-method/%s/" % name_or_id)
		TYPE_INT:
			PokeDotClient("https://pokeapi.co/api/v2/", "encounter-method/%s/" % str(name_or_id))
		_:
			printerr("ERROR: get_encounter_method(<name_or_id>), <name_or_id> must be an int or String type.")
	return encounter_method.get_data()


func _on_request_completed(result, response_code, headers, body) -> void:
	var data: Dictionary = _parse_JSON(body)
	print("HTTP request code: %s" % _get_result(result))
	print("HTTP response code: %s\n" % _get_response(response_code))
	print("%s\n" % JSON.print(headers, "  "))
	#print(JSON.print(data, "  "))

	# Check data size first so nothing would duplicate keys, which if not checked
	# it can then invalidate values depending on the class being used.
	match data.size():
		4:
			# Pokemon pagination
			if "count" and "next" and "previous" and "results" in data.keys():
				if not data.get("results").empty() and "name" and "url" in data.get("results")[0]:
					pokemon_pagination.set_data(
						data.get("count"),
						data.get("next"),
						data.get("previous"),
						data.get("results")
					)
					print(JSON.print(pokemon_pagination.get_data(), "  "))

			if "id" and "name" and "names" in data.keys():
				# Berry firmness
				if "berries" in data.keys():
					berry_firmness.set_data(
						data.get("id"),
						data.get("name"),
						data.get("berries"),
						data.get("names")
					)
					print(JSON.print(berry_firmness.get_data(), "  "))

				# Contest type
				if "berry_flavor" in data.keys():
					contest_type.set_data(
						data.get("id"),
						data.get("name"),
						data.get("berry_flavor"),
						data.get("names")
					)
					print(JSON.print(contest_type.get_data(), "  "))

				# Egg group
				if "pokemon_species" in data.keys():
					egg_group.set_data(
						data.get("id"),
						data.get("name"),
						data.get("names"),
						data.get("pokemon_species")
					)
					print(JSON.print(egg_group.get_data(), "  "))

				# Encounter condition
				if "values" in data.keys():
					encounter_condition.set_data(
						data.get("id"),
						data.get("name"),
						data.get("values"),
						data.get("names")
					)
					print(JSON.print(encounter_condition.get_data(), "  "))

				# Encounter condition value
				if "condition" in data.keys():
					encounter_condition_value.set_data(
						data.get("id"),
						data.get("name"),
						data.get("condition"),
						data.get("names")
					)
					print(JSON.print(encounter_condition_value.get_data(), "  "))
				
				# Encounter method
				if "order" in data.keys():
					encounter_method.set_data(
						data.get("id"),
						data.get("name"),
						data.get("order"),
						data.get("names")
					)
					print(JSON.print(encounter_method.get_data(), "  "))

		5:
			# Berry flavor
			if "id" and "name" and "berries" and "contest_type" and "names" in data.keys():
				berry_flavor.set_data(
					data.get("id"),
					data.get("name"),
					data.get("berries"),
					data.get("contest_type"),
					data.get("names")
				)
				print(JSON.print(berry_flavor.get_data(), "  "))

			# Characteristic
			if "id" and "gene_modulo" and "possible_values" and "highest_stat" and "descriptions" in data.keys():
				characteristic.set_data(
					data.get("id"),
					data.get("gene_modulo"),
					data.get("possible_values"),
					data.get("highest_stat"),
					data.get("descriptions")
				)
				print(JSON.print(characteristic.get_data(), "  "))

			# Contest effect
			if "id" and "appeal" and "jam" and "effect_entries" and "flavor_text_entries" in data.keys():
				contest_effect.set_data(
					data.get("id"),
					data.get("appeal"),
					data.get("jam"),
					data.get("effect_entries"),
					data.get("flavor_text_entries")
				)
				print(JSON.print(contest_effect.get_data(), "  "))

		9:
			# Ability
			if "id" and "name" and "is_main_series" and "generation" and "names" and "effect_entries" and "effect_changes" and "flavor_text_entries" and "pokemon" in data.keys():
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

		12:
			# Berry
			if "id" and "name" and "growth_time" and "max_harvest" and "natural_gift_power" and "size" and "smoothness" and "soil_dryness" and "firmness" and "flavors" and "item" and "natural_gift_type" in data.keys():
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
