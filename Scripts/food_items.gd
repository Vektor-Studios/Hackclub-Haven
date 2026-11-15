extends Node

var food_item_array = [Pasta.new(),Head.new()]


class Food:
	var name = "Food"
	var sprite_path = "res://Sprites/icon.svg"
	
	func _to_string() -> String:
		return name
	
	func get_sprite_path() -> Resource:
		return load(sprite_path)

class Pasta extends Food:
	func _init() -> void:
		name = "Pasta"
		sprite_path = "res://Sprites/pasta_sprite.png"
	
class Head extends Food:
	func _init() -> void:
		name = "Severed Head"
