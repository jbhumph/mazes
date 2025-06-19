# Mazes

## Overview
This team project was created as part of a game jam that we in the WCC Programming Club put on. It took place on June 6th, 2025 and we completed it in about 6 hours.

The game itself is comprised of a menu screen and (so far) one maze level. The user chooses a character and attempts to reach the end of the maze. Once that is accomplished the game cycles back to the start screen. We have a couple participants working on additional levels after the fact and we may merge them in later as finished.


## Contributors
- John Humphrey
- Juliana Serrano
- Kai Schenkel
- Derrick Toner


## Contents
- [Overview](#overview)
- [Contributors](#contributors)
- [About](#about)
- [Attributions & Dependencies](#attributions--dependencies)
- [Screenshots / Images](#screenshots--images)


## About
The game itself was created in Godot utilizing GSScript. All in all it's a pretty simple setup. Here is the main game script excerpt:

```
extends Node2D
var won = false

func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	if won:
		await(get_tree().create_timer(1.5))
		get_tree().change_scene_to_file("res://scenes/levels/StartMenu.tscn")

func _on_finish_body_entered(body: Node2D) -> void:
	$win_Lable.visible = true
	won = true
	
func _on_finish_body_exited(body: Node2D) -> void:
	$win_Lable.visible = false
```


## Atrributions & Dependencies
Primary game tilesets from Cainos on itch.io:

https://cainos.itch.io/pixel-art-top-down-basic

Character tilesets from Sethbb on itch.io:

https://sethbb.itch.io/32rogues

Music loops from Splice:

https://splice.com/sounds/sample/f4ee7519ea4286bdfc0104928baca0e5e44bc62a1081ae27193cab3b21c8938b

https://splice.com/sounds/sample/efc88e0b36bee2519814f59e218dc9274be2ef7ba8838689fbbe65981834c6a3


## Screenshots / Images

![screenshot](<docFiles/Screenshot 2025-06-12 at 5.12.45 PM.png>)

![screenshot](<docFiles/Screenshot 2025-06-12 at 5.13.18 PM.png>)

![screenshot](<docFiles/Screenshot 2025-06-12 at 5.13.38 PM.png>)

