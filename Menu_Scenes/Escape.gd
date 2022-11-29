extends Node

func _process(delta):
	if Input.is_action_just_pressed("Leave"):
		get_tree().change_scene("res://Menu_Scenes/Menu.tscn")
