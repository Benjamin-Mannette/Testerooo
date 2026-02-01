class_name Enemy
extends CharacterBody2D

const control: PackedScene = preload("res://enemy.tscn")

var health: int
var speed: float
var label: String

func _ready():
	var enemy1 = new_enemy(Bob,23,50):
	return enemy1

static func new_enemy(name: String, speed := 50.0, health := 100) -> Enemy:
	var new_enemy: Enemy = control.instantiate()
	new_enemy.health = health
	new_enemy.speed = speed
	new_enemy.label = name
	return new_enemy
