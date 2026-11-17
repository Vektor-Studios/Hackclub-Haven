extends Sprite2D

var rng = RandomNumberGenerator.new()

var current_loc = 0

func _ready() -> void:
	new_pos()

func new_pos():
	var old_loc = current_loc
	while old_loc == current_loc:
		current_loc = rng.randi_range(1,3)
	match current_loc:
		1: $"..".position = $"../../Locations/Node2D".global_position
		2: $"..".position = $"../../Locations/Node2D2".global_position
		3: $"..".position = $"../../Locations/Node2D3".global_position

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.current_food == $"../../CanvasLayer/Player/SpeechBubble".item_id:
		body.current_food = null
		body.reload_sprite()
		$"../../CanvasLayer/Player/SpeechBubble".new_id()
		new_pos()
	elif body.current_food != null:
		$"../../CanvasLayer/Player/TreeAngy".attack()


func _on_timer_timeout() -> void:
	pass # Replace with function body.
