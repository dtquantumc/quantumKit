# SPDX-License-Identifier: MIT

# (C) Copyright 2020
# Diversifying Talent in Quantum Computing, Geering Up, UBC

extends Node

const stats = OtterStats

enum {
	RED,
	BLUE
}

static func hasBitsToUse():
	return hasRedBits() or hasBlueBits()

static func hasRedBits():
	return stats.red_bits >= 1

static func hasBlueBits():
	return stats.blue_bits >= 1
