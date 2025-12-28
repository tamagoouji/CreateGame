extends Area2D

@export var dialog_lines: Array = ["おぉ、君か。", "気をつけて、この先は危険だ。"]
@export var triggers_battle: bool = false

var player_in_range: bool = false

func _ready() -> void:
    # 簡易プレースホルダー画像を生成
    var sprite := $Sprite2D
    if sprite.texture == null:
        var img := Image.create(24, 24, false, Image.FORMAT_RGBA8)
        img.lock()
        img.fill(Color(1.0, 0.6, 0.2, 1.0))
        img.unlock()
        sprite.texture = ImageTexture.create_from_image(img)

    connect("body_entered", Callable(self, "_on_body_entered"))
    connect("body_exited", Callable(self, "_on_body_exited"))

func _on_body_entered(body) -> void:
    if body is CharacterBody2D:
        player_in_range = true

func _on_body_exited(body) -> void:
    if body is CharacterBody2D:
        player_in_range = false

func _process(delta: float) -> void:
    if player_in_range and Input.is_action_just_pressed("ui_accept"):
        if triggers_battle:
            var bm := get_parent().get_node("BattleManager")
            if bm and not bm.battle_active:
                bm.start_battle()
                return
        var dm := get_parent().get_node("DialogManager")
        if dm and not dm.active:
            dm.show_dialog(dialog_lines)
