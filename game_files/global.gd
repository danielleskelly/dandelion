extends Node

var current_world

#attacks
var queenly_magic = {"name":"Queenly Magic", "id":0}
var basic_magic = {"name":"Basic Magic", "id":1}
var weapon_attack = {"name":"Weapon Attack", "id":2}
var block = {"name":"Block", "id":3}
var item = {"name":"Item", "id":4}
var run = {"name":"Run", "id":5}
var switch_char = {"name":"Switch", "id":6}


var queenie_attacks = [queenly_magic, basic_magic, weapon_attack, block, item, switch_char, run]
#var haecian_attacks = [big_stick, extra_weapon, basic_magic, weapon_attack, block, item, switch_char, run]
#var elleinad_attacks = [perfect_shot, arrow_frenzy, basic_magic, weapon_attack, block, item, switch_char, run]
#var leachim_attacks = [colorful_tailwhip, cure, basic_magic, weapon_attack, block, item, switch_char, run]

#world
var year = 6
var year_save

var boss_island = false
var boss_island_save


#characters
var queenie = {"name":"Queenie","current_hp":50, "full_hp":50, "current_magic":20, "full_magic":20, "level":5, "strength":4, "speed":2, "dexterity":3, "defense":5, "luck":3, "experience":0, "job":"none", "image":load("res://Untitled 1.png"), "attacks":queenie_attacks}
var queenie_save
var haecian = {"name":"Haecian","current_hp":50, "full_hp":50, "current_magic":20, "full_magic":20, "level":5, "strength":4, "speed":2, "dexterity":3, "defense":5, "luck":3, "experience":0, "job":"fighter", "image":load("res://Untitled 1.png")}
var haecian_save
var elleinad = {"name":"Elleinad","current_hp":50, "full_hp":50, "current_magic":20, "full_magic":20, "level":5, "strength":4, "speed":2, "dexterity":3, "defense":5, "luck":3,"experience":0, "job":"archer", "image":load("res://Untitled 1.png")}
var elleinad_save
var leachim = {"name":"Leachim","current_hp":50, "full_hp":50, "current_magic":20, "full_magic":20, "level":5, "strength":4, "speed":2, "dexterity":3, "defense":5, "luck":3, "experience":0, "job":"mage", "image":load("res://Untitled 1.png")}
var leachim_save

#enemies
var enemy_90 = {"id":90, "name":"Tiny Demon of Fear", "hp_max":20, "hp_current":20, "speed":2, "dexterity":2, "strength":2, "defense":2, "image":load("res://Untitled 3.png")}

var enemies = [enemy_90]

#equipment
var leather_armor = {"name":"Leather Armor", "job":"all", "strength":0, "speed":0, "dexterity":0, "defense":1, "image":load("res://Untitled 4.png"), "type":"armor"}
var rusty_shield = {"name":"Rusty Shield", "job":"all", "strength":0, "speed":0, "dexterity":0, "defense":1, "image":load("res://Untitled 5.png"), "type":"shield"}
var bendy_sword = {"name":"Bendy Sword", "job":"all", "strength":2, "speed":0, "dexterity":0, "defense":0, "image":load("res://Untitled 6.png"), "type":"weapon"}

var equipment = [leather_armor, rusty_shield, bendy_sword]
var equipment_save

var queenie_equipped = {"armor":leather_armor,"shield":rusty_shield,"weapon":bendy_sword}
var queenie_equipped_save

var haecian_equipped = {"armor":leather_armor,"shield":rusty_shield,"weapon":bendy_sword}
var haecian_equipped_save

var elleinad_equipped = {"armor":leather_armor,"shield":rusty_shield,"weapon":bendy_sword}
var elleinad_equipped_save

var leachim_equipped = {"armor":leather_armor,"shield":rusty_shield,"weapon":bendy_sword}
var leachim_equipped_save

#who's up front
var primary_selected = "queenie"


func _ready():
	#move all this loading to the ready spot of the load screen (when it exists) instead of here in global
	if queenie_save == null:
		pass
	else:
		for x in queenie_save:
			queenie[x] = queenie_save[x]
			
	if haecian_save == null:
		pass
	else:
		for x in haecian_save:
			haecian[x] = haecian_save[x]
			
	if elleinad_save == null:
		pass
	else:
		for x in elleinad_save:
			elleinad[x] = elleinad_save[x]
			
	if queenie_save == null:
		pass
	else:
		for x in leachim_save:
			leachim[x] = leachim_save[x]
		
		
	if year_save == null:
		pass
	else:
		year = year_save
	if boss_island_save == null:
		pass
	else:
		boss_island = boss_island_save
		
	if equipment_save == null:
		pass
	else:
		equipment = equipment_save
	if queenie_equipped_save == null:
		pass
	else:
		for x in queenie_equipped:
			queenie_equipped[x] = queenie_equipped_save[x]
			
func character_death():
	if primary_selected == "queenie":
		if queenie.current_hp <= 0:
			var reset = get_tree().get_nodes_in_group("camera")
			for x in reset:
				x.zoom = Vector2(.1,.1)
			get_tree().change_scene(current_world)
			reset = get_tree().get_nodes_in_group("fight")
			for x in reset:
				x.hide()
			get_tree().paused = false
			global.queenie.current_hp = global.queenie.full_hp
	elif primary_selected == "haecian":
		if haecian.current_hp <= 0:
			var reset = get_tree().get_nodes_in_group("camera")
			for x in reset:
				x.zoom = Vector2(.1,.1)
			get_tree().change_scene(current_world)
			reset = get_tree().get_nodes_in_group("fight")
			for x in reset:
				x.hide()
			get_tree().paused = false
			global.haecian.current_hp = global.haecian.full_hp
	elif primary_selected == "elleinad":
		if elleinad.current_hp <= 0:
			var reset = get_tree().get_nodes_in_group("camera")
			for x in reset:
				x.zoom = Vector2(.1,.1)
			get_tree().change_scene(current_world)
			reset = get_tree().get_nodes_in_group("fight")
			for x in reset:
				x.hide()
			get_tree().paused = false
			global.elleinad.current_hp = global.elleinad.full_hp
	elif primary_selected == "leachim":
		if leachim.current_hp <= 0:
			var reset = get_tree().get_nodes_in_group("camera")
			for x in reset:
				x.zoom = Vector2(.1,.1)
			get_tree().change_scene(current_world)
			reset = get_tree().get_nodes_in_group("fight")
			for x in reset:
				x.hide()
			get_tree().paused = false
			global.leachim.current_hp = global.leachim.full_hp