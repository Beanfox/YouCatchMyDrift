extends Spatial

var Laps = 1

#func get_path_direction(position):
	#var offset = $track_2/Path.curve.get_closest_offset(position)
	#$track_2/Path/PathFollow.offset = offset
	#return $track_2/Path/PathFollow.transform.basis.z

#func _ready():
	#print($track_2["transform"])

func _process(delta):
	$Label.text = str(Laps)

func _on_StartTimer_timeout():
	$Music.play()
	$CarSUV.acceleration = 65
	$Path/PathFollow.runSpeed = 28


func _on_Area_1_area_entered(area):
	$LapComplete.play()
	Laps += 1
	if Laps >= 4:
		get_tree().change_scene("res://Menu_Scenes/Menu.tscn")
