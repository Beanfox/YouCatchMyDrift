extends Node2D

func _ready():
	$LoadLabel.visible = false
	$FoggyForest/FoggyForest_Confirm.visible = false
	$SnowyMountain/SnowyMountain_Confirm.visible = false

func _on_FoggyForest_pressed():
	$Ding.play()
	$FoggyForest/FoggyForest_Confirm.visible = true
	$SnowyMountain/SnowyMountain_Confirm.visible = false

func _on_FoggyForest_Confirm_pressed():
	$Ding.play()
	$LoadLabel.visible = true
	$FoggyForest/FoggyForest_Loading.start()

func _on_FoggyForest_Loading_timeout():
	get_tree().change_scene("res://Tracks/SplitScreen/ForestTrack_SplitScreen.tscn")




func _on_MonkeyMountain_pressed():
	$Ding.play()
	$SnowyMountain/SnowyMountain_Confirm.visible = true
	$FoggyForest/FoggyForest_Confirm.visible = false

func _on_MonkeyMountain_Confirm_pressed():
	$Ding.play()
	$LoadLabel.visible = true
	$SnowyMountain/SnowyMountain_Loading.start()

func _on_MonkeyMountain_Loading_timeout():
	get_tree().change_scene("res://Tracks/SplitScreen/SnowyMountain_SplitScreen.tscn")
