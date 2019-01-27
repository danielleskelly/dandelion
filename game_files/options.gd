extends Node2D

var content
var current

var temp_equipment

var temp_object
var temp_character

func _ready():
	content = get_tree().get_nodes_in_group("content")
	for x in content:
		x.hide()
	#get nodes in items and show them
	get_node("highlight").rect_position.y =  118
	set_process(true)

func _process(delta):
	
	if global.primary_selected == "queenie":
		get_node("status/primary_selection/queenie").hide()
		get_node("status/primary_selection/haecian").show()
		get_node("status/primary_selection/elleinad").show()
		get_node("status/primary_selection/leachim").show()
	elif global.primary_selected == "haecian":
		get_node("status/primary_selection/queenie").show()
		get_node("status/primary_selection/haecian").hide()
		get_node("status/primary_selection/elleinad").show()
		get_node("status/primary_selection/leachim").show()
	elif global.primary_selected == "elleinad":
		get_node("status/primary_selection/queenie").show()
		get_node("status/primary_selection/haecian").show()
		get_node("status/primary_selection/elleinad").hide()
		get_node("status/primary_selection/leachim").show()
	elif global.primary_selected == "leachim":
		get_node("status/primary_selection/queenie").show()
		get_node("status/primary_selection/haecian").show()
		get_node("status/primary_selection/elleinad").show()
		get_node("status/primary_selection/leachim").hide()
	
	get_node("status/queenie_background/current_hp").text = str(global.queenie.current_hp)
	get_node("status/queenie_background/full_hp").text = str(global.queenie.full_hp)
	get_node("status/queenie_background/current_mp").text = str(global.queenie.current_magic)
	get_node("status/queenie_background/full_mp").text = str(global.queenie.full_magic)
	get_node("status/queenie_background/current_strength").text = str(global.queenie.strength)
	get_node("status/queenie_background/current_speed").text = str(global.queenie.speed)
	get_node("status/queenie_background/current_dexterity").text = str(global.queenie.dexterity)
	get_node("status/queenie_background/current_defense").text = str(global.queenie.defense)
	get_node("status/queenie_background/current_level").text = str(global.queenie.level)
	get_node("status/queenie_background/current_experience").text = str(global.queenie.experience)
	get_node("status/queenie_background/current_next_level").text = str(0) #subtract next level from current experience for all characters
	get_node("status/queenie_background/current_job").text = str(global.queenie.job)
	
	get_node("status/haecian_background/current_hp").text = str(global.haecian.current_hp)
	get_node("status/haecian_background/full_hp").text = str(global.haecian.full_hp)
	get_node("status/haecian_background/current_mp").text = str(global.haecian.current_magic)
	get_node("status/haecian_background/full_mp").text = str(global.haecian.full_magic)
	get_node("status/haecian_background/current_strength").text = str(global.haecian.strength)
	get_node("status/haecian_background/current_speed").text = str(global.haecian.speed)
	get_node("status/haecian_background/current_dexterity").text = str(global.haecian.dexterity)
	get_node("status/haecian_background/current_defense").text = str(global.haecian.defense)
	get_node("status/haecian_background/current_level").text = str(global.haecian.level)
	get_node("status/haecian_background/current_experience").text = str(global.haecian.experience)
	get_node("status/haecian_background/current_next_level").text = str(0)
	#get_node("status/haecian_background/current_job").text = str(global.job)
	
	get_node("status/elleinad_background/current_hp").text = str(global.elleinad.current_hp)
	get_node("status/elleinad_background/full_hp").text = str(global.elleinad.full_hp)
	get_node("status/elleinad_background/current_mp").text = str(global.elleinad.current_magic)
	get_node("status/elleinad_background/full_mp").text = str(global.elleinad.full_magic)
	get_node("status/elleinad_background/current_strength").text = str(global.elleinad.strength)
	get_node("status/elleinad_background/current_speed").text = str(global.elleinad.speed)
	get_node("status/elleinad_background/current_dexterity").text = str(global.elleinad.dexterity)
	get_node("status/elleinad_background/current_defense").text = str(global.elleinad.defense)
	get_node("status/elleinad_background/current_level").text = str(global.elleinad.level)
	get_node("status/elleinad_background/current_experience").text = str(global.elleinad.experience)
	get_node("status/elleinad_background/current_next_level").text = str(0)
	#get_node("status/elleinad_background/current_job").text = str(global.job)
	
	get_node("status/leachim_background/current_hp").text = str(global.leachim.current_hp)
	get_node("status/leachim_background/full_hp").text = str(global.leachim.full_hp)
	get_node("status/leachim_background/current_mp").text = str(global.leachim.current_magic)
	get_node("status/leachim_background/full_mp").text = str(global.leachim.full_magic)
	get_node("status/leachim_background/current_strength").text = str(global.leachim.strength)
	get_node("status/leachim_background/current_speed").text = str(global.leachim.speed)
	get_node("status/leachim_background/current_dexterity").text = str(global.leachim.dexterity)
	get_node("status/leachim_background/current_defense").text = str(global.leachim.defense)
	get_node("status/leachim_background/current_level").text = str(global.leachim.level)
	get_node("status/leachim_background/current_experience").text = str(global.leachim.experience)
	get_node("status/leachim_background/current_next_level").text = str(0)
	#get_node("status/leachim_background/current_job").text = str(global.job)

