extends Node

func _ready():
	Engine.max_fps = Engine.physics_ticks_per_second

func _input(_event):
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	if Input.is_action_just_pressed("esc"):
		get_tree().quit()
