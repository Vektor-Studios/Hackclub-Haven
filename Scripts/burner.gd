extends Node2D

var fire = 0

func _ready() -> void:
	fire = 120
	$FireTimer.start()

func _process(_delta: float) -> void:
	$Label.text = "Time: " + str(fire) + "s"


func _on_fire_timer_timeout() -> void:
	fire -= 1
	$FireTimer.start()


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Collision")
	if body.current_food == 5:
		print("Fire Fed")
		fire = 120
		body.current_food = null
		body.reload_sprite()
