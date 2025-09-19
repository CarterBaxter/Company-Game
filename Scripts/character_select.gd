extends Control

var scene = load("res://Scenes/Main Scenes/Menu scenes/selection_popup.tscn")

func popup() -> void:
	var scene2 = scene.instance()
	add_child(scene2)
