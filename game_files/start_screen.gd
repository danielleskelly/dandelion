extends Node2D


func _ready():
	OS.set_window_maximized(true)

func _on_new_game_button_up():
	get_tree().change_scene("res://full_map.tscn")
	#get_tree().change_scene("res://.tscn") first cut scene

func _on_load_game_button_up():
	#get_tree().change_scene("res://.tscn") select file screen
	pass
