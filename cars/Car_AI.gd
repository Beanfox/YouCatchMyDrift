extends PathFollow

var runSpeed = 0

func _process(delta):
	set_offset(get_offset() + runSpeed * delta)
	if Input.is_action_just_pressed("ResetAI"):
		set_offset(0)
