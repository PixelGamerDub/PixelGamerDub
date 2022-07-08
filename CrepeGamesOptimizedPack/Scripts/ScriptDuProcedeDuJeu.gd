extends Node2D
 
export (PackedScene) var crepe

func ready_():
	$MusicBackground.stream_paused = false
	$MusicBackground.play = true
	$Interface/PopupPausePassive.hide()
	$Interface/PopupGameOver.hide()
func _on_Button_pressed():
	get_tree().paused = true
	$Interface/PopupPausePassive.show()
	$MusicBackground.stream_paused = true

func _on_PausePassive_pressed():
	get_tree().paused = false
	$Interface/PopupPausePassive.hide()

func _on_PauseActive2_pressed():
	get_tree().reload_current_scene()
	get_tree().paused = false

func _on_ZoneDeGameOver_body_entered(body):
	$BruitageGameOver.playing = true
	get_tree().paused = true
	$Interface/PopupGameOver.show()


func _on_MusicBackground_finished():
	$MusicBackground.stream_paused = false
