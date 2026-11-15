extends Sprite2D

func attack():
	show()
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2(12, 12), 0.2)
