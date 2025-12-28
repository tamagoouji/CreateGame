extends Area2D

func _ready() -> void:
    # 簡易プレースホルダー画像を生成
    var sprite := $Sprite2D
    if sprite.texture == null:
        var img := Image.create(24, 24, false, Image.FORMAT_RGBA8)
        img.lock()
        img.fill(Color(1.0, 0.6, 0.2, 1.0))
        img.unlock()
        sprite.texture = ImageTexture.create_from_image(img)

func _on_body_entered(body) -> void:
    if body is CharacterBody2D:
        print("NPC: プレイヤーが近くに来た")
