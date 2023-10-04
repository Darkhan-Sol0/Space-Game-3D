extends Resource
class_name Stars_resource

@export var star_name : String
@export var star_radious : float
@export var planets : Array[Planets_resource]
@export var star_material : StandardMaterial3D = StandardMaterial3D.new()
var star_model : CSGSphere3D = CSGSphere3D.new()







