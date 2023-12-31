extends Node3D
class_name Star_Script

@export var star_resource : Stars_resource

var model
var light

func _ready():
	model = star_resource.star_model
	model.radius = star_resource.star_radious
	model.radial_segments = 100
	model.rings = 100
	model.material = star_resource.star_material
	
	add_child(model)
	
	light = OmniLight3D.new()
	light.light_energy = 10
	light.omni_range = 1000
	light.light_size = star_resource.star_radious
	light.shadow_enabled = true
	
	add_child(light)
	
	for i in star_resource.planets:
		var planet = preload("res://Scripts/Objects/Planet_Script.gd").new()
		planet.planet_resource = i
		self.add_child(planet)

func _physics_process(delta):
	model.rotation.y += 2 * PI / star_resource.day_time * delta
