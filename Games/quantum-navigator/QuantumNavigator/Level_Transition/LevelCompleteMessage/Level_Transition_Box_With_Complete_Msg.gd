# SPDX-License-Identifier: MIT

# (C) Copyright 2020
# Diversifying Talent in Quantum Computing, Geering Up, UBC

extends Area2D

# Script attached to the level transition box that displays the Level Complete
# message window
# See Also: res://Level_Transition/Level_Transition_Box.gd

# Window prefab/scene location
const LevelCompleteWindow = preload("res://Level_Transition/LevelCompleteMessage/LevelComplete.tscn")

# export allows the value to be modified in inspector with type specified
# What scene we want the button to move to
export(String) var nextScene = null

# Current window instance
var windowInstance = null

# On area enter, create the window, if not already created
func _on_Area2D_area_entered(area) -> void:
	if (windowInstance != null): return
	windowInstance = LevelCompleteWindow.instance()
	windowInstance.get_node(".").nextScene = nextScene
	get_tree().current_scene.get_node("CanvasLayer").add_child(windowInstance)
