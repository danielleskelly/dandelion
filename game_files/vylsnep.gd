extends Node2D

var enemy_nodes

var current_baddie
var who

var current_char
var current_char_def

var attack

func _ready():
	global.current_world = "res://vylsnep.tscn"
	OS.set_window_maximized(true)
	get_node("character").global_position = Vector2(543,327)
	get_node("desert_fight").hide()
	get_node("desert_fight/character_text_box_border/text_box_inside/attack_parent").hide()


	enemy_nodes = get_tree().get_nodes_in_group("enemy")
	for x in enemy_nodes:
		#randomly choose an enemy from global.enemies array
		var enemy = global.enemy_90 #randomly chosen enemy
		x.enemy_id = enemy.id
		x.get_child(0).texture = enemy.image
	set_physics_process(true)
		
func _physics_process(delta):
	if global.primary_selected == "queenie":
		current_char = global.queenie
		current_char_def = global.queenie_equipped
	elif global.primary_selected == "haecian":
		current_char = global.haecian
		current_char_def = global.haecian_equipped
	elif global.primary_selected == "elleinad":
		current_char = global.elleinad
		current_char_def = global.elleinad_equipped
	elif global.primary_selected == "leachim":
		current_char = global.leachim
		current_char_def = global.leachim_equipped


func enemy_attack(id,where_from):
	who = where_from
	for e in global.enemies:
		if e.id == id:
			current_baddie = e
	
	#set up world
	get_tree().paused = true
	get_node("desert_fight").show()
	var camera = get_tree().get_nodes_in_group("camera")
	for x in camera:
		x.zoom = Vector2(1,1)
	
	#set up enemy
	get_node("desert_fight/enemy").texture = current_baddie.image
	get_node("desert_fight/enemy_hp_white").rect_size.x = current_baddie.hp_max
	get_node("desert_fight/enemy_hp_color").rect_size.x = current_baddie.hp_current
	get_node("desert_fight/enemy_text_box_border/enemy_name").text = current_baddie.name
	
	#determine first attack
	randomize()
	if current_baddie.speed == current_char.speed:
		var coin_flip = [true, false]
		var coin = coin_flip[randi() % coin_flip.size()]
		if coin == true:
			character_attack()
		if coin == false:
			enemy_engage()
	elif current_baddie.speed > current_char.speed:
		enemy_engage()
	elif current_baddie.speed < current_char.speed:
		character_attack()
		
func enemy_engage():
	var attack
	if current_baddie.id == 90:
		#check accuracy
		var char_defense = current_char.defense + current_char_def.shield.defense + current_char_def.armor.defense
		var dice_roll = floor(rand_range(1,20))*current_baddie.dexterity
		if 10 <= dice_roll:
			var attack_list = ["teeth","bite","kick","punch"]
			var attack_type = attack_list[randi() % attack_list.size()]
			if attack_type == "teeth":
				attack = 0
				#lower character defense and then change it back to normal after the fight
				get_node("desert_fight/enemy_text_box_border/action").text = "He flashes his teeth in a terrifying taunt! Your defense is lower."
			elif attack_type == "bite":
				attack = (floor(rand_range(1,5))*current_baddie.strength) - char_defense
				get_node("desert_fight/enemy_text_box_border/action").text = "He uses his scary teeth to bite you! It stings and it left a little mark!"
			elif attack_type == "kick":
				attack = (floor(rand_range(1,10))*current_baddie.strength) - char_defense
				get_node("desert_fight/enemy_text_box_border/action").text = "He kicks you in the shin and you are left hopping around."
			elif attack_type == "punch":
				attack = (floor(rand_range(1,15))*current_baddie.strength) - char_defense
				get_node("desert_fight/enemy_text_box_border/action").text = "He releases a flurry of tiny little punches and it really hurts!"
				
		
			if attack > 0:
				current_char.current_hp -= attack
				global.character_death()
				get_node("desert_fight/character_bars/health_color/damage").text = str(attack)
				get_node("desert_fight/character_bars/health_color/damage").show()
			else:
				get_node("desert_fight/enemy_text_box_border/action").text = "He delivers his attack but it does no damage!"
			get_node("desert_fight/enemy_text_box_border/action").show()
			get_node("enemy_attack_timer").start()
		else:
			get_node("desert_fight/enemy_text_box_border/action").text = "He tries to attack but misses!"
			get_node("desert_fight/enemy_text_box_border/action").show()
			get_node("enemy_attack_timer").start()
		
		
func character_attack():
	get_node("desert_fight/character_text_box_border/text_box_inside/attack_parent").show()
	
	
func character_engage(num):
	if current_char.attacks[num].id == 0:
		#queenly magic
		pass
	elif current_char.attacks[num].id == 1:
		pass
		#basic magic
	elif current_char.attacks[num].id == 2:
		var dice_roll = floor(rand_range(1,20))*current_char.dexterity
		if 10 <= dice_roll:
			attack = floor(rand_range(1,20))*(current_char.strength + current_char_def.weapon.strength) - current_baddie.defense
			print(attack)
			get_node("desert_fight/enemy_text_box_border/action").text = "He flashes his teeth in a terrifying taunt! Your defense is lower."
 
			if attack > 0:
				current_char.current_hp -= attack
				global.character_death()
				get_node("desert_fight/character_bars/health_color/damage").text = str(attack)
				get_node("desert_fight/character_bars/health_color/damage").show()
			else:
				get_node("desert_fight/enemy_text_box_border/action").text = "He delivers his attack but it does no damage!"
			get_node("desert_fight/enemy_text_box_border/action").show()
			get_node("enemy_attack_timer").start()
		else:
			get_node("desert_fight/enemy_text_box_border/action").text = "He tries to attack but misses!"
			get_node("desert_fight/enemy_text_box_border/action").show()
			get_node("enemy_attack_timer").start()
	elif current_char.attacks[num].id == 3:
		pass
		#block
	elif current_char.attacks[num].id == 4:
		pass
		#item
	
	elif current_char.attacks[num].id == 5:
		if current_char.luck * floor(rand_range(1,20)) > 30:
			#remove character from fight but enemy stays alive
			pass
			
	elif current_char.attacks[num].id == 6:
		pass
		#switch char
	
	
func _on_enemy_attack_timer_timeout():
	get_node("desert_fight/enemy_text_box_border/action").hide()
	get_node("desert_fight/character_bars/health_color/damage").hide()
	character_attack()
