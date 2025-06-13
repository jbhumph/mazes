extends Node2D
var won = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if won:
		await(get_tree().create_timer(1.5))
		get_tree().change_scene_to_file("res://scenes/levels/StartMenu.tscn")


func _on_finish_body_entered(body: Node2D) -> void:
	$win_Lable.visible = true
	won = true
	


func _on_finish_body_exited(body: Node2D) -> void:
	$win_Lable.visible = false
	
