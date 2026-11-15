extends Sprite2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.current_food == $"../../CanvasLayer/Player/SpeechBubble".item_id:
		body.current_food = null
		body.reload_sprite()
		$"../../CanvasLayer/Player/SpeechBubble".new_id()
	elif body.current_food != null:
		$"../../CanvasLayer/Player/TreeAngy".attack()


func _on_timer_timeout() -> void:
	pass # Replace with function body.
