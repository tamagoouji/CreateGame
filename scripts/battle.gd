extends Node2D

signal battle_end(win: bool)

var player_hp: int = 40
var player_max: int = 40
var player_attack: int = 10
var enemy_hp: int = 30
var enemy_max: int = 30
var enemy_attack: int = 6

var state: String = "player"
var menu_index: int = 0
var options: Array = ["Attack", "Heal", "Run"]

onready var msg_label := $UI/Panel/Label
onready var menu_label := $UI/Panel/MenuLabel

func _ready() -> void:
    update_ui()
    msg_label.text = "戦闘開始！"

func _input(event) -> void:
    if state != "player":
        return
    if event.is_action_pressed("ui_up"):
        menu_index = (menu_index - 1) % options.size()
        update_menu()
    elif event.is_action_pressed("ui_down"):
        menu_index = (menu_index + 1) % options.size()
        update_menu()
    elif event.is_action_pressed("ui_accept"):
        execute_choice()

func update_menu() -> void:
    var text := ""
    for i in range(options.size()):
        if i == menu_index:
            text += "> " + options[i] + "\n"
        else:
            text += "  " + options[i] + "\n"
    menu_label.text = text
    update_ui()

func update_ui() -> void:
    update_menu()
    # Show HP status in message for quick visibility
    msg_label.text = "プレイヤーHP: %d/%d  |  敵HP: %d/%d" % [player_hp, player_max, enemy_hp, enemy_max]

func execute_choice() -> void:
    var choice := options[menu_index]
    if choice == "Attack":
        enemy_hp -= player_attack
        msg_label.text = "プレイヤーの攻撃！%d のダメージ" % player_attack
        if enemy_hp <= 0:
            enemy_hp = 0
            update_ui()
            yield(get_tree().create_timer(0.6), "timeout")
            victory()
            return
        state = "enemy"
        update_ui()
        yield(get_tree().create_timer(0.6), "timeout")
        enemy_turn()
    elif choice == "Heal":
        var heal := 12
        player_hp = min(player_max, player_hp + heal)
        msg_label.text = "回復！%d 回復" % heal
        state = "enemy"
        update_ui()
        yield(get_tree().create_timer(0.6), "timeout")
        enemy_turn()
    elif choice == "Run":
        msg_label.text = "逃走に成功した！"
        yield(get_tree().create_timer(0.6), "timeout")
        end_battle(false)

func enemy_turn() -> void:
    msg_label.text = "敵の攻撃！%d のダメージ" % enemy_attack
    player_hp -= enemy_attack
    if player_hp <= 0:
        player_hp = 0
        update_ui()
        yield(get_tree().create_timer(0.6), "timeout")
        defeat()
        return
    state = "player"
    update_ui()

func victory() -> void:
    msg_label.text = "勝利！"
    yield(get_tree().create_timer(0.8), "timeout")
    end_battle(true)

func defeat() -> void:
    msg_label.text = "全滅..."
    yield(get_tree().create_timer(0.8), "timeout")
    end_battle(false)

func end_battle(win: bool) -> void:
    emit_signal("battle_end", win)
    queue_free()