func _on_status_button_pressed():
	for x in content:
		x.hide()
	var current = get_tree().get_nodes_in_group("status")
	for x in current:
		x.show()
	get_node("highlight").rect_position.y =  270


func _on_equipment_button_pressed():
	for x in content:
		x.hide()
	var current = get_tree().get_nodes_in_group("equipment")
	for x in current:
		x.show()
	get_node("equipment/specific_background").hide()
	queenie_equipment_selected()
	
	
func queenie_equipment_selected():
	get_node("highlight").rect_position.y =  219
	get_node("equipment/button_highlight").rect_position.y = 186
	get_node("equipment/character_job").text = global.queenie.job
	get_node("equipment/character_image").texture = global.queenie.image
	temp_equipment = []
	for x in global.equipment:
		if x.job == "all" or x.job == global.queenie.job:
			temp_equipment.append(x)
	var equipment_list = get_node("equipment/full_inventory/scroll_bar/inventory_parent").get_children()
	var i = 0
	for x in equipment_list:
		if i >= temp_equipment.size():
			x.hide()
		else:
			x.text = temp_equipment[i].name
		i += 1
	if global.queenie_equipped.armor == null:
		get_node("equipment/equipped/armor").hide()
	else:
		get_node("equipment/equipped/armor").texture = global.queenie_equipped.armor.image
		get_node("equipment/equipped/armor").show()
	if global.queenie_equipped.shield == null:
		get_node("equipment/equipped/shield").hide()
	else:
		get_node("equipment/equipped/shield").texture = global.queenie_equipped.shield.image
		get_node("equipment/equipped/shield").show()
	if global.queenie_equipped.weapon == null:
		get_node("equipment/equipped/weapon").hide()
	else:
		get_node("equipment/equipped/weapon").texture = global.queenie_equipped.weapon.image
		get_node("equipment/equipped/weapon").show()
	get_node("equipment/specific_background").hide()
	temp_character = global.queenie

func _on_queenie_equipment_button_pressed():
	queenie_equipment_selected()


func _on_haecian_equipment_button_pressed():
	get_node("equipment/button_highlight").rect_position.y = 243
	get_node("equipment/character_job").text = global.haecian.job
	get_node("equipment/character_image").texture = global.queenie_image
	temp_equipment = []
	for x in global.equipment:
		if x.job == "all" or x.job == global.haecian.job:
			temp_equipment.append(x)
	var equipment_list = get_node("equipment/full_inventory/scroll_bar/inventory_parent").get_children()
	var i = 0
	for x in equipment_list:
		if i >= temp_equipment.size():
			x.hide()
		else:
			x.text = temp_equipment[i].name
		i += 1
	if global.haecian_equipped.armor == null:
		get_node("equipment/equipped/armor").hide()
	else:
		get_node("equipment/equipped/armor").texture = global.haecian_equipped.armor.image
		get_node("equipment/equipped/armor").show()
	if global.haecian_equipped.shield == null:
		get_node("equipment/equipped/shield").hide()
	else:
		get_node("equipment/equipped/shield").texture = global.haecian_equipped.shield.image
		get_node("equipment/equipped/shield").show()
	if global.haecian_equipped.weapon == null:
		get_node("equipment/equipped/weapon").hide()
	else:
		get_node("equipment/equipped/weapon").texture = global.haecian_equipped.weapon.image
		get_node("equipment/equipped/weapon").show()
	get_node("equipment/specific_background").hide()
	temp_character = global.haecian


