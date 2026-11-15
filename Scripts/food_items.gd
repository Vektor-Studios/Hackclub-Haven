extends Node

var food_item_array = [Pasta.new(),Head.new()
,HotDog.new(),GrassBlock.new(), BloodSmoothie.new(),
]


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
		sprite_path = "res://Sprites/human_head_sprite.png"
		
class HotDog extends Food:
	func _init() -> void:
		name = "Hot Dog"
		sprite_path = "res://Sprites/hot_dog_sprite.png"

class GrassBlock extends Food:
	func _init() -> void:
		name = "Grass Clump"
		sprite_path = "res://Sprites/grass_block_sprite.png"

class BloodSmoothie extends Food:
	func _init() -> void:
		name = "Blood Smoothie"
		sprite_path = "res://Sprites/blood_smoothie_sprite.png"
