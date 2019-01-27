extends KinematicBody2D

var current_char

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	if global.primary_selected == "queenie":
		current_char = global.queenie
	elif global.primary_selected == "haecian":
		current_char = global.haecian
	elif global.primary_selected == "elleinad":
		current_char = global.elleinad
	elif global.primary_selected == "leachim":
		current_char = global.leachim
		
	get_node("image").texture = current_char.image
		
	#set magic and health bars to the correct length
	get_node("Camera2D/health_white").rect_size.x = current_char.full_hp
	get_node("Camera2D/health_color").rect_size.x = current_char.current_hp
	get_node("Camera2D/magic_white").rect_size.x = current_char.full_magic
	get_node("Camera2D/magic_color").rect_size.x = current_char.current_magic
	
	
	
	#movement
	if Input.is_action_pressed("ui_up"):
		self.move_and_slide(Vector2(0,-50))
	elif Input.is_action_pressed("ui_down"):
		self.move_and_slide(Vector2(0,50))
	elif Input.is_action_pressed("ui_left"):
		self.move_and_slide(Vector2(-50,0))
	elif Input.is_action_pressed("ui_right"):
		self.move_and_slide(Vector2(50,0))


func _on_options_pressed():
	get_tree().paused = true
	var option_screen = get_tree().get_nodes_in_group("options")
	for x in option_screen:
		x.show()
	var camera = get_tree().get_nodes_in_group("camera")
	for x in camera:
		x.zoom = Vector2(1,1)