func _on_elleinad_equipment_button_pressed():
	get_node("equipment/button_highlight").rect_position.y = 300
	get_node("equipment/character_job").text = global.elleinad.job
	get_node("equipment/character_image").texture = global.queenie_image
	temp_equipment = []
	for x in global.equipment:
		if x.job == "all" or x.job == global.elleinad.job:
			temp_equipment.append(x)
	var equipment_list = get_node("equipment/full_inventory/scroll_bar/inventory_parent").get_children()
	var i = 0
	for x in equipment_list:
		if i >= temp_equipment.size():
			x.hide()
		else:
			x.text = temp_equipment[i].name
		i += 1
	if global.elleinad_equipped.armor == null:
		get_node("equipment/equipped/armor").hide()
	else:
		get_node("equipment/equipped/armor").texture = global.elleinad_equipped.armor.image
		get_node("equipment/equipped/armor").show()
	if global.elleinad_equipped.shield == null:
		get_node("equipment/equipped/shield").hide()
	else:
		get_node("equipment/equipped/shield").texture = global.elleinad_equipped.shield.image
		get_node("equipment/equipped/shield").show()
	if global.elleinad_equipped.weapon == null:
		get_node("equipment/equipped/weapon").hide()
	else:
		get_node("equipment/equipped/weapon").texture = global.elleinad_equipped.weapon.image
		get_node("equipment/equipped/weapon").show()
	get_node("equipment/specific_background").hide()
	temp_character = global.elleinad


func _on_leachim_equipment_button_pressed():
	get_node("equipment/button_highlight").rect_position.y = 355
	get_node("equipment/character_job").text = global.leachim.job
	get_node("equipment/character_image").texture = global.queenie_image
	temp_equipment = []
	for x in global.equipment:
		if x.job == "all" or x.job == global.leachim.job:
			temp_equipment.append(x)
	var equipment_list = get_node("equipment/full_inventory/scroll_bar/inventory_parent").get_children()
	var i = 0
	for x in equipment_list:
		if i >= temp_equipment.size():
			x.hide()
		else:
			x.text = temp_equipment[i].name
		i += 1
	if global.leachim_equipped.armor == null:
		get_node("equipment/equipped/armor").hide()
	else:
		get_node("equipment/equipped/armor").texture = global.leachim_equipped.armor.image
		get_node("equipment/equipped/armor").show()
	if global.leachim_equipped.shield == null:
		get_node("equipment/equipped/shield").hide()
	else:
		get_node("equipment/equipped/shield").texture = global.leachim_equipped.shield.image
		get_node("equipment/equipped/shield").show()
	if global.leachim_equipped.weapon == null:
		get_node("equipment/equipped/weapon").hide()
	else:
		get_node("equipment/equipped/weapon").texture = global.leachim_equipped.weapon.image
		get_node("equipment/equipped/weapon").show()
	get_node("equipment/specific_background").hide()
	temp_character = global.leachim


func inventory_object_clicked(num):
	get_node("equipment/specific_background").show()
	get_node("equipment/specific_background/HBoxContainer/name").text = temp_equipment[num].name
	get_node("equipment/specific_background/HBoxContainer/image").texture = temp_equipment[num].image
	get_node("equipment/specific_background/GridContainer/strength").text = str(temp_equipment[num].strength)
	get_node("equipment/specific_background/GridContainer/speed").text = str(temp_equipment[num].speed)
	get_node("equipment/specific_background/GridContainer/dexterity").text = str(temp_equipment[num].dexterity)
	get_node("equipment/specific_background/GridContainer/defense").text = str(temp_equipment[num].defense)
	get_node("equipment/specific_background/GridContainer/type").text = str(temp_equipment[num].type)
	temp_object = temp_equipment[num]

