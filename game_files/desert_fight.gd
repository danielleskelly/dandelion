extends Node2D

var current_char

func _ready():
	get_node("enemy_text_box_border/action").hide()
	get_node("enemy_hp_color/damage").hide()
	get_node("character_bars/health_color/damage").hide()
	get_node("character_bars/magic_color/spent").hide()
	
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
	get_node("character_bars/health_white").rect_size.x = current_char.full_hp
	get_node("character_bars/health_color").rect_size.x = current_char.current_hp
	get_node("character_bars/magic_white").rect_size.x = current_char.full_magic
	get_node("character_bars/magic_color").rect_size.x = current_char.current_magic
	var attack_nodes = get_node("character_text_box_border/text_box_inside/attack_parent").get_children()
	
	var i = 0
	for x in attack_nodes:
		if i >= current_char.attacks.size():
			x.hide()
		else:
			x.text = current_char.attacks[i].name
		i += 1

func _on_attack1_pressed():
	var num = 0
	get_parent().character_engage(num)


func _on_attack2_pressed():
	var num = 1
	get_parent().character_engage(num)

func _on_attack3_pressed():
	var num = 2
	get_parent().character_engage(num)


func _on_attack4_pressed():
	var num = 3
	get_parent().character_engage(num)


func _on_attack5_pressed():
	var num = 4
	get_parent().character_engage(num)


func _on_attack6_pressed():
	var num = 5
	get_parent().character_engage(num)


func _on_attack7_pressed():
	var num = 6
	get_parent().character_engage(num)


func _on_attack8_pressed():
	var num = 7
	get_parent().character_engage(num)


func _on_attack9_pressed():
	var num = 8
	get_parent().character_engage(num)
