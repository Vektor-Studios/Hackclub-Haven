extends Sprite2D

func attack():
	show()
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2(20, 20), 0.2)
