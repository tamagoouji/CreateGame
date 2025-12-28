extends SceneTree

func _ready() -> void:
    var path = ProjectSettings.globalize_path("user://")
    print("user:// => " + path)
    quit()