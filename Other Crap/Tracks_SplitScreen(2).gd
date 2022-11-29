extends Spatial

var Laps_1 = 1
var Laps_2 = 1

func _process(delta):
	$Label.text = str(Laps_1)
	$Label2.text = str(Laps_2)

func _on_Area_1_area_entered(area):
	Laps_1 += 1
	$LapComplete.play()
	if Laps_1 >= 4:
		get_tree().change_scene("res://Menu_Scenes/Menu.tscn")


func _on_Area_2_area_entered(area):
	Laps_2 += 1
	$LapComplete.play()
	if Laps_2 >= 4:
		get_tree().change_scene("res://Menu_Scenes/Menu.tscn")

func _ready():
	$Music.play()
	$Countdown_1.visible = true
	$Countdown_2.visible = false
	$Countdown_3.visible = false

func _on_StartTimer_1_timeout():
	$Countdown_1.visible = false
	$Countdown_2.visible = true
	$Countdown_3.visible = false
	$StartTimer_2.start()


func _on_StartTimer_2_timeout():
	$Countdown_1.visible = false
	$Countdown_2.visible = false
	$Countdown_3.visible = true
	$StartTimer_3.start()


func _on_StartTimer_3_timeout():
	$Countdown_1.visible = false
	$Countdown_2.visible = false
	$Countdown_3.visible = false
	$Control/HBoxContainer/ViewportContainer2/Viewport/CarSUV_2.acceleration = 65
	$Control/HBoxContainer/ViewportContainer/Viewport/CarSUV.acceleration = 65
