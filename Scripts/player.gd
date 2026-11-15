extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var current_food = null

func _ready() -> void:
	current_food = 0
	print(check_food())
	$FoodSprite.texture = check_food().get_sprite_path()

func check_food():
	if current_food != null:
		return FoodItems.food_item_array[current_food]

func _physics_process(_delta: float) -> void:
	
	var direction := Vector2(Input.get_axis("left", "right"),Input.get_axis("up", "down"))
	if direction:
		velocity = direction * SPEED
	else:
		velocity = Vector2.ZERO

	move_and_slide()
