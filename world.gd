extends Node2D

@export var next_level: PackedScene
@onready var level_completed = $CanvasLayer/LevelCompleted
@onready var start_in = %StartIn
@onready var start_in_label = %StartInLabel
@onready var animation_player = $AnimationPlayer
#@onready var game_completed = $CanvasLayer/GameCompleted

func _ready():
	if not next_level is PackedScene:
		#get_tree().change_scene_to_file("res://victory_screen.tscn")
		next_level = load("res://victory_screen.tscn")
	RenderingServer.set_default_clear_color(Color.BLACK)
	Events.level_completed.connect(show_level_completed)	
	get_tree().paused = true
	LevelTransition.fade_from_black()
	animation_player.play("countdown")
	await animation_player.animation_finished
	get_tree().paused = false
func show_level_completed():
	level_completed.show()
	if not next_level is PackedScene: return
	get_tree().paused=true	
	await LevelTransition.fade_to_black()
	get_tree().paused = false
	get_tree().change_scene_to_packed(next_level)
	
	#get_tree().paused=true

