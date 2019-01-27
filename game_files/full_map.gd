extends Node2D

func _ready():
	OS.set_window_maximized(true)
	get_node("character").global_position = Vector2(381.950439,163.02565)
	get_node("icon5").hide()

func _process(delta):
	if global.year == 0:
		get_node("icon").hide()
		get_node("icon2").hide()
		get_node("icon3").hide()
		get_node("icon4").hide()
		
	elif global.year == 1:
		get_node("icon").global_position = Vector2(get_node("hatu").rect_global_position.x + 15,get_node("hatu").rect_global_position.y)
		get_node("icon2").global_position = Vector2(get_node("sexat").rect_global_position.x + 15,get_node("sexat").rect_global_position.y)
		get_node("icon3").global_position = Vector2(get_node("sasnak").rect_global_position.x + 15,get_node("sasnak").rect_global_position.y)
		get_node("icon4").global_position = Vector2(get_node("aksala").rect_global_position.x + 15,get_node("aksala").rect_global_position.y)
		
	elif global.year == 2:
		get_node("icon").global_position = Vector2(get_node("yesre").rect_global_position.x + 15,get_node("yesre").rect_global_position.y)
		get_node("icon2").global_position = Vector2(get_node("nomrev").rect_global_position.x + 15,get_node("nomrev").rect_global_position.y)
		get_node("icon3").global_position = Vector2(get_node("kroy").rect_global_position.x + 15,get_node("kroy").rect_global_position.y)
		get_node("icon4").global_position = Vector2(get_node("aksarben").rect_global_position.x + 15,get_node("aksarben").rect_global_position.y)
		
	elif global.year == 3:
		get_node("icon").global_position = Vector2(get_node("aingri").rect_global_position.x + 15,get_node("aingri").rect_global_position.y)
		get_node("icon2").global_position = Vector2(get_node("ainrofila").rect_global_position.x + 15,get_node("ainrofila").rect_global_position.y)
		get_node("icon3").global_position = Vector2(get_node("atoka").rect_global_position.x + 15,get_node("atoka").rect_global_position.y)
		get_node("icon4").global_position = Vector2(get_node("not_gishaw").rect_global_position.x + 15,get_node("not_gishaw").rect_global_position.y)
	
	elif global.year == 4:
		get_node("icon").global_position = Vector2(get_node("anozira").rect_global_position.x + 15,get_node("anozira").rect_global_position.y)
		get_node("icon2").global_position = Vector2(get_node("ambala").rect_global_position.x + 15,get_node("ambala").rect_global_position.y)
		get_node("icon3").global_position = Vector2(get_node("ipissim").rect_global_position.x + 15,get_node("ipissim").rect_global_position.y)
		get_node("icon4").global_position = Vector2(get_node("anaisol").rect_global_position.x + 15,get_node("anaisol").rect_global_position.y)
	
	elif global.year == 5:
		get_node("icon").global_position = Vector2(get_node("kutne").rect_global_position.x + 15,get_node("kutne").rect_global_position.y)
		get_node("icon2").global_position = Vector2(get_node("anilarock").rect_global_position.x + 15,get_node("anilarock").rect_global_position.y)
		get_node("icon3").global_position = Vector2(get_node("adrifall").rect_global_position.x + 15,get_node("adrifall").rect_global_position.y)
		get_node("icon4").global_position = Vector2(get_node("nalyram").rect_global_position.x + 15,get_node("nalyram").rect_global_position.y)
	
	elif global.year == 6:
		get_node("icon").global_position = Vector2(get_node("liawah").rect_global_position.x + 15,get_node("liawah").rect_global_position.y)
		get_node("icon2").global_position = Vector2(get_node("atosen").rect_global_position.x + 15,get_node("atosen").rect_global_position.y)
		get_node("icon3").global_position = Vector2(get_node("vylsnep").rect_global_position.x + 15,get_node("vylsnep").rect_global_position.y)
		get_node("icon4").global_position = Vector2(get_node("odaroloc").rect_global_position.x + 15,get_node("odaroloc").rect_global_position.y)
	
	elif global.year == 7:
		get_node("icon").global_position = Vector2(get_node("awoi").rect_global_position.x + 15,get_node("awoi").rect_global_position.y)
		get_node("icon2").global_position = Vector2(get_node("enaim").rect_global_position.x + 15,get_node("enaim").rect_global_position.y)
		get_node("icon3").global_position = Vector2(get_node("essenet").rect_global_position.x + 15,get_node("essenet").rect_global_position.y)
		get_node("icon4").global_position = Vector2(get_node("erishmah").rect_global_position.x + 15,get_node("erishmah").rect_global_position.y)
	
	elif global.year == 8:
		get_node("icon").global_position = Vector2(get_node("nagicim").rect_global_position.x + 15,get_node("nagicim").rect_global_position.y)
		get_node("icon2").global_position = Vector2(get_node("stesucham").rect_global_position.x + 15,get_node("stesucham").rect_global_position.y)
		get_node("icon3").global_position = Vector2(get_node("edohr").rect_global_position.x + 15,get_node("edohr").rect_global_position.y)
		get_node("icon4").global_position = Vector2(get_node("adaven").rect_global_position.x + 15,get_node("adaven").rect_global_position.y)
	
	elif global.year == 9:
		get_node("icon").global_position = Vector2(get_node("gimoyw").rect_global_position.x + 15,get_node("gimoyw").rect_global_position.y)
		get_node("icon2").global_position = Vector2(get_node("anatom").rect_global_position.x + 15,get_node("anatom").rect_global_position.y)
		get_node("icon3").global_position = Vector2(get_node("tucit").rect_global_position.x + 15,get_node("tucit").rect_global_position.y)
		get_node("icon4").global_position = Vector2(get_node("nogero").rect_global_position.x + 15,get_node("nogero").rect_global_position.y)
		
	elif global.year == 10:
		get_node("icon").global_position = Vector2(get_node("iroussim").rect_global_position.x + 15,get_node("iroussim").rect_global_position.y)
		get_node("icon2").global_position = Vector2(get_node("iho").rect_global_position.x + 15,get_node("iho").rect_global_position.y)
		get_node("icon3").global_position = Vector2(get_node("amohalko").rect_global_position.x + 15,get_node("amohalko").rect_global_position.y)
		get_node("icon4").global_position = Vector2(get_node("sionilli").rect_global_position.x + 15,get_node("sionilli").rect_global_position.y)
	
	if global.boss_island == true:
		get_node("icon5").show()
		get_node("icon5").global_position = Vector2(get_node("erawalde").rect_global_position.x + 15,get_node("erawalde").rect_global_position.y)


