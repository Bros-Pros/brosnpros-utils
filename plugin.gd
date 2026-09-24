@tool
extends EditorPlugin

const ROOT_PATH: String = "res://addons/brosnpros-utils"
const COMMON_PATH: String = ROOT_PATH + "/common"

const SCENE_MANAGER: String = "SceneManager"

func _enable_plugin() -> void:
	add_autoload_singleton( SCENE_MANAGER, "%s/scene_manager.gd" % ROOT_PATH)

func _disable_plugin() -> void:
	remove_autoload_singleton( SCENE_MANAGER)