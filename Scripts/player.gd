extends CharacterBody2D

@onready var anim = $AnimatedSprite2D

const SPEED = 500.0
var current_food = null

func _ready() -> void:
	current_food = 1
	print(check_food())
	$FoodSprite.texture = check_food().get_sprite_path()

func check_food():
	if current_food != null:
		return FoodItems.food_item_array[current_food]

func reload_sprite():
	$FoodSprite.texture = check_food().get_sprite_path()

func _physics_process(_delta: float) -> void:
	
	var direction := Vector2(Input.get_axis("left", "right"),Input.get_axis("up", "down"))
	
	direction = direction.normalized()
	
	if direction:
		velocity = direction * SPEED
	else:
		velocity = Vector2.ZERO

	if direction == Vector2.ZERO:
		anim.play("idle")
	else:
		anim.play("walk")
		
	if direction < Vector2.ZERO:
		anim.flip_h = true
	elif direction > Vector2.ZERO:
		anim.flip_h = false
	move_and_slide()
