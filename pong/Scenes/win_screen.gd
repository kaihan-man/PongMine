extends Node2D

@onready var winner_sfx: AudioStreamPlayer = $WinnerSFX

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	winner_sfx.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
