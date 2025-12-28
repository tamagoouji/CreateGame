extends Node

var dialog_scene = preload("res://scenes/DialogUI.tscn")
onready var dialog_ui := null
var lines: Array = []
var idx: int = 0
var active: bool = false
var _callback = null

func _ready() -> void:
    dialog_ui = dialog_scene.instantiate()
    add_child(dialog_ui)
    dialog_ui.visible = false

func show_dialog(new_lines: Array, callback = null) -> void:
    if new_lines.empty():
        return
    lines = new_lines.duplicate()
    idx = 0
    _callback = callback
    dialog_ui.get_node("Panel/Label").text = str(lines[idx])
    dialog_ui.visible = true
    active = true

func _input(event) -> void:
    if not active:
        return
    if event.is_action_pressed("ui_accept"):
        idx += 1
        if idx >= lines.size():
            dialog_ui.visible = false
            active = false
            if _callback != null:
                _callback.call()
        else:
            dialog_ui.get_node("Panel/Label").text = str(lines[idx])
