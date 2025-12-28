extends SceneTree

var scripts = [
    "res://scripts/player.gd",
    "res://scripts/dialog_manager.gd",
    "res://scripts/battle.gd",
]

func _ready() -> void:
    for s in scripts:
        var exists = ResourceLoader.exists(s)
        print(s + " exists: " + str(exists))
        if exists:
            var res = load(s)
            print(" - load returned: " + str(res))
            if res == null:
                print(" - FAILED to load: " + s)
    quit()
