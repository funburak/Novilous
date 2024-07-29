extends Control

func _on_start_button_pressed():
	Engine.time_scale = 1
	ConfigFileHandler.save_dialog_settings(0)
	ConfigFileHandler.save_quest_settings(0)
	get_tree().change_scene_to_file("res://Scenes/game.tscn")


func _on_options_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/options_menu.tscn")


func _on_credits_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/credits.tscn")

func _on_exit_button_pressed():
	get_tree().quit()
