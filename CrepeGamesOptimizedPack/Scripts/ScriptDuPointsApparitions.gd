extends Node

var Crepe = load("res://Scenes/Crepe.tscn")
var spawn = randi() % 17 + 1

func _on_SpawnDesCrepes_timeout():
	var spawn = randi() % 17 + 1
	var b = Crepe.instance()
	owner.add_child(b)
	print(spawn)
	if spawn == 1 :
		b.transform = $SpawnDeCrepe1.global_transform
	if spawn == 2 :
		b.transform = $SpawnDeCrepe2.global_transform
	if spawn == 3 :
		b.transform = $SpawnDeCrepe3.global_transform
	if spawn == 4 :
		b.transform = $SpawnDeCrepe4.global_transform
	if spawn == 5 :
		b.transform = $SpawnDeCrepe5.global_transform
	if spawn == 6 :
		b.transform = $SpawnDeCrepe6.global_transform
	if spawn == 7 :
		b.transform = $SpawnDeCrepe7.global_transform
	if spawn == 8 :
		b.transform = $SpawnDeCrepe8.global_transform
	if spawn == 9 :
		b.transform = $SpawnDeCrepe9.global_transform
	if spawn == 10 :
		b.transform = $SpawnDeCrepe10.global_transform
	if spawn == 11 :
		b.transform = $SpawnDeCrepe11.global_transform
	if spawn == 12 :
		b.transform = $SpawnDeCrepe12.global_transform
	if spawn == 13 :
		b.transform = $SpawnDeCrepe13.global_transform
	if spawn == 14 :
		b.transform = $SpawnDeCrepe14.global_transform
	if spawn == 15 :
		b.transform = $SpawnDeCrepe15.global_transform
	if spawn == 16 :
		b.transform = $SpawnDeCrepe16.global_transform
	if spawn == 17 :
		b.transform = $SpawnDeCrepe17.global_transform
