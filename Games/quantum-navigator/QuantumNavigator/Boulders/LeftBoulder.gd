# SPDX-License-Identifier: MIT

# (C) Copyright 2020
# Diversifying Talent in Quantum Computing, Geering Up, UBC

extends Node2D

# The LeftBoulder explodes on max pickles being collected

func create_explosion_effect():
	var ExplosionEffect = load("res://Effects/BoulderExplosionEffect.tscn")
	var explosionEffect = ExplosionEffect.instance()
	var world = get_tree().current_scene
	world.add_child(explosionEffect)
	explosionEffect.global_position = global_position

func on_max_pickles_collected():
	create_explosion_effect()
	queue_free()

func _ready():
	OtterStats.connect("max_pickles_collected", self, "on_max_pickles_collected")
