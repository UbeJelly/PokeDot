class_name Location extends Node


export var data: Dictionary = {
	"id": 0,
	"name": "",
	"region": {
		"name": "",
		"url": ""
	},
	"names": [
		{
			"name": "",
			"language": {
				"name": "",
				"url": ""
			}
		}
	],
	"game_indices": [
		{
			"game_index": 0,
			"generation": {
				"name": "",
				"url": ""
			}
		}
	],
	"areas": [
		{
			"name": "",
			"url": ""
		}
	]
}


func set_data(_id: int = 0, _name: String = "", _region: Dictionary = {}, _names: Array = [], _game_indices: Array = [], _areas: Array = []) -> void:
	data = {
		"id": _id,
		"name": _name,
		"region": _region,
		"names": _names,
		"game_indices": _game_indices,
		"areas": _areas
	}


func get_data() -> Dictionary:
	return data
