extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
@export var speed = 100
@export var health = 100

var target_scene = preload("res://Scenes/area.tscn").instantiate()
var target = target_scene.get_node("Player")
var target_position = target.global_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity = global_position.direction_to(target_position) * speed
	if position.distance_to(target_position) > 10:
		move_and_slide()
