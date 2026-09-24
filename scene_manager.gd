extends Node

# @export var scenes: Array[PackedScene] = []

var current_scene: Node = null

@onready var root: Node = get_tree().root

signal scene_changed

func _ready():
	current_scene = root.get_child(root.get_child_count() - 1)
	get_tree().scene_changed.connect(scene_changed.emit)
	scene_changed.connect(func(): current_scene = get_tree().current_scene)

func change_scene(new_scene: PackedScene):
	# if not scenes.has(new_scene_name):
	# 	printerr("change_scene: Scene not found")
	# 	return
	
	get_tree().change_scene_to_packed(new_scene)

# func get_scene_by_name(scene_name: String) -> PackedScene: return scenes[scenes.find(func(scene): scene.name == scene_name)]