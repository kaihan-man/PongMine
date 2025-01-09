extends Node2D

@onready var player_1s_points: Label = $"Player 1s Points"
@onready var player_2s_points: Label = $"Player 2s Points"
@onready var title: Label = $Title

func _ready() -> void:
	if get_tree().current_scene and get_tree().current_scene.name == "Game":
		await get_tree().create_timer(0.1).timeout
		Global.P1_Points = 0
		Global.P2_Points = 0
		player_1s_points.text = str(Global.P1_Points)
		player_2s_points.text = str(Global.P2_Points)

func _process(delta: float) -> void:
	if Global.P1_Points == 9:
		_winP1()
	elif Global.P2_Points == 9:
		_winP2()

func _winP1():
	get_tree().change_scene_to_file("res://Scenes/win_screen.tscn")
	Global.P1_Points = 0
	Global.P2_Points = 0
	title.text = "PLAYER 1 
HAS WON!"

func _winP2():
	get_tree().change_scene_to_file("res://Scenes/win_screen.tscn")
	Global.P1_Points = 0
	Global.P2_Points = 0
	title.text = "PLAYER 2 
HAS WON!"
