extends Node

func send_to_local() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/Menu scenes/local.tscn")
	
func send_to_online() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/Menu scenes/online.tscn")
	
func send_to_credits() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/Menu scenes/credits.tscn")
	
func send_to_settings() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/Menu scenes/settings.tscn")
	
func send_to_gametest_screen() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/game_scenes/gametemp.tscn")
	
func exit_game() -> void:
	get_tree().quit()
	
func send_to_main_menu() -> void:
	get_tree().change_scene_to_file("res://Scenes/Main Scenes/Menu scenes/main_menu.tscn")


#sound scripts#
func on_hover():
	AudioManager.create_audio(Enums.SOUND_EFFECTS.HOVER)
	
func on_click():
	AudioManager.create_audio(Enums.SOUND_EFFECTS.OPTION_SELECT)
	
func on_back():
	AudioManager.create_audio(Enums.SOUND_EFFECTS.OPTION_DESELECT)
