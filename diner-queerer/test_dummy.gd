extends RigidBody3D
@export var TargetWallHit:int
@export var WallHit:int
signal WallCrush
# Called when the node enters the scene tree for the first time.
func _ready():
	WallHit = 0 # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	if body.is_in_group("walls"):
		print("hit")
		WallHit += 1
		Wall_check()

func _on_body_exited(body):
	if body.is_in_group("walls"):
		print("unhit")
		WallHit -= 1

func Wall_check():
	if WallHit >= TargetWallHit:
		print("hit it")
		WallCrush.emit()
