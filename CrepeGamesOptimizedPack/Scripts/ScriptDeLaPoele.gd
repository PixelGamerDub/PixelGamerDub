extends KinematicBody2D

var SPEED = 1100
const FLOOR_NORMAL = Vector2(0, -1)
var motion = Vector2()
var score = 0

func _physics_process(delta):
	walk()

func walk():
		if Input.is_action_pressed("ui_right"):
			motion.x = SPEED
		elif Input.is_action_pressed("ui_left"):
			motion.x = -SPEED
		else: 
			motion.x = 0
		move_and_slide(motion, FLOOR_NORMAL)

func _on_ZoneHitboxDeLaCrepe_body_entered(body):
	score += 1
	body.queue_free()
	$BruitagePoint.playing = true
	print (score)
