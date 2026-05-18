class_name Machine extends Node


@export var data: Dictionary = {
	"id": 0,
	"item": {
		"name": "",
		"url": ""
	},
	"move": {
		"name": "",
		"url": ""
	},
	"version_group": {
		"name": "",
		"url": ""
	}
}


func set_data(id: int = 0, item: Dictionary = {}, move: Dictionary = {}, version_group: Dictionary = {}) -> void:
	data = {
		"id": id,
		"item": item,
		"move": move,
		"version_group": version_group
	}


func get_data() -> Dictionary:
	return data
