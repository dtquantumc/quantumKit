# SPDX-License-Identifier: MIT

# (C) Copyright 2020
# Diversifying Talent in Quantum Computing, Geering Up, UBC

extends Control

onready var audioStreamPlayer = $AudioStreamPlayer

func start_music():
	audioStreamPlayer.play()

func stop_music():
	audioStreamPlayer.stop()

func is_playing():
	return audioStreamPlayer.is_playing()