extends Node

func send_to_local() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/local.tscn")
	
func send_to_online() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/online.tscn")
	
func send_to_credits() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/credits.tscn")
	
func send_to_settings() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/settings.tscn")
	
func exit_game() -> void:
	get_tree().quit()
	
func send_to_main_menu() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/main_menu.tscn")


#sound scripts#
func on_hover():
	AudioManager.create_audio(Enums.SOUND_EFFECTS.BUTTON_HOVER)
	
func on_click():
	AudioManager.create_audio(Enums.SOUND_EFFECTS.BUTTON_SELECT)
