class_name Machine extends Node


export var data: Dictionary = {
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


func set_data(_id: int = 0, _item: Dictionary = {}, _move: Dictionary = {}, _version_group: Dictionary = {}) -> void:
	data = {
		"id": _id,
		"item": _item,
		"move": _move,
		"version_group": _version_group
	}


func get_data() -> Dictionary:
	return data
