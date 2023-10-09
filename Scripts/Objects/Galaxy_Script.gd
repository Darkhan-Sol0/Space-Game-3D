extends Node
class_name Galaxy_Script

@export var galaxy_resource : Galaxy_resource

func _ready():
	for i in galaxy_resource.stars:
		var star = preload("res://Scripts/Objects/Star_Script.gd").new()
		star.star_resource = i
		self.add_child(star)
