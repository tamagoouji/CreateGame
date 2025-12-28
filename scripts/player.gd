extends CharacterBody2D

@export var speed: int = 220
@export var accel: int = 1200
@export var friction: int = 800

# Player stats
@export var max_hp: int = 40
var hp: int = max_hp
@export var attack: int = 10
var level: int = 1
var xp: int = 0
var xp_to_next: int = 100

var velocity: Vector2 = Vector2.ZERO
var facing: Vector2 = Vector2.RIGHT
var step_timer: float = 0.0
var step_interval: float = 0.15

onready var sprite: Sprite2D = $Sprite2D

func _ready() -> void:
    # 簡易プレースホルダー画像を生成して設定（アセット不要）
    if sprite.texture == null:
        var img := Image.create(32, 32, false, Image.FORMAT_RGBA8)
        img.lock()
        img.fill(Color(0.2, 0.6, 1.0, 1.0))
        img.unlock()
        var tex := ImageTexture.create_from_image(img)
        sprite.texture = tex

func _physics_process(delta: float) -> void:
    var input_dir := Vector2.ZERO
    input_dir.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
    input_dir.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

    if input_dir != Vector2.ZERO:
        facing = input_dir.normalized()
        var target := input_dir.normalized() * speed
        velocity = velocity.move_toward(target, accel * delta)

        # 簡易ステップアニメーション（拡縮で表現）
        step_timer += delta
        if step_timer >= step_interval:
            step_timer = 0
            if sprite.scale == Vector2.ONE:
                sprite.scale = Vector2(1.08, 0.94)
            else:
                sprite.scale = Vector2.ONE
    else:
        velocity = velocity.move_toward(Vector2.ZERO, friction * delta)
        sprite.scale = Vector2.ONE

    velocity = move_and_slide(velocity)

# XP / Level system
func gain_xp(amount: int) -> void:
    xp += amount
    var dm = get_parent().get_node_or_null("DialogManager")
    if dm:
        dm.show_dialog(["%d XP を獲得した！" % amount])
    # レベルアップ判定
    while xp >= xp_to_next:
        xp -= xp_to_next
        level += 1
        xp_to_next = int(xp_to_next * 1.4)
        max_hp += 8
        attack += 2
        hp = max_hp
        if dm:
            dm.show_dialog(["レベルアップ！ レベル %d" % level])
