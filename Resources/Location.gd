class_name Location extends Node


@export var data: Dictionary = {
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


func set_data(id: int = 0, _name: String = "", region: Dictionary = {}, names: Array = [], game_indices: Array = [], areas: Array = []) -> void:
	data = {
		"id": id,
		"name": _name,
		"region": region,
		"names": names,
		"game_indices": game_indices,
		"areas": areas
	}


func get_data() -> Dictionary:
	return data
