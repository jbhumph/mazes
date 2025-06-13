extends MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass



func _on_play_button_down() -> void:
	print("Hello")
	get_tree().change_scene_to_file("res://scenes/levels/main_world.tscn")


func _on_character_1_button_down() -> void:
	Global.character = 0
	
func _on_character_2_button_down() -> void:
	Global.character = 1
	
func _on_character_3_button_down() -> void:
	Global.character = 2
	
func _on_character_4_button_down() -> void:
	Global.character = 3
	
func _on_character_5_button_down() -> void:
	Global.character = 4
