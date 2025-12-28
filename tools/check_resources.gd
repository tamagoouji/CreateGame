extends SceneTree

var files = [
    "res://scenes/Main.tscn",
    "res://scenes/Player.tscn",
    "res://scenes/NPC.tscn",
    "res://scenes/Battle.tscn",
    "res://scenes/DialogUI.tscn",
]

func _ready() -> void:
    var ok = true
    for f in files:
        var exists = ResourceLoader.exists(f)
        print(f + " exists: " + str(exists))
        if exists:
            var res = ResourceLoader.load(f)
            print(" - loaded: " + str(res))
            if res == null:
                ok = false
        else:
            ok = false
    if ok:
        print("All files loadable")
    else:
        print("Some files missing or failed to load")
    quit()
