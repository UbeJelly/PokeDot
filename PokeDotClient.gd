class_name PokeDotClient extends HTTPRequest


onready var pokemon_pagination := PokemonPagination.new()


func _ready() -> void:
	# Default endpoint & query method
	get_pokemon_pagination("pokemon", 20, 1)


func PokeDotClient(BASE_URL: String = "https://pokeapi.co/api/v2/", endpoint: String = "") -> int:
	print("API URL: %s" % BASE_URL + endpoint)

	if not BASE_URL == "" or not endpoint == "":
		var request_status: int = request(
			BASE_URL + endpoint, PoolStringArray(
				["text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8"]
			), true, HTTPClient.METHOD_GET)

		print("PokeDotClient() status: OK")
		return 1

	print("PokeDotClient() status: ERROR")
	return 0


func get_pokemon_pagination(endpoint: String = "pokemon", limit: int = 20, offset: int = 1) -> Dictionary:
	PokeDotClient("https://pokeapi.co/api/v2/", "%s/?limit=%s&offset=%s" % [endpoint, limit, offset])
	return pokemon_pagination.get_data()


func _on_request_completed(result, response_code, headers, body) -> void:
	var data: Dictionary = _parse_JSON(body)

	print("HTTP request code: %s" % _get_result(result))
	print("HTTP response code: %s\n" % _get_response(response_code))
	print("%s\n" % JSON.print(headers, "  "))
	#print(JSON.print(data, "  "))

	# Check contents if its pagination
	if "count" and "next" and "previous" and "results" in data.keys():
		if not data.get("results").empty() and "name" and "url" in data.get("results")[0]:
			pokemon_pagination.set_data(
				data.get("count"),
				data.get("next"),
				data.get("previous"),
				data.get("results")
			)
			print(JSON.print(pokemon_pagination.get_data(), "  "))


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
