extends RigidBody3D
@export var SpeedX:float
@export var SpeedY:float
var scaler = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	scale.y = scaler
	scaler-=0.0005
	add_constant_force(Vector3(SpeedX*0.001, SpeedY*0.001, 0))
	
