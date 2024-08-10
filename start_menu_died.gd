extends CenterContainer

@onready var star_game_button = %StarGameButton


func _on_star_game_button_pressed():
	await LevelTransition.fade_to_black()
	get_tree().change_scene_to_file("res://level_1.tscn")
	LevelTransition.fade_from_black()
	
func _on_quit_button_pressed():
	get_tree().quit()
	