func _on_0_pressed():
	var num = 0
	inventory_object_clicked(num)


func _on_1_pressed():
	var num = 1
	inventory_object_clicked(num)


func _on_2_pressed():
	var num = 2
	inventory_object_clicked(num)


func _on_3_pressed():
	var num = 3
	inventory_object_clicked(num)


func _on_4_pressed():
	var num = 4
	inventory_object_clicked(num)

func _on_5_pressed():
	var num = 5
	inventory_object_clicked(num)


func _on_6_pressed():
	var num = 6
	inventory_object_clicked(num)


func _on_7_pressed():
	var num = 7
	inventory_object_clicked(num)

func _on_8_pressed():
	var num = 8
	inventory_object_clicked(num)

func _on_9_pressed():
	var num = 9
	inventory_object_clicked(num)

func _on_10_pressed():
	var num = 10
	inventory_object_clicked(num)


func _on_11_pressed():
	var num = 11
	inventory_object_clicked(num)


func _on_12_pressed():
	var num = 12
	inventory_object_clicked(num)


func _on_13_pressed():
	var num = 13
	inventory_object_clicked(num)


func _on_14_pressed():
	var num = 14
	inventory_object_clicked(num)

func _on_15_pressed():
	var num = 15
	inventory_object_clicked(num)


func _on_16_pressed():
	var num = 16
	inventory_object_clicked(num)


func _on_17_pressed():
	var num = 17
	inventory_object_clicked(num)


func _on_18_pressed():
	var num = 18
	inventory_object_clicked(num)


func _on_19_pressed():
	var num = 19
	inventory_object_clicked(num)


func _on_20_pressed():
	var num = 20
	inventory_object_clicked(num)


func _on_21_pressed():
	var num = 21
	inventory_object_clicked(num)


func _on_22_pressed():
	var num = 22
	inventory_object_clicked(num)


func _on_23_pressed():
	var num = 23
	inventory_object_clicked(num)

func _on_24_pressed():
	var num = 24
	inventory_object_clicked(num)


func _on_25_pressed():
	var num = 25
	inventory_object_clicked(num)

func _on_26_pressed():
	var num = 26
	inventory_object_clicked(num)


func _on_27_pressed():
	var num = 27
	inventory_object_clicked(num)


func _on_28_pressed():
	var num = 28
	inventory_object_clicked(num)

func _on_29_pressed():
	var num = 29
	inventory_object_clicked(num)

func _on_30_pressed():
	var num = 30
	inventory_object_clicked(num)


func _on_31_pressed():
	var num = 31
	inventory_object_clicked(num)


func _on_32_pressed():
	var num = 32
	inventory_object_clicked(num)


func _on_33_pressed():
	var num = 33
	inventory_object_clicked(num)


func _on_34_pressed():
	var num = 34
	inventory_object_clicked(num)


func _on_35_pressed():
	var num = 35
	inventory_object_clicked(num)


func _on_36_pressed():
	var num = 36
	inventory_object_clicked(num)


func _on_37_pressed():
	var num = 37
	inventory_object_clicked(num)


func _on_38_pressed():
	var num = 38
	inventory_object_clicked(num)


func _on_39_pressed():
	var num = 39
	inventory_object_clicked(num)


func _on_40_pressed():
	var num = 40
	inventory_object_clicked(num)


func _on_41_pressed():
	var num = 41
	inventory_object_clicked(num)


func _on_42_pressed():
	var num = 42
	inventory_object_clicked(num)


func _on_43_pressed():
	var num = 43
	inventory_object_clicked(num)


func _on_44_pressed():
	var num = 44
	inventory_object_clicked(num)


func _on_45_pressed():
	var num = 45
	inventory_object_clicked(num)


func _on_46_pressed():
	var num = 46
	inventory_object_clicked(num)


func _on_47_pressed():
	var num = 47
	inventory_object_clicked(num)


func _on_48_pressed():
	var num = 48
	inventory_object_clicked(num)


func _on_49_pressed():
	var num = 49
	inventory_object_clicked(num)


func _on_50_pressed():
	var num = 50
	inventory_object_clicked(num)


func _on_51_pressed():
	var num = 51
	inventory_object_clicked(num)


