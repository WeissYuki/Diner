extends RigidBody3D
@export var SpeedX:float
@export var SpeedY:float
@export var StartSizeX:float
@export var StartSizeY:float
@export var scalerX:float
@export var scalerY:float

# Called when the node enters the scene tree for the first time.
func _ready():
	$CollisionShape3D.shape.size.x = self.StartSizeX
	$MeshInstance3D.mesh.size.x = self.StartSizeX 
	$CollisionShape3D.shape.size.y = self.StartSizeY
	$MeshInstance3D.mesh.size.y = self.StartSizeY 


func _physics_process(delta):
	$CollisionShape3D.shape.size.y -= scalerY
	$MeshInstance3D.mesh.size.y -= scalerY
	$CollisionShape3D.shape.size.x -= scalerX
	$MeshInstance3D.mesh.size.x -= scalerX
	add_constant_force(Vector3(SpeedX*0.001, SpeedY*0.001, 0))
	
