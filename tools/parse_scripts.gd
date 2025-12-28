extends SceneTree

var scripts = [
    "res://scripts/player.gd",
    "res://scripts/dialog_manager.gd",
    "res://scripts/battle.gd",
]

func _ready() -> void:
    var out = ""
    for s in scripts:
        var exists = ResourceLoader.exists(s)
        var line = s + " exists: " + str(exists)
        print(line)
        out += line + "\n"
        if exists:
            var res = load(s)
            var line2 = " - load returned: " + str(res)
            print(line2)
            out += line2 + "\n"
            if res == null:
                var line3 = " - FAILED to load: " + s
                print(line3)
                out += line3 + "\n"
    # write to file for debugging
    var file = FileAccess.open("tools/parse_scripts.log", FileAccess.ModeFlags.WRITE)
    if file:
        file.store_string(out)
        file.close()
    quit()