func _on_52_pressed():
	var num = 52
	inventory_object_clicked(num)

func _on_53_pressed():
	var num = 53
	inventory_object_clicked(num)

func _on_54_pressed():
	var num = 54
	inventory_object_clicked(num)


func _on_55_pressed():
	var num = 55
	inventory_object_clicked(num)


func _on_56_pressed():
	var num = 56
	inventory_object_clicked(num)


func _on_57_pressed():
	var num = 57
	inventory_object_clicked(num)


func _on_58_pressed():
	var num = 58
	inventory_object_clicked(num)


func _on_59_pressed():
	var num = 59
	inventory_object_clicked(num)


func _on_60_pressed():
	var num = 60
	inventory_object_clicked(num)


func _on_61_pressed():
	var num = 61
	inventory_object_clicked(num)


func _on_62_pressed():
	var num = 62
	inventory_object_clicked(num)


func _on_63_pressed():
	var num = 63
	inventory_object_clicked(num)


func _on_64_pressed():
	var num = 64
	inventory_object_clicked(num)


func _on_65_pressed():
	var num = 65
	inventory_object_clicked(num)


func _on_66_pressed():
	var num = 66
	inventory_object_clicked(num)


func _on_67_pressed():
	var num = 67
	inventory_object_clicked(num)


func _on_68_pressed():
	var num = 68
	inventory_object_clicked(num)


func _on_69_pressed():
	var num = 69
	inventory_object_clicked(num)


func _on_70_pressed():
	var num = 70
	inventory_object_clicked(num)


func _on_71_pressed():
	var num = 71
	inventory_object_clicked(num)


func _on_72_pressed():
	var num = 72
	inventory_object_clicked(num)


func _on_73_pressed():
	var num = 73
	inventory_object_clicked(num)


func _on_74_pressed():
	var num = 74
	inventory_object_clicked(num)


func _on_equip_button_down():
	var char_equipped = str(temp_character) + "_equipped"
	if temp_object.type == "armor":
		if temp_character == global.queenie:
			global.queenie_equipped.armor = temp_object
			_on_queenie_equipment_button_pressed()
		elif temp_character == global.haecian:
			global.haecian_equipped.armor = temp_object
			_on_haecian_equipment_button_pressed()
		elif temp_character == global.elleinad:
			global.elleinad_equipped.armor = temp_object
			_on_elleinad_equipment_button_pressed()
		elif temp_character == global.leachim:
			global.leachim_equipped.armor = temp_object
			_on_leachim_equipment_button_pressed()
	elif temp_object.type == "shield":
		if temp_character == global.queenie:
			global.queenie_equipped.shield = temp_object
			_on_queenie_equipment_button_pressed()
		elif temp_character == global.haecian:
			global.haecian_equipped.shield = temp_object
			_on_haecian_equipment_button_pressed()
		elif temp_character == global.elleinad:
			global.elleinad_equipped.shield = temp_object
			_on_elleinad_equipment_button_pressed()
		elif temp_character == global.leachim:
			global.leachim_equipped.shield = temp_object
			_on_leachim_equipment_button_pressed()
	elif temp_object.type == "weapon":
		if temp_character == global.queenie:
			global.queenie_equipped.weapon = temp_object
			_on_queenie_equipment_button_pressed()
		elif temp_character == global.haecian:
			global.haecian_equipped.weapon = temp_object
			_on_haecian_equipment_button_pressed()
		elif temp_character == global.elleinad:
			global.elleinad_equipped.weapon = temp_object
			_on_elleinad_equipment_button_pressed()
		elif temp_character == global.leachim:
			global.leachim_equipped.weapon = temp_object
			_on_leachim_equipment_button_pressed()


func _on_queenie_pressed():
	global.primary_selected = "queenie"


func _on_haecian_pressed():
	global.primary_selected = "haecian"


func _on_elleinad_pressed():
	global.primary_selected = "elleinad"


func _on_leachim_pressed():
	global.primary_selected = "leachim"


func _on_close_pressed():
	self.hide()
	get_tree().paused = false
	var camera = get_tree().get_nodes_in_group("camera")
	for x in camera:
		x.zoom = Vector2(.1,.1)
	
