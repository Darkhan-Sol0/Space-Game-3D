extends Node3D
class_name Star_Script

@export var star_resource : Stars_resource

var model

func _ready():
	model = star_resource.star_model
	model.radius = star_resource.star_radious
	model.radial_segments = 100
	model.rings = 100
	model.material = star_resource.star_material
	
	add_child(model)
