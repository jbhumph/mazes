extends CharacterBody2D

@export var character = 0
var chars = ["res://characters/char0.tres", "res://characters/char1.tres", "res://characters/char2.tres", "res://characters/char3.tres", "res://characters/char4.tres"]

func _ready():
	$Sprite2D.texture = load(chars[character])
	$Sprite2D.scale = Vector2(3,3)

func _physics_process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 600
	move_and_slide()
