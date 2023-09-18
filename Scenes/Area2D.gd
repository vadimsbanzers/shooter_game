extends Area2D


# Called when the node enters the scene tree for the first time.
@export var enemy : PackedScene = preload("res://Scenes/enemy.tscn")
var timer = 180

func _ready():
	randomize()
#func _process(delta):

#	if timer < 1:
#		spawn()
#		timer = 180
#	else:
#		timer = timer - 1




#func spawn():
#	randomize()
#	var enemySpawn = enemy.instantiate();
#	enemySpawn.position.x = position.x + lerp(-500, 500, randf())
#	enemySpawn.position.y = position.y + lerp(-500, 500, randf())
#	get_parent().add_child(enemySpawn)


func _on_timer_timeout():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	$Path2D/PathFollow2D.progress = rng.randi_range(0, 5000)
	var enemySpawn = enemy.instantiate();
	enemySpawn.global_position = $Path2D/PathFollow2D/Marker2D.global_position
	get_parent().add_child(enemySpawn)# Replace with function body.
