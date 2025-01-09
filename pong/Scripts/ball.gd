extends CharacterBody2D

@onready var hit_sfx: AudioStreamPlayer = $"../HitSFX"

var collision_data
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity = Vector2(600,0)


func _physics_process(delta: float) -> void:
	collision_data = move_and_collide(velocity * delta)
	if collision_data:
		velocity.y += randf_range(-20,20)
		velocity = velocity.bounce(collision_data.get_normal())
		hit_sfx.play()
