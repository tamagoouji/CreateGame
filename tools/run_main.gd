extends SceneTree

func _dump_node(node: Node, indent: int = 0) -> String:
    var s = "".pad_left(indent * 2, " ") + node.name + " (" + str(node.get_class()) + ")\n"
    for child in node.get_children():
        s += _dump_node(child, indent + 1)
    return s

func _ready() -> void:
    var out = ""
    var res = ResourceLoader.load("res://scenes/Main.tscn")
    out += "Main scene resource: " + str(res) + "\n"
    print(out)
    if res == null:
        out += "Failed to load Main.tscn\n"
        var file = FileAccess.open("user://run_main.log", FileAccess.ModeFlags.WRITE)
        if file:
            file.store_string(out)
            file.close()
        quit()
    var inst = res.instantiate()
    out += "Instantiated: " + str(inst) + "\n"
    # dump children
    out += _dump_node(inst)
    # check for Player and its sprite
    var player = inst.get_node_or_null("Player")
    if player:
        out += "Found Player node: " + str(player) + "\n"
        var sprite = player.get_node_or_null("Sprite2D")
        if sprite:
            out += "Player.Sprite2D: visible=" + str(sprite.visible) + ", texture=" + str(sprite.texture) + "\n"
    else:
        out += "Player node not found in instantiated scene.\n"
    # write log
    var file = FileAccess.open("user://run_main.log", FileAccess.ModeFlags.WRITE)
    if file:
        file.store_string(out)
        file.close()
    print(out)
    quit()