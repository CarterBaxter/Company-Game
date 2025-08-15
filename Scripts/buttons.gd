extends Node

@onready var select: AudioStreamPlayer = %select
@onready var hover: AudioStreamPlayer = %hover


func send_to_local() -> void:
	get_tree().change_scene_to_file("res://Game Screens/local.tscn")
	
func send_to_online() -> void:
	get_tree().change_scene_to_file("res://Game Screens/online.tscn")
	
func send_to_credits() -> void:
	get_tree().change_scene_to_file("res://Game Screens/credits.tscn")
	
func send_to_settings() -> void:
	get_tree().change_scene_to_file("res://Game Screens/settings.tscn")
	
func exit_game() -> void:
	get_tree().quit()
	
func send_to_main_menu() -> void:
	get_tree().change_scene_to_file("res://Game Screens/main_menu.tscn")


#sound scripts#
func on_hover():
	hover.play()
	
func on_click():
	select.play()
