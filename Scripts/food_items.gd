extends Node

var food_item_array = [Burger.new(),Pasta.new()]


class Food:
	var name = "Food"
	var sprite_path = "res://Sprites/icon.svg"
	
	func _to_string() -> String:
		return name
	
	func _get_sprite_path() -> String:
		return sprite_path

class Burger extends Food:
	func _init() -> void:
		name = "Burger"

class Pasta extends Food:
	func _init() -> void:
		name = "Pasta"
