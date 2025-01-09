extends Label

@onready var player_1s_points: Label = $"../Player 1s Points"
@onready var ball: CharacterBody2D = $"../Ball"
@onready var score_sfx: AudioStreamPlayer = $"../ScoreSFX"


func _on_player_2s_goal_body_entered(body: Node2D) -> void:
	Global.P1_Points += 1
	player_1s_points.text = str(Global.P1_Points)
	ball.position.y = 0
	ball.position.x = 0
	score_sfx.play()
