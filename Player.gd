
extends CharacterBody2D

var velocity: Vector2
const GRAVITY := 1200.0
const JUMP_FORCE := -650.0

func _physics_process(delta: float) -> void:
    if not is_on_floor():
        velocity.y += GRAVITY * delta
    if Input.is_action_just_pressed("ui_accept") and is_on_floor():
        velocity.y = JUMP_FORCE
    velocity = move_and_slide(velocity, Vector2.UP)
