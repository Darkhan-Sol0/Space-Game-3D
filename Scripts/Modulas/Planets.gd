extends Resource
class_name Planets_resource

@export var planet_name : String
@export var orbit_radiouse : float
@export var planet_radiouse : float
@export var planet_time_year : float
@export var planet_day_time : float
@export var planet_material : StandardMaterial3D = StandardMaterial3D.new()
var planet_model : CSGSphere3D = CSGSphere3D.new()