func _on_aigroe_pressed():
	get_tree().change_scene("res://aigroe.tscn")


func _on_hatu_pressed():
	if global.year == 1:
		get_tree().change_scene("res://hatu.tscn")
		
		
func _on_sexat_pressed():
	if global.year == 1:
		get_tree().change_scene("res://sexat.tscn")


func _on_sasnak_pressed():
	if global.year == 1:
		get_tree().change_scene("res://sasnak.tscn")
		

func _on_aksala_pressed():
	if global.year == 1:
		get_tree().change_scene("res://aksala.tscn")


func _on_yesre_pressed():
	if global.year == 2:
		get_tree().change_scene("res://yesre.tscn")


func _on_nomrev_pressed():
	if global.year == 2:
		get_tree().change_scene("res://nomrev.tscn")


func _on_kroy_pressed():
	if global.year == 2:
		get_tree().change_scene("res://kroy.tscn")


func _on_aksarben_pressed():
	if global.year == 2:
		get_tree().change_scene("res://aksarben.tscn")


func _on_aingri_pressed():
	if global.year == 3:
		get_tree().change_scene("res://aingri.tscn")


func _on_ainrofila_pressed():
	if global.year == 3:
		get_tree().change_scene("res://ainrofila.tscn")

func _on_atoka_pressed():
	if global.year == 3:
		get_tree().change_scene("res://atoka.tscn")


func _on_not_gishaw_pressed():
	if global.year == 3:
		get_tree().change_scene("res://not_gishaw.tscn")


func _on_anozira_pressed():
	if global.year == 4:
		get_tree().change_scene("res://anozira.tscn")


func _on_ambala_pressed():
	if global.year == 4:
		get_tree().change_scene("res://ambala.tscn")


func _on_ipissim_pressed():
	if global.year == 4:
		get_tree().change_scene("res://ipissim.tscn")


func _on_anaisol_pressed():
	if global.year == 4:
		get_tree().change_scene("res://anaisol.tscn")


func _on_kutne_pressed():
	if global.year == 5:
		get_tree().change_scene("res://kutne.tscn")


func _on_anilarock_pressed():
	if global.year == 5:
		get_tree().change_scene("res://anilarock.tscn")


func _on_adrifall_pressed():
	if global.year == 5:
		get_tree().change_scene("res://adrifall.tscn")


func _on_nalyram_pressed():
	if global.year == 5:
		get_tree().change_scene("res://nalyram.tscn")


func _on_liawah_pressed():
	if global.year == 6:
		get_tree().change_scene("res://liawah.tscn")


func _on_atosen_pressed():
	if global.year == 6:
		get_tree().change_scene("res://atosen.tscn")


func _on_vylsnep_pressed():
	if global.year == 6:
		get_tree().change_scene("res://vylsnep.tscn")


func _on_odaroloc_pressed():
	if global.year == 6:
		get_tree().change_scene("res://odaroloc.tscn")


func _on_awoi_pressed():
	if global.year == 7:
		get_tree().change_scene("res://awoi.tscn")


func _on_enaim_pressed():
	if global.year == 7:
		get_tree().change_scene("res://enaim.tscn")


func _on_essenet_pressed():
	if global.year == 7:
		get_tree().change_scene("res://essenet.tscn")


func _on_erishmah_pressed():
	if global.year == 7:
		get_tree().change_scene("res://erishmah.tscn")


func _on_nagicim_pressed():
	if global.year == 8:
		get_tree().change_scene("res://nagicim.tscn")


func _on_stesucham_pressed():
	if global.year == 8:
		get_tree().change_scene("res://stesucham.tscn")


func _on_edohr_pressed():
	if global.year == 8:
		get_tree().change_scene("res://edohr.tscn")


func _on_adaven_pressed():
	if global.year == 8:
		get_tree().change_scene("res://adaven.tscn")


func _on_gimoyw_pressed():
	if global.year == 9:
		get_tree().change_scene("res://gimoyw.tscn")


func _on_anatom_pressed():
	if global.year == 9:
		get_tree().change_scene("res://anatom.tscn")


func _on_tucit_pressed():
	if global.year == 9:
		get_tree().change_scene("res://tucit.tscn")


func _on_nogero_pressed():
	if global.year == 9:
		get_tree().change_scene("res://nogero.tscn")


func _on_iroussim_pressed():
	if global.year == 10:
		get_tree().change_scene("res://iroussim.tscn")


func _on_iho_pressed():
	if global.year == 10:
		get_tree().change_scene("res://iho.tscn")


func _on_amohalko_pressed():
	if global.year == 10:
		get_tree().change_scene("res://amohalko.tscn")


func _on_sionilli_pressed():
	if global.year == 10:
		get_tree().change_scene("res://sionilli.tscn")


func _on_erawalde_pressed():
	if global.boss_island == true:
		get_tree().change_scene("res://erawalde.tscn")
