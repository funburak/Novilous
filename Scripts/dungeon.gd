extends Node2D

@onready var pause_menu = $CanvasLayer/PauseMenu
@onready var day_night_cycle = $DayNightCycle
@onready var dungeon_entry = $DungeonEntry

var paused = false
func _ready():
	ConfigFileHandler.count_scene = 1 + ConfigFileHandler.count_scene
	dungeon_entry.scene_name = "Dungeon"
func _process(_delta):
	if Input.is_action_just_pressed("escape"):
		pauseMenu()
		
func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0

	paused = !paused		
