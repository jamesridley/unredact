extends Node2D
@export var speechbox: VBoxContainer

signal term_searched(text)

func speak(text):
	pass
	
func ask(text):
	speechbox.visible = true

func _on_microfilm_viewer_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		speechbox.visible = false

func _on_tannie_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		ask("hi")


func _on_search_input_text_submitted(new_text: String) -> void:
	speak("here you go")
