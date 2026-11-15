extends Node2D

@export var item_id : int

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	item_id = rng.randi_range(0,len(FoodItems.food_item_array)-1)
	set_sprite()

func set_sprite():
	if item_id != null:
		$FoodSprite.texture = check_food().get_sprite_path()

func check_food():
	if item_id != null:
		return FoodItems.food_item_array[item_id]
