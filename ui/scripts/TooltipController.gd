@tool
extends MarginContainer

enum Direction { LEFT, RIGHT, TOP, BOTTOM }

@export var tooltip: String = "{tooltip}":
	set(value):
		tooltip = value
		update()

@export var direction: Direction = Direction.BOTTOM

@onready var label: Label = $Bubble/Layout/Content


func _ready() -> void:
	update()


func update() -> void:
	if label == null:
		return
	label.text = tooltip
