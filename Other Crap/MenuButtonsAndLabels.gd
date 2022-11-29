extends Node2D

func _ready():
	$LoadLabel.visible = false
	$HowtoplayLabel.visible = false

func _on_Quit_pressed():
	get_tree().quit()



func _on_Sandbox_pressed():
	$Ding.play()
	$SandBox.start()
	$LoadLabel.visible = true

func _on_Splitscreen_pressed():
	$Ding.play()
	$SplitScreen.start()
	$LoadLabel.visible = true



func _on_SplitScreen_timeout():
	get_tree().change_scene("res://Menu_Scenes/Splitscreen_Menu.tscn")

func _on_SandBox_timeout():
	get_tree().change_scene("res://Menu_Scenes/SandBox_Menu.tscn")


func _on_HowToPlay_pressed():
	$Ding.play()
	$HowtoplayLabel.visible = true
