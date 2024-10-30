extends Camera3D

# Called when the node enters the scene tree for the first time.
func _ready():
	var dummy = $"../TestDummy"
	dummy.WallCrush.connect(_on_wall_crush)# Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_wall_crush():
	$AnimationPlayer.play("Camera_close")

func _on_animation_player_animation_finished(anim_name):
	if anim_name == "Camera_close": 
		$".".current = false
		$"../TestDummy/CameraFPS".current = true # Replace with function body.
