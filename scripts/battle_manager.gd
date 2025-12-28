extends Node

var battle_scene = preload("res://scenes/Battle.tscn")
var battle_active: bool = false

func start_battle() -> void:
    if battle_active:
        return
    battle_active = true
    # disable player physics to prevent movement during battle
    var player := get_node("Player")
    if player:
        player.set_physics_process(false)
    var battle := battle_scene.instantiate()
    add_child(battle)
    # connect to end signal
    battle.connect("battle_end", Callable(self, "_on_battle_end"))

func _on_battle_end(win: bool) -> void:
    battle_active = false
    # re-enable player
    var player := get_node("Player")
    if player:
        player.set_physics_process(true)
    # optionally show a dialog outcome
    var dm := get_node_or_null("DialogManager")
    if dm:
        if win:
            dm.show_dialog(["戦闘に勝利した！"])
        else:
            dm.show_dialog(["戦闘が終わった。"])
