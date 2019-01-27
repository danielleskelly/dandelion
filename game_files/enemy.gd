extends Node2D

var enemy_id


func _on_enemy_body_entered(body):
	get_parent().enemy_attack(enemy_id, self)