extends Node3D
class_name Planets_Script

#---Onredy Nodes---
@export var planet_resource : Planets_resource

var speed : float

var model

func _ready():
	model = planet_resource.planet_model
	model.radius = planet_resource.planet_radiouse
	model.radial_segments = 100
	model.rings = 100
	model.material = planet_resource.planet_material
	
	position = owner.global_position + Vector3(0, 0, planet_resource.orbit_radiouse)
	
	add_child(model)
	
	speed = 2 * PI * planet_resource.orbit_radiouse / planet_resource.planet_time_year

func _physics_process(delta):
	
	look_at(owner.position)
	
	model.rotation.y += 2 * PI / planet_resource.planet_day_time * delta
	
	var d = (transform.basis * Vector3(1, 0, 0)).normalized()
	position.x += d.x * speed * delta
	position.z += d.z * speed * delta









