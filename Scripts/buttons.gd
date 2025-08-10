extends Node



func send_to_local():
	get_tree().change_scene_to_file("res://Game Screens/local.tscn")
	
func send_to_online():
	get_tree().change_scene_to_file("res://Game Screens/online.tscn")
	
func send_to_credits():
	get_tree().change_scene_to_file("res://Game Screens/credits.tscn")
	
func send_to_settings():
	get_tree().change_scene_to_file("res://Game Screens/settings.tscn")
	
func send_to_main_menu():
	get_tree().change_scene_to_file("res://Game Screens/main_menu.tscn")


#sound scripts#
func on_hover():
	$AudioStreamPlayer.play()
	
func on_click():
	$AudioStreamPlayer2.play()
