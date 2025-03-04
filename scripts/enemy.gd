extends Node2D

const SPEED = 20

var direction = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_right_down = $RayCastRightDown
@onready var ray_cast_left_down = $RayCastLeftDown
@onready var animated_sprite_2d = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_left.is_colliding() || !ray_cast_left_down.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	elif ray_cast_right.is_colliding() || !ray_cast_right_down.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	position.x += direction * SPEED * delta	
