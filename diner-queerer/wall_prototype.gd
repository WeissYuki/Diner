extends RigidBody3D
@export var SpeedX:float
@export var SpeedY:float
@export var StartSizeX:float
@export var StartSizeY:float
@export var scalerX:float
@export var scalerY:float

# Called when the node enters the scene tree for the first time.
func _ready():
	$CollisionShape3D.shape.size.x = StartSizeX
	$MeshInstance3D.mesh.size.x = StartSizeX 
	$CollisionShape3D.shape.size.y = StartSizeY
	$MeshInstance3D.mesh.size.y = StartSizeY 


func _physics_process(delta):
	$CollisionShape3D.shape.size.y -= scalerY
	$MeshInstance3D.mesh.size.y -= scalerY
	add_constant_force(Vector3(SpeedX*0.001, SpeedY*0.001, 0))
	
