extends Node2D

@export var item_id : int

func _ready() -> void:
	set_sprite()

func set_sprite():
	if item_id != null:
		$Sprite.texture = check_food().get_sprite_path()

func check_food():
	if item_id != null:
		return FoodItems.food_item_array[item_id]
