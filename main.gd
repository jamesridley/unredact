extends Node2D

@onready var microfilm_view: Node2D = $microfilm_view

func _on_microfilm_viewer_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		var tween = create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
		tween.tween_property(microfilm_view, "position", Vector2(0, 0), 0.4)

func _on_microfilm_view_exit_pressed() -> void:
	var screen_height = get_viewport_rect().size.y
	var tween = create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN)
	tween.tween_property(microfilm_view, "position", Vector2(0, screen_height), 0.4)
