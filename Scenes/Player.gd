extends CharacterBody2D
@export var bullet : PackedScene = preload("res://Scenes/bullet.tscn")
@export var damage = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("click"):
		shoot()
func shoot():
	var b = bullet.instantiate()
	owner.add_child(b)

	b.transform = $Marker2D.global_transform